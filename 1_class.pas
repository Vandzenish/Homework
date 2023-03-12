program hw;
{$APPTYPE CONSOLE}


uses
    SysUtils;

var
    I : byte;
    sum : int64;


begin
   sum:=1;
   for I := 1 to 10 do begin
        sum := sum * I;
		// !!! why "if"? I is always equal to 10 at the end of cycle
		// just place this code after "for" loop
        //if I=10 then begin
        //    writeln('Factorial 10 - ', sum);
        //end;
   end;
   writeln('Factorial 10 - ', sum);
   
   sum :=1; //re-init on this line, before next cycle
   for I := 1 to 15 do begin
        sum := sum * I;
   end;
   writeln('Factorial 15 - ', sum);
   
   sum := 1; //re-init
   for I := 1 to 25 do begin
        sum := sum * I;
        //if I=25 then begin
        //    sum :=1; where is no need to re-init after last cycle!!!
        //end;
   end;
   writeln('Factorial 25 - ', sum);
	
	
	
	//test section:
	// just calc it by hand in some other way
	// and put here to see results and find that code may contain
	// some errors
	writeln;
	writeln('Now we want to see on the screen this results:');
	writeln('3628800');
	writeln('1307674368000');
	writeln('15511210043330985984000000');
	writeln;
end.

