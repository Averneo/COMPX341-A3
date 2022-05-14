import os
import sys
import fileinput

text = "//Jacqui McPherson: 1547318"
firstLine = True

for directory, subdir_list, file_list in os.walk(".\\"):
    for file in file_list:
        if file.endswith(".ts"):
            print(os.path.join(directory, file))
            for line in fileinput.input(os.path.join(directory, file), openhook=fileinput.hook_encoded("utf-8")):
                if firstLine:
                    print(firstLine)
                    line = text
                    firstLine = False
                fileinput.close()
                