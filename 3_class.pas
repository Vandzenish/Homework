Program hm;

{$APPTYPE CONSOLE}

uses
    SysUtils;
  //this is for 1.1 - 1.2
  
  var 
  fir : array [0..2] of integer;
  i : integer;
	vect : array [0..2] of integer;
function vector(x,y,z : integer): array of integer; begin
	vect[0]:=x;
	vect[1]:=y;
	vect[2]:=z;
	vector:=vect;
	end;
	
	
begin
	vector(23,45,1);
	
	for i to 2 writeln(fir[i]);
end.