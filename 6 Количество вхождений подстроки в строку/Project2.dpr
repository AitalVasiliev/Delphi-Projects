program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var s,s1:string;
    i,j,count:longint;
    error:boolean;
begin
  { TODO -oUser -cConsole Main : Insert code here }
  assign(input,'input.txt'); reset(input);
  assign(output,'output.txt'); rewrite(output);
  readln(s);
  readln(s1);
  count:=0;
  for i:=1 to length(s) do
  begin
    if s[i]=s1[1] then
    begin
      inc(count); error:=false;
      for j:=1 to length(s1)-1 do
      begin
        if s[i+j]<>s1[j+1] then error:=true;
        if error=true then
        begin
          dec(count);
          break;
        end;
      end;
    end;
  end;
  writeln('Количество вхождений подстроки S1 в S: ', count);
  close(input); close(output);
end.
