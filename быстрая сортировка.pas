program Bistroa_sort;
 uses crt,Utils;
 Const
  N=1024;
  var
  T1,T2:text;
 Type
  Mas=array[1..n] of integer;
var
  a: mas;
  k: integer;
function Part(l, r: integer):integer;
var
  v, i, j, b: integer;
begin


  V:=a[r];
  I:=l-1;
  j:=r;
  repeat
    repeat
      dec(j)
    until (a[j]<=v) or (j=i+1);
    repeat
      inc(i)
    until (a[i]>=v) or (i=j-1);
    b:=a[i];
    a[i]:=a[j];
    a[j]:=b;
  until i>=j;
  a[j]:=a[i];
  a[i]:= a[r];
  a[r]:=b;
  part:=i;
end;
procedure QuickSort(l, t: integer);
var i: integer;
begin
  if l<t then
    begin
      i:=part(l, t);
      QuickSort(l,i-1);
      QuickSort(i+1,t);
    end;
end;
begin

assign(T1,'text1.txt');
assign(T2,'text2.txt');
randomize;
rewrite(T1);
rewrite(T2);
  clrscr;
  randomize;
  for k:=1 to n do
    begin
      a[k]:=random(1024);
      write(t1,a[k],' ');
       write(a[k],' ');
      
    end;
    close(t1);
  QuickSort(1,n);
  writeln;
  for k:=1 to n do
    write(t2,a[k],'  ');
    writeln(T2,' ');
    writeln(t2,'Âðåìÿ âûïîëíåíèÿ ïðîãðàììû â ìèëèñåêóíäàõ = ',Milliseconds );
    close(t2)
end.
