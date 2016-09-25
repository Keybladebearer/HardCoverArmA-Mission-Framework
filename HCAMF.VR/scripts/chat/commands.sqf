//All posible commands are stored here

pvpfw_chatIntercept_allCommands = [
	[
	//this is the default help command
		"help",
		{
			_commands = "";
			{
				_commands = _commands + (pvpfw_chatIntercept_commandMarker + (_x select 0)) + ", ";
			}forEach pvpfw_chatIntercept_allCommands;
			systemChat format["Available Commands: %1",_commands];
		}
	],
	[
	//a silly little jump script
		"jump",
		{player setVelocity [0,0,3];}
	],
	[
	//saves ocap recording
		"saveocap",
		{
			SystemChat "Dumping OCAP Replay...";
			_handle = []execVM "scripts/chat/ocapdump.sqf";
			waitUntil { scriptDone _handle};
			SystemChat "OCAP Replay Saved";
		}
	]
];