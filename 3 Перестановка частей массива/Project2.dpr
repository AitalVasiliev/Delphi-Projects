program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;
const k=10000;
var i,j,n,m:longint;
    a:array[-k..k] of longint;
begin
  { TODO -oUser -cConsole Main : Insert code here }
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(m);
  readln(n);
  for i:=1 to n do
   read(a[i]);
  for i:=1 to n-m do
  begin
    for j:=1 to n-1 do
    begin                     
      a[j]:=a[j]+a[n];
      a[n]:=a[j]-a[n];
      a[j]:=a[j]-a[n];
    end;
  end;
  for i:=1 to n do
    write(a[i],' ');
  close(input); close(output);
end.
