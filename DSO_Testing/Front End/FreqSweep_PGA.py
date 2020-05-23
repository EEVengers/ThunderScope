import visa, time

def main():
    file = open('FreqSweep.csv', 'w')
    rm = visa.ResourceManager()
    scope = rm.open_resource('GPIB0::1::INSTR')
    gen = rm.open_resource('GPIB0::2::INSTR')

    scope.write('HOR:SCA 200E-9')
    time.sleep(2)
    gen.write('LVL ON')
    time.sleep(2)

    for x in range(1,501):
        if x == 4:
            scope.write('HOR:SCA 100E-9')
        elif x == 10:
            scope.write('HOR:SCA 40E-9')
        elif x == 20:
            scope.write('HOR:SCA 20E-9')
        elif x == 40:
            scope.write('HOR:SCA 10E-9')
        elif x == 100:
            scope.write('HOR:SCA 4E-9')
        elif x == 200:
            scope.write('HOR:SCA 2E-9')
        elif x == 400:
            scope.write('HOR:SCA 1E-9')
        gen.write('FREQ ' + str(x) + 'MHz')
        time.sleep(4)
        str1 = scope.query("MEASU:MEAS1:VAL?")
        file.write(str(x) +','+ str1.split()[1] + '\n')
        time.sleep(1)

    file.close()

if __name__ == "__main__":
    main()
