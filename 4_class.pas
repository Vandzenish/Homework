Program hm;

{$APPTYPE CONSOLE}

uses
    SysUtils,
	Math;
  var
	ID_g : integer; //global id
  
  Type
	vec = record   // coordinates of vector
		x,y : real;
		length : real;
	end;
  tringle = record   // tringle 
	vec1, vec2, vec3 : vec;
	ID : integer;
	space : real;
   end;
   
   function random_vec(arg : vec): vec;   // random vector
	begin
		arg.x := random(100);
		arg.y := random(100);
		arg.length := sqrt(sqr(arg.x) + sqr(arg.y));
		random_vec := arg;
	end;
   
   function random_tringle(arg : tringle): tringle;  // random tringle 
	begin
		arg.vec1 := random_vec(arg.vec1);
		arg.vec2 := random_vec(arg.vec2);
		arg.vec3 := random_vec(arg.vec3);
		ID_g := ID_g + 1;
		arg.ID := ID_g;
		random_tringle := arg;
	end;
	
   function tringle_space(arg : tringle): tringle; // uses Geron's formule
	var p, a,b,c : real;
	begin
	 p := (arg.vec1.length + arg.vec2.length + arg.vec3.length)/2;
	 a := abs(p - arg.vec1.length);  // abs is module of number because no negative root
	 b := abs(p - arg.vec2.length);
	 c := abs(p - arg.vec3.length);
	 arg.space := sqrt(p * a * b * c);
	 tringle_space := arg; 
	end;

   procedure array_of_tringle(var arg : array of tringle); // array of tringles (array is given)
	var i : integer; // procedure because you can't make function as an array
	begin            // works with array straight away + number of elements in array
		for i := 0 to high(arg) do begin
		arg[i] := random_tringle(arg[i]);
		arg[i] := tringle_space(arg[i]);
		end;
	end;

   procedure sort_area_tringle_array(var arg : array of tringle);
	var 
		i,b : integer;
		lnum : tringle;
	begin
		for b:= 0 to high(arg) do begin 
			for i:= 0 to high(arg)-1 do begin
				lnum := arg[b];
				if lnum.space < arg[i+1].space then begin 
					arg[b] := arg[i+1];
					arg[i+1] := lnum;
					lnum := arg[b];
				end;
			end;
			//writeln(b/high(arg)*100:6:2, '%');
			 
		end;   // at the end we get array kind of {5,1,2,3,4,}
		lnum := arg[high(arg)]; // take last element {5,1,2,3,4} -4-
		arg[high(arg)] := arg[0]; // put first element in last place {5,1,2,3,5} -4-
		for i := 0 to high(arg)-2 do begin  // shift array except last {1,2,3,-,5} -4-
			arg[i] := arg[i+1];
		end;
		arg[high(arg)-1] := lnum; // put copy back so no data lost {1,2,3,4,5}
	end;

   procedure print_vec(arg : vec); // print vector
	begin
		writeln('(', arg.x:5:3, ';', arg.y:5:3, ')', ' Length:', arg.length:5:3);
	end;
   
   procedure print_tringle(arg : tringle);overload; // 
	begin
		writeln;
		writeln('Tringle N', arg.ID);
		writeln('With points:');
		print_vec(arg.vec1);
		print_vec(arg.vec2);
		print_vec(arg.vec3);
		write('With area:');
		writeln(arg.space:5:3);
	end;
	
	procedure print_tringle(arg : array of tringle);overload;
		var i : integer;
		begin
			for i:=0 to high(arg) do begin 
			writeln;
			print_tringle(arg[i]);
			end;
	end;

   var
    num : array of tringle;
    num2,i : integer;

begin
    readln(num2);
	setlength(num, num2);
	array_of_tringle(num);
	{for i := 0 to high(num) do begin
		num[i] := random_tringle(num[i]);
		num[i] := tringle_space(num[i]);
		writeln(i/num2*100:6:2, '%');
		end; }
	sort_area_tringle_array(num);
	print_tringle(num);


end.