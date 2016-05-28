program registration;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  AnotherProcessor in 'depends\AnotherProcessor.pas',
  SomeProcessor in 'depends\SomeProcessor.pas',
  SomeRegistry in 'depends\SomeRegistry.pas';

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
