//To install
//Open Chrome Secure Shell Settings
//Open JS console (CTRL+SHIFT+J)
//Copy and Paste the code

//Default TERM='xterm-256color'
//To change to 16 color palette:
term_.prefs_.set('environment',{TERM:'xterm'});
//Then restart Secure Shell

var solarized_dark = {
	'base03':'#002b36',
	'base02':'#073642',
	'base01':'#586e75',
	'base00':'#657b83',
	'base0':'#839496',
	'base1':'#93a1a1',
	'base2':'#eee8d5',
	'base3':'#fdf6e3',
	'yellow':'#b58900',
	'orange':'#cb4b16',
	'red':'#dc322f',
	'magenta':'#d33682',
	'violet':'#6c71c4',
	'blue':'#268bd2',
	'cyan':'#2aa198',
	'green':'#859900'
};

//Disable bold
term_.prefs_.set('enable-bold', false);

// Import web font
term_.prefs_.set('user-css', 'http://fonts.googleapis.com/css?family=Inconsolata');

//Solarized Dark
term_.prefs_.set('background-color', solarized_dark.base03);
term_.prefs_.set('foreground-color', solarized_dark.base0);
term_.prefs_.set('cursor-color', solarized_dark.base0);
term_.prefs_.set('color-palette-overrides', [solarized_dark.base02, solarized_dark.red, solarized_dark.green, solarized_dark.yellow, solarized_dark.blue, solarized_dark.magenta, solarized_dark.cyan, solarized_dark.base2, solarized_dark.base3, solarized_dark.orange, solarized_dark.base01, solarized_dark.base00, solarized_dark.base0, solarized_dark.violet, solarized_dark.base1, solarized_dark.base3]);

//Set font
term_.prefs_.set('font-size',16);
term_.prefs_.set('font-family', '"Inconsolata", monospace');

