#include <iostream>
#include "scope_control.h"
using namespace std;

void ch_menu(int ch_num);
void vdiv_prompt(int ch_num);
void voffset_prompt (int ch_num);
void bw_prompt (int ch_num);

bool active_channels [4] = {false,false,false,false};
bool dc_coupling [4] = {false,false,false,false};

scope_control *scope = new scope_control;

int main()
{
  int ch_num;

  cout << "--------------------------------------------------" << endl;
  cout << "           Scope Hardware Control V0.01           " << endl;
  cout << "--------------------------------------------------" << endl;

  cout << "Path to serial port: ";
  char path[32];
  cin >> path;

  scope->configure_serial(path);

  cout << "--------------------------------------------------" << endl;

  scope->boot();

  while (1){
    cout << "Select a channel (1-4) or 0 to quit: ";
    cin >> ch_num;
    if (ch_num == 0){
      cout << "--------------------------------------------------" << endl;
      delete scope;
      return 0;
    }
    else{
      cout << "--------------------------------------------------" << endl;
      ch_menu(ch_num);
    }
  }
}

void ch_menu(int ch_num){
  while (1){
    cout << "0 - Back" << endl;
    if (!active_channels[ch_num-1])
      cout << "1 - Channel On" << endl;
    else{
      cout << "2 - Channel Off" << endl;
      cout << "3 - V/Div Settings" << endl;
      cout << "4 - V Offset Settings" << endl;
      if (!dc_coupling[ch_num-1])
        cout << "5 - DC Coupling" << endl;
      else
        cout << "6 - AC Coupling" << endl;
      cout << "7 - Bandwidth Settings" << endl;
    }

    cout << "--------------------------------------------------" << endl;
    cout << "Select an option for channel " << ch_num << ": ";

    int option_num;
    cin >> option_num;

    if (option_num == 0){
      cout << "--------------------------------------------------" << endl;
      return;
    }
    else if (active_channels[ch_num-1]){
      if (option_num == 2){
        scope->ch_off(ch_num);
        active_channels[ch_num-1] = false;
      }
      else if (option_num == 3)
        vdiv_prompt(ch_num);
      else if (option_num == 4)
        voffset_prompt(ch_num);
      else if (option_num == 5 && !dc_coupling[ch_num-1]){
        scope->dc_cpl(ch_num);
        dc_coupling[ch_num-1] = true;
      }
      else if (option_num == 6 && dc_coupling[ch_num-1]){
        scope->ac_cpl(ch_num);
        dc_coupling[ch_num-1] = false;
      }
      else if (option_num == 7)
        bw_prompt(ch_num);
    }
    else if (option_num == 1 && !active_channels[ch_num-1]){
        scope->ch_on(ch_num);
        active_channels[ch_num-1] = true;
    }
    cout << "--------------------------------------------------" << endl;
  }
}

void vdiv_prompt(int ch_num){
  cout << "--------------------------------------------------" << endl;
  cout << "Enter a value in mV/Div (5,2,1 sequence): ";
  int vdiv;
  cin >> vdiv;
  scope->vdiv_set(ch_num, vdiv);
  return;
}

void voffset_prompt(int ch_num){
  cout << "--------------------------------------------------" << endl;
  cout << "Enter a offset value in V (0 +/- 0.5V): ";
  double voffset;
  cin >> voffset;
  scope->voffset_set(ch_num, voffset);
  return;
}

void bw_prompt(int ch_num){
  cout << "--------------------------------------------------" << endl;
  cout << "Enter a BW in MHz (20,100,200,350): ";
  int bw;
  cin >> bw;
  scope->bw_set(ch_num, bw);
  return;
}
