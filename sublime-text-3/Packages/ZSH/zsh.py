import re
import subprocess
import os
import sublime
import sublime_plugin
import pprint

pp = pprint.PrettyPrinter(indent=4)

def debug_message(msg):
	print("[ZSH] " + str(msg))

# Get the current selection range
def sel_start(sel):
	return min(sel.a, sel.b)
def sel_end(sel):
	return max(sel.a, sel.b)

# Retrieve completion results for the current line
def get_completions(view, prefix):
	# Set the working directory for the view
	workingDir = None
	if view.file_name() != None:
		path = os.path.normpath(view.file_name())
		workingDir = os.path.dirname(path)

	# Get the full content of the line
	sel = sel_start(view.sel()[0])
	line = view.substr(view.line(sel))

	# Build the path to the capture script
	script = os.path.normpath(os.path.dirname(__file__)+"/capture.zsh")

	# Add each word of the current line as arguments
	cmd = [script] + line.split()

	# Set process info for windows
	info = None
	if os.name == 'nt':
		info = subprocess.STARTUPINFO()
		info.dwFlags |= subprocess.STARTF_USESHOWWINDOW
		info.wShowWindow = subprocess.SW_HIDE

	# Run the capture script
	proc = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, startupinfo=info, cwd=workingDir)

	# Get the results from stdout
	if proc.stdout:
		data = proc.communicate()[0]

	if data is None: return None

	# Put each line of the results into a list
	lines = str(data, encoding='utf8').split("\r\n")

	found = []
	completions = []

	# Loop through each of the line
	for line in lines:
		# The output format is 'word -- description'
		bits = line.split(" -- ", 1)
		word = bits[0]

		# Only include completion results which begin with the characters
		# we have entered
		if word.find(prefix) == 0:
			# If we've already found this word, skip it
			if word in found:
				continue

			# Add the word to the 'found' list so that we can remove duplicates
			found.append(word)

			# Check if the result has a description, and then add the
			# word to the completion list
			if len(bits) > 1:
				description = bits[1]
				completions.append([word+"\t"+description, word])
			else:
				completions.append([word, word])

	return completions

class Listeners(sublime_plugin.EventListener):
	def on_query_completions(self, view, prefix, _locations):
		sel = sel_start(view.sel()[0])
		if view.score_selector(sel, 'source.shell') == 0: return None
		if view.score_selector(sel, 'string.quoted') > 0: return None
		if view.score_selector(sel, 'comment') > 0: return None

		completions = get_completions(view, prefix)
		if completions is None: return None

		return completions
