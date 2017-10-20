import os
replace = {
	'brb':'be right back',
	'gtg':'gotta go',
}
AHKcode = '#SingleInstance, force\n\n'
for code in replace:
	newline = "::{}::{}\n".format(code, replace[code])
	AHKcode += newline
with open('{}.ahk'.format(os.path.basename(__file__).replace('.py', '')), 'w') as f:
	f.write(AHKcode)