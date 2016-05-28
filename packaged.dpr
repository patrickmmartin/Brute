program packaged;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  DynamicCode;

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
    DynamicPrint('Hello, Dynamic World');
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;
end.
