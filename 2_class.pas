program hm;

{$APPTYPE CONSOLE}

uses
    SysUtils;
    
var
    mas : array [0..100] of integer;
    I, a, ram, count : integer;
label
    Lab;
begin

    for I := 0 to high(mas) do  begin
        Lab:
        ram:=random(high(mas));
            for a := 0 to I do if ram=mas[a] then goto Lab;
        mas[i]:=ram;
        write(mas[i], ' ');
    end;





end.
