import visa, time

def main():
    file = open('FreqSweep.csv', 'w')
    rm = visa.ResourceManager()
    scope = rm.open_resource('GPIB0::1::INSTR')
    gen = rm.open_resource('GPIB0::2::INSTR')

    scope.write('CH1:IMP FIF')
    scope.write('CH1:SCA 50E-3')
    scope.write('CH1:POS -1.10E+0')
    scope.write('ACQ:MOD AVE')
    scope.write('HOR:SCA 250E-9')
    scope.write('MEASU:MEAS1:TYP PK2')
    scope.write('MEASU:MEAS1:SOURCE CH1')
    scope.write('MEASU:MEAS1:STATE ON')
    time.sleep(2)
    gen.write('LVL ON')
    time.sleep(2)
    scope.write('TRIG:MAI')
    time.sleep(2)

    for x in range(1,501):
        if x == 4:
            scope.write('HOR:SCA 100E-9')
        elif x == 10:
            scope.write('HOR:SCA 50E-9')
        elif x == 20:
            scope.write('HOR:SCA 25.0E-9')
        elif x == 40:
            scope.write('HOR:SCA 10.0E-9')
        elif x == 100:
            scope.write('HOR:SCA 5.0E-9')
        elif x == 200:
            scope.write('HOR:SCA 2.5E-9')
        elif x == 400:
            scope.write('HOR:SCA 1E-9')
        gen.write('FREQ ' + str(x) + 'MHz')
        time.sleep(4)
        file.write(str(x) +','+ scope.query("MEASU:MEAS1:VAL?"))
        time.sleep(1)

    file.close()

if __name__ == "__main__":
    main()
