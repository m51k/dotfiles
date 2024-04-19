//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" Vol:",        "~/.config/dwmblocks/dwmblocks-volume.sh",                                                       0,        10},
	/*{"Bat:",        "~/.config/dwmblocks/dwmblocks-battery.sh",                                                       1,        15},*/
	{"", "date '+Date:[%d/%m/%Y] | Time:[%T]'",					1,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
