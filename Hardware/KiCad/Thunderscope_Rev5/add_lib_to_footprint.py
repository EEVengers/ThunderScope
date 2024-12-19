# Define the file's name.
input_filename = "Thunderscope_Rev5.kicad_sym"
output_filename = "Thunderscope_Rev5_New.kicad_sym"

# Open the file and read its content.
with open(output_filename, "w") as output_file:
    with open(input_filename) as input_file:
        for line in input_file:
            match line:
                case x if x.startswith('		(property "Footprint"'):
                    footprint_old = line.split('"')[3]
                    if footprint_old != "":
                        footprint_new = "Thunderscope_Rev5:" + footprint_old
                        line = line.split(footprint_old)[0] + footprint_new +  line.split(footprint_old)[1]
                        print (line)
            output_file.write(line)