program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var i,a,b:longint;
begin
  { TODO -oUser -cConsole Main : Insert code here }
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(a);
  readln(b);
  i:=0;
  repeat
    a:=a-b;
    inc(i);
  until a<b;
  writeln('Неполное частное: ',i);
  close(input); close(output);
end.
