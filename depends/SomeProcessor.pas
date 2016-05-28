unit SomeProcessor;

interface

type TSomeProcessor = class

end;


implementation

uses
  AnotherProcessor,
  SomeRegistry;

initialization
   GetSomeRegistry.RegisterClass(TSomeProcessor);

finalization
   GetSomeRegistry.DeregisterClass(TSomeProcessor);



end.
