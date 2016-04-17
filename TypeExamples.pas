unit TypeExamples;

interface

type TSomeBase = class

end;

type ISomeInterface = interface ['{A9AA9516-DB60-4930-961F-D5CC225E99C7}']

end;

// records, stack, heap
type TSomeRecord = record
// fields
  IntField : integer;
  StringField : string;
end;

// classes (heap only)
type TSomeClass = class(TInterfacedObject, ISomeInterface)
// fields, methods, properties
  private
    FIntField : integer;
    FStringField : string;
    function GetFieldValue(index : string) : string;
  public
    property IntField : integer read FIntField;
    property StringField : string read FStringField;
    property FieldValue[index : string]: string read GetFieldValue; default;
    constructor Create(Intfield : integer; StringField: string);
end;

// note: classes had language support for inheritance
// inherited

// well and there were also objects, some weird class / record hybrid everyone forgot about
type TSomeObject = object
  IntField : integer;
  StringField : string;
end;

implementation

uses SysUtils;

{ TSomeClass }

constructor TSomeClass.Create(Intfield: integer; StringField: string);
begin
  FIntField := Intfield;
  FStringField := StringField;
end;

function TSomeClass.GetFieldValue(index: string): string;
begin
  if index='Int' then
    Result := IntToStr(FIntField)
  else
  if index = 'String' then
    Result := FStringField;

end;

end.
