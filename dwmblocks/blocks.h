//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "date +\"%e %b %H:%M:%S\"",	1,		0},
	{"", "xset -q | grep LED | awk '{ if (substr ($10,5,1) == 1) print \"[RU]\"; else print \"[EN]\"; }'",		1, 1},	
	{"dwm-6.5", "#", 0, 0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
