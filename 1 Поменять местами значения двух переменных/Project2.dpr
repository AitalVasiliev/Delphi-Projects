program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b:longint;
begin
  { TODO -oUser -cConsole Main : Insert code here }
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  read(a);
  read(b);
  a:=a+b;
  b:=a-b;
  a:=a-b;
  writeln('a=',a,' b=',b);
  close(input);close(output);
end.
 