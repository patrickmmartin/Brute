program console;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  TypeExamples in 'TypeExamples.pas';

var
  SomeObject : TSomeObject;
  SomeRecord : TSomeRecord;
  SomeClass : TSomeClass;
begin

  WriteLn('starting');
  SomeRecord.IntField := 24;
  SomeRecord.StringField := '42';

  SomeObject.IntField := 24;
  SomeObject.StringField := '42';

  SomeClass := TSomeClass.Create(24, '42');
  try
    SomeClass['Int'];
  finally
    SomeClass.Free;
  end;

  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;

  Writeln('exiting');

end.
