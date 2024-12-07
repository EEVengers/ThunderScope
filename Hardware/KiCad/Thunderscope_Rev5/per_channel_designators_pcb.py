# Define the file's name.
input_filename = "Thunderscope_Rev5.kicad_pcb"
output_filename = "Thunderscope_Rev5_New.kicad_pcb"

# Open the file and read its content.
with open(output_filename, "w") as output_file:
    with open(input_filename) as input_file:
        for line in input_file:
            match line:
                case x if x.startswith('		(property "Reference" "'):
                    ref_des_old = line.split('"')[3]
                    if ref_des_old != "" and (ref_des_old.endswith("A") or ref_des_old.endswith("B") or ref_des_old.endswith("C") or ref_des_old.endswith("D")):
                        ref_des_new = ref_des_old + '1'
                        line = line.split(ref_des_old)[0] + ref_des_new +  line.split(ref_des_old)[1] 
            output_file.write(line)