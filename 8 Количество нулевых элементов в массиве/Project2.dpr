program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;
const M=10000;
var n,i,count:longint;
    arr:array[-M..M] of longint;
begin
  { TODO -oUser -cConsole Main : Insert code here }
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(n);
  count:=0;
  for i:=1 to n do
  begin
    read(arr[i]);
    if arr[i]=0 then inc(count);
  end;
  writeln(count);
  close(input); close(output);
end.
