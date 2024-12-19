# Define the file's name.
input_filename = "FE_Channel.kicad_sch"
output_filename = "FE_Channel_Copy.kicad_sch"

instance_spacing = 3
per_channel_spacing = 4
num_channels = 4
designator_suffix_order = ["B","A","C","D"]

instance_counter = 0
per_channel_counter = 0
num_channel_counter = 0
designator = ""

# Open the file and read its content.
with open(output_filename, "w") as output_file:
    with open(input_filename) as input_file:
        for line in input_file:
            if "(instances" in line:
                instance_counter = instance_spacing
            elif instance_counter > 1:
                instance_counter -= 1
            elif instance_counter == 1:
                instance_counter -= 1
                if "#PWR?" not in line:
                    designator = line.split('"')[1]
                    num_channel_counter = num_channels
                    line = (line.split('"')[0] + '"' + designator + designator_suffix_order[4-num_channel_counter] + '"' + line.split('"')[2])
                    per_channel_counter = per_channel_spacing
                    print (line)
            elif per_channel_counter > 1:
                per_channel_counter -= 1
            elif per_channel_counter == 1:
                per_channel_counter -= 1
                if (num_channel_counter > 1):
                    num_channel_counter -= 1
                    per_channel_counter = per_channel_spacing
                    line = (line.split('"')[0] + '"' + designator + designator_suffix_order[4-num_channel_counter] + '"' + line.split('"')[2])
                print (line)
            output_file.write(line)