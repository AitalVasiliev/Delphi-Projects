program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const M=10000;
var k,i,j,n,a:longint;
    smp:array[-M..M] of longint;
begin
  { TODO -oUser -cConsole Main : Insert code here }
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(a);
  n:=1;
  for i:=1 to a do
  begin
    k:=0;
    for j:=1 to n do
      if (smp[j]<>0) and (i mod smp[j]=0) then inc(k);
    if k<2 then
    begin
      smp[n]:=i;
      write(i,' ');
      inc(n);
    end;
  end;;
  close(input); close(output);
end.
