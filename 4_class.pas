Program hm;

{$APPTYPE CONSOLE}

uses
    SysUtils,
	Math;
  var
	ID_g : integer;
  
  Type
	vec = record
		x,y : real;
		length : real;
	end;
  tringle = record
	vec1, vec2, vec3 : vec;
	ID : integer;
	space : real;
   end;
   
   function random_vec(arg : vec): vec;
	begin
		arg.x := random(100);
		arg.y := random(100);
		arg.length := sqrt(sqr(arg.x) + sqr(arg.y));
		random_vec := arg;
	end;
   
   function random_tringle(arg : tringle): tringle; 
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
	 a := abs(p - arg.vec1.length);
	 b := abs(p - arg.vec2.length);
	 c := abs(p - arg.vec3.length);
	 arg.space := sqrt(p * a * b * c);
	 tringle_space := arg; 
	end;
	
   procedure print_vec(arg : vec);
	begin
		writeln('(', arg.x:5:3, ';', arg.y:5:3, ')', ' Length:', arg.length:5:3);
	end;
   procedure print_tringle(arg : tringle);
	begin
		writeln;
		writeln('Tringle N', arg.ID);
		writeln('With points:');
		print_vec(arg.vec1);
		print_vec(arg.vec2);
		print_vec(arg.vec3);
		writeln('With area:');
		write(arg.space:5:3);
	end;


   var
    num : tringle;


begin
    num := random_tringle(num);
	num := tringle_space(num);
	print_tringle(num);


end.