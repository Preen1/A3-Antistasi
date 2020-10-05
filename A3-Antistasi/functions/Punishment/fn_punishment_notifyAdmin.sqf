/*
Function:
	A3A_fnc_punishment_notifyAdmin

Description:
	Sends a one-time notification to any admin that someone has being found guilty of FF.

Scope:
	<LOCAL> Execute on the admin.

Environment:
	<ANY>

Parameters:
	<STRING> The UID of the detainee that that is mentioned in the message.

Returns:
	<BOOLEAN> true if it hasn't crashed; nil if it has crashed.

Examples:
	[_UID] remoteExec ["A3A_fnc_punishment_notifyAdmin",_admin,false];

Author: Caleb Serafin
License: MIT License, Copyright (c) 2019 Barbolani & The Official AntiStasi Community
*/
params ["_UID"];
private _keyPairs = [ ["name","NO NAME"] ];
([_UID,_keyPairs] call A3A_fnc_punishment_dataGet) params ["_name"];

["FF Notification", format ["%1 has been found guilty of FF.<br/><br/>If you believe this is a mistake, you can forgive him with a scroll-menu action on his body.<br/><br/>He is at the bottom left corner of the map.",_name]] call A3A_fnc_customHint;
true;