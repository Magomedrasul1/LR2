Program qw;
uses crt,Utils;
type arr=array[0..10000] of integer;
 var 
 T1,T2:text;
procedure Sort(var A: arr; Co: Integer);
  procedure MM(index, Co: integer; c: integer);
  
  var
    Ch: Integer;
  begin
    while index < Co div 2 do
     begin
      Ch := (index+1)*2-1;
      if (Ch < Co-1) and (A[Ch] < A[Ch+1]) then
        Ch:=Ch+1;
      if C >= A[Ch] then
        break;
      A[index] := A[Ch];
      index := Ch;
    end;
    A[index] := C;
  end;
 

var
  i: integer;
 c: integer;
begin
  
  for i := (Co div 2)-1 downto 0 do
    MM(i, Co, A[i]);
  
  for i := Co downto 0 do begin
   c := A[i];
    A[i] := A[0];
    MM(0, i, C);
  end;
end;
var a:arr;
    n,i:integer;
begin
n:=1000;
assign(T1,'text1.txt');
assign(T2,'text2.txt');
randomize;
rewrite(T1);
for i:=1 to  n do
begin
a[i]:=random(1000);
write(t1,a[i],' ');
end;
close(T1);
reset(t1);
for i:=1 to n do
read(T1,A[i]);
close(T1);
clrscr;
Sort(a,n);
rewrite(T2);
for i:=1 to n do
write(T2,a[i]:4);
writeln(t2,' ');
writeln(t2,'����� ���������� ��������� � ������������ = ',Milliseconds );
close(T2);
readln
end.