program hm;

{$APPTYPE CONSOLE}

uses
    SysUtils,
    Math;
var
    mas : array of integer;
    I, a, b, ram, N, sum1 : integer;
label
    Lab;
begin
    sum1:=0;
    write('Enter N :');
    Readln(N);

    setlength(mas, N);
    for I := 0 to high(mas) do  begin  // ���� ��� ��������� ���������� N-��� �������
        Lab:
        ram:=random(high(mas)+2); // ������-�� ����� +2 ����� ���
           // write(' -',ram, '- ');    //    � ����������� �������
            for a := 0 to I do if ram=mas[a] then goto Lab;
        mas[i]:=ram;

        //write(mas[i], ' ');    // ��� �������� �������� �������
    end;
      	
	// Why do you need "b" variable if ypu could use "a"?
	// it is free since previous cycle
	for b := 0 to (high(mas) div 2) do begin   
		//if mas[b]>(high(mas)/2+1) then write(mas[b], ' ') // from objective 2.4
		sum1:= sum1 + mas[b];
	end;

	write('Sum: ', sum1);
end.

end.
