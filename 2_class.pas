program hm;

{$APPTYPE CONSOLE}

uses
    SysUtils,
    Math;
var
    mas : array of integer;
    i, a, b, ram, N, sum1 : integer;
label
    Lab;
begin
    sum1:=0;
    write('Enter N :');
    Readln(N);
    setlength(mas, N);
	
    for i := 0 to high(mas) do  begin 
		{OLD CODE:
        Lab:
		// почему-то нужно +2 иначе идет в бесконечный перебор
        ram:=random(high(mas)+2); 
            for a := 0 to i do if ram=mas[a] then goto Lab;
        mas[i]:=ram;
		}
		
		// NEW CODE:
		Lab:
			ram:=random(high(mas)+2); 
			for a := 0 to i do
				if ram = mas[a] then
					goto Lab;
			mas[i] := ram;
		// just look how it is become better with
		// this indents and newlines
		// (code logic unmodified)
		writeln(mas[i]);
    end;
	
	// Why do you need "b" variable if ypu could use "a"?
	// it is free since previous cycle
	for b := 0 to (high(mas) div 2) do begin   // цикл для действий с массивом
		//if mas[b]>(high(mas)/2+1) then write(mas[b], ' ') // от задания 2.4
		sum1:= sum1 + mas[b];
	end;
	
	write('Sum: ', sum1);
end.
