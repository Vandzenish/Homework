Program hm;

{$APPTYPE CONSOLE}

uses
    SysUtils,
    Math;

type
	Node_ptr = ^Node;

	Node = record
		int : integer;
		id : Node_ptr;
	end;
    arr_of_node = array of Node;
var
    min_prt : Node;

procedure set_len (var arg : arr_of_node; Number : integer);
var i : integer;
begin
    SetLength(arg, Number);
    for i := 0 to high(arg) do begin
    arg[i].int := random(1000);
    end;
    arg[0].int := random(1000);
end;

function min_finder( arg : arr_of_node): Node;
var I : integer;
    num : Node;
begin
num.int := arg[1].int;
    for I := 1 to high(arg)-1 do begin
        if num.int > arg[I+1].int then begin
            num.id := @arg[I+1];
            num.int := arg[I+1].int;
        end;
        writeln(num.int);
    end;
min_finder := num;
end;

var N : integer;
    num : arr_of_node;

begin
readln(N);
set_len(num,N);
min_prt := min_finder(num);

writeln(min_prt.int);

end.
