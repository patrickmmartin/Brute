program console;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  TypeExamples in 'types\TypeExamples.pas';

var
  SomeObject : TSomeObject;
  SomeRecord : TSomeRecord;
  SomeClass : TSomeClass;

  X : double = 1.0;
  Y : SomeFloat = 2.0;
  Z : SomeNewFloat = 3.0;

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

  X := 2.0;

  Y := X;

  Z := X;

  X := Z;

  A(X);

  B(Z);

  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E:Exception do
      Writeln(E.Classname, ': ', E.Message);
  end;

  Writeln('exiting');

end.
