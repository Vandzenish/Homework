program hm;

{$APPTYPE CONSOLE}

uses
    SysUtils;
    
var
    mas : array of integer;
    I, a, ram, N : integer;
label
    Lab;
begin
    write('Enter N :');
    Readln(N);
    
    setlength(mas, N);
    for I := 0 to high(mas) do  begin
        Lab:
        ram:=random(high(mas)+2);
           // write(' -',ram, '- ');
            for a := 0 to I do if ram=mas[a] then goto Lab;

        mas[i]:=ram;
        write(mas[i], ' ');
    end;





end.
