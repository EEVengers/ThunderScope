# Define the file's name.
input_filename = "FE_Channel.kicad_sch"
output_filename = "FE_Channel_Copy.kicad_sch"

designator_suffix_order = ["2","1","3","4"]
designator = ""
is_valid = False
num_channels = 4
channel_count = 0

# Open the file and read its content.
with open(output_filename, "w") as output_file:
    with open(input_filename) as input_file:
        for line in input_file:
            match line:
                case x if x.startswith('		(property "Reference"'):
                    reference_old = line.split('"')[3]
                    print(reference_old)
                    if "#PWR" not in reference_old:
                        reference_new = reference_old[:-2] + "_1"
                        print (reference_new)
                        line = line.split(reference_old)[0] + reference_new +  line.split(reference_old)[1]
                        channel_count = num_channels
                case x if x.startswith('					(reference'):
                    if channel_count > 0:
                        reference_old = line.split('"')[1]
                        line = line.split(reference_old)[0] + reference_new[:-1] + designator_suffix_order[4-channel_count] +  line.split(reference_old)[1]
                        channel_count -= 1
                        print (line)
            output_file.write(line)