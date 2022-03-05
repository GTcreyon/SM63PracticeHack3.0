# based heavily on the _generator.py from 2.x
# combines individual script files into one large script
# this can then be pasted manually into the Sprite 10723 script (command shell) in FFDec

import os
import pyperclip

# constants
FILE_NAME = "./output/DefineSprite10723.as"
BASE_FOLDER = "./src/base"
UTILS_FOLDER = "./src/base/utils"
CMD_FOLDER = "./src/commands"

def compile_folder(folder):
	output = ""
	list = os.listdir(folder)
	for name in list:
		if name.endswith(".as"):
			file = open(folder + "/" + name, "r")
			text = file.read()
			file.close()
			output += text + "\n"
	return output

def compile_commands(folder):
	output = ""
	list = os.listdir(folder)
	for name in list:
		if name.endswith(".as") and name[0].lower() == name[0]:
			file = open(folder + "/" + name, "r")
			text = file.read()
			if text.startswith("//"):
				header = text[:text.index("\n")].split("^") # get command header
				segments = header[0][2:].split("|")
				aliases = segments[0].split(";") # get command aliases
				top = ""
				for alias in aliases:
					top += "case \"" + alias + "\":\n" # form command aliases
				output += top + text + "\nbreak;\n"
	return output

print("start script generation")

# load the base script
file = open(BASE_FOLDER + "/base.as", "r")
compiled_script = file.read()
file.close()

# load, combine and insert utils
compiled_utils = compile_folder(UTILS_FOLDER)
compiled_script = compiled_script.replace("//$BASE_INIT", compiled_utils)
print("utils: " + compiled_utils)

# load, combine, format and insert commands
compiled_commands = compile_commands(CMD_FOLDER)
compiled_script = compiled_script.replace("//$CMD_LIST", compiled_commands)
print("commands: " + compiled_commands)

final_script = open(FILE_NAME, "w")
final_script.write(compiled_script)
final_script.close()

pyperclip.copy(compiled_script)
print("script has been generated.")