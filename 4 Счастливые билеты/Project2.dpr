program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const s1=0;
      s2=9;
      s3=27;
var a,b,c,i,sum:longint;
    arr:array[s1..s3] of integer;
begin
  { TODO -oUser -cConsole Main : Insert code here }

  assign(output,'output.txt'); rewrite(output);
  for i:=s1 to s3 do
    arr[i]:=0;
  for a:=s1 to s2 do
    for b:=s1 to s2 do
      for c:=s1 to s2 do
        inc(arr[a+b+c]);
  sum:=0;
  for i:=s1 to s3 do
  begin
    sum:=sum+sqr(arr[i]);
  end;
  writeln(sum);
  close(output);
end.
