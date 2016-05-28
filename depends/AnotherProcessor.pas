unit AnotherProcessor;

interface

type TAnotherProcessor = class

end;

implementation

uses
  SomeRegistry;

initialization
   GetSomeRegistry.RegisterClass(TAnotherProcessor);

finalization
   GetSomeRegistry.DeregisterClass(TAnotherProcessor);

end.
