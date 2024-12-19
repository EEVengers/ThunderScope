import os

input_sch_files = []

files = [f for f in os.listdir('.') if os.path.isfile(f)]
for file in files:
    if file.endswith(".kicad_sch") and ("autosave" not in file):
        input_sch_files.append(file)

input_lib_file = "Thunderscope_Rev5.kicad_sym"
output_lib_file = "Thunderscope_Rev5_new.kicad_sym"

is_symbol = False
symbol_dict = {}

for input_sch_file in input_sch_files:
    with open(input_sch_file) as input_file:
        for line in input_file:
            match line:
                case x if '(lib_id "Thunderscope_Rev5:' in x:
                    is_symbol = True
                    symbol_name = line.split(':')[1][:-3]
                    if symbol_name not in symbol_dict:
                        symbol_dict[symbol_name] = {}
                case x if '(property' in x:
                    if is_symbol and (symbol_name in symbol_dict):
                        symbol_dict[symbol_name].update({line.split('"')[1]:line.split('"')[3]})
                case x if x.startswith('	)'):
                    is_symbol = False

is_symbol_in_dict = False
copy_line = True

with open(output_lib_file, "w") as output_file:
    with open(input_lib_file) as input_file:
        for line in input_file:
            match line:
                case x if x.startswith('	(symbol "'):
                    symbol_name = line.split('"')[1]
                    if symbol_name in symbol_dict:
                        is_symbol_in_dict = True
                    else:
                        print("not a match - " + symbol_name)
                case x if x.startswith('		(power)'):
                    is_symbol_in_dict = False # Don't touch power symbols!
                case x if x.startswith('		(property "'):
                    if is_symbol_in_dict and copy_line:
                        print (symbol_name)
                        copy_line = False
                        for y,z in symbol_dict[symbol_name].items():
                            if y == "Reference" and z != "":
                                z = z[0]
                            output_file.write ('		(property "'+ y + '" "' + z +'"\n')
                            output_file.write ('			(at 0 0 0)\n')
                            output_file.write ('			(effects\n')
                            output_file.write ('				(font\n')
                            output_file.write ('					(size 1.27 1.27)\n')
                            output_file.write ('				)\n')
                            if (y != "Reference" and y != "Value"):
                                output_file.write ('				(hide yes)\n')
                            output_file.write ('			)\n')
                            output_file.write ('		)\n')
                case x if x.startswith('		(symbol "'):
                    is_symbol_in_dict = False
                    copy_line = True
            if copy_line:
                output_file.write(line)