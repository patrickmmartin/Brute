program registration;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  SomeRegistry in 'SomeRegistry.pas',
  SomeProcessor in 'SomeProcessor.pas',
  AnotherProcessor in 'AnotherProcessor.pas';

begin

  try
    WriteLn('starting');
    WriteLn(PChar('Registration complete'));
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;

  Writeln('exiting');

end.
