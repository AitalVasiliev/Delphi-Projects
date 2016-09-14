program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;
var i,k:longint;
    s:string;
begin
  { TODO -oUser -cConsole Main : Insert code here }
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(s);
  k:=0;
  for i:=1 to length(s) do
  begin
    if s[i]='(' then inc(k) else if s[i]=')' then dec(k);
    if k<0 then break;
  end;
  if k<>0 then writeln('Баланс скобок нарушен')
  else writeln('Баланс скобок сохранён');
  close(input); close(output);
end.
