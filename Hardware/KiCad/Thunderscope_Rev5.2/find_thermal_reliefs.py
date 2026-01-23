from kipy import KiCad
from kipy.util.units import to_mm

def main():

    try:
        kicad = KiCad()
    except BaseException as e:
        print(f"Not connected to KiCad: {e}")
        exit()

    board = kicad.get_board()

    footprints = board.get_footprints()

    for footprint in footprints:
        for pad in footprint.definition.pads:
            if (pad.padstack.zone_settings.zone_connection == 3):
                print (footprint.reference_field.text.value) # Print Refdes
       




                
if __name__ == '__main__':
    main()    