program MP1;
 uses crt,Utils;
const T = 1024;
var
T1,T2:text;
a: array [1 .. 10000] of integer; 
i, j, k, m,n: integer;
x: integer;
h: array [1 .. t] of integer;
begin
n:=1024;
assign(T1,'text1.txt');
assign(T2,'text2.txt');
reset(T1);
for i:=1 to n do
read(T1,A[i]);
close(T1);
h[1] := 31; h[2] := 15; h[3] := 7; h[4] := 3; h[5] := 1;
for m := 1 to T do
begin
k := h[m];
for i := k + 1 to N do
begin
x := a[i];
j := i - k;
while (j > k) and (x < a[j]) do
begin
a[j + k] := a[j];
j := j - k;
end;
if (j > k) or (x >= a[j]) then
a[j + k] := x
else
begin
a[j + k] := a[j];
a[j] := x;
end;
end;
end;
rewrite(T2);
write();
write('����� �����');
for j:=1 to n do
write(T2,a[j]);
write(t2,'����� ���������� ��������� � ������������ = ',Milliseconds );
close(T2);
end.