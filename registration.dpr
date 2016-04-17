program registration;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  SomeRegistry in 'SomeRegistry.pas',
  SomeProcessor in 'SomeProcessor.pas',
  AnotherProcessor in 'AnotherProcessor.pas';

begin

  WriteLn('starting');

  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;

  Writeln('exiting');

end.
