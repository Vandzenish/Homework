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
        if I=10 then begin
            writeln('��������� 10 - ', sum);
            sum :=1;
        end;
   end;
   for I := 1 to 15 do begin
        sum := sum * I;
        if I=15 then begin
            writeln('��������� 15 - ', sum);
            sum :=1;
        end;
   end;
   for I := 1 to 25 do begin
        sum := sum * I;
        if I=25 then begin
            writeln('��������� 25 - ', sum);
            sum :=1;
        end;
   end;





end.
