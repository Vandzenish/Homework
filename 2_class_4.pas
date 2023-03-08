Program hm;

{$APPTYPE CONSOLE}

uses
    SysUtils;
	
	// program for objective 4 of 2nd class 
	var
		seconds, minutes, hours : integer;
	
	begin
	
	Writeln('Enter number of seconds:');
	readln(seconds);
	minutes := seconds div 60;
	seconds := seconds mod 60;
	hours := minutes div 60;
	minutes := minutes mod 60;
	
	
	writeln('It is ',hours,':',minutes,':',seconds);
	end.
	