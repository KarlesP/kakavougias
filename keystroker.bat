
@if (@CodeSection == @Batch) @then


@echo off

set SendKeys=CScript //nologo //E:JScript "%~F0"

:main
timeout /t 3
%SendKeys% "^%%."
timeout 20
timeout 0
goto :main

@end


// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
