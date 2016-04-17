unit SomeRegistry;

interface

type
TSomeRegistry = class
public
  procedure RegisterClass(AClass: TClass);
  procedure DeregisterClass(AClass: TClass);

end;


function GetSomeRegistry: TSomeRegistry;

implementation

uses Windows;

var
  mSomeRegistry : TSomeRegistry = nil;


function GetSomeRegistry: TSomeRegistry;
begin
  Result := mSomeRegistry;
end;

{ TSomeRegistry }

procedure TSomeRegistry.RegisterClass(AClass: TClass);
begin
  OutputDebugString(PWideChar('Adding: ' + AClass.ClassName));
end;

procedure TSomeRegistry.DeregisterClass(AClass: TClass);
begin
  OutputDebugString(PWideChar('Removing: ' + AClass.ClassName));
end;

initialization
  mSomeRegistry := TSomeRegistry.Create();

finalization
  mSomeRegistry.Free;

end.
