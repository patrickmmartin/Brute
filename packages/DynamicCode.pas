unit DynamicCode;

interface

procedure DynamicPrint(const msg: string);

implementation

procedure DynamicPrint(const msg: string);
begin
  WriteLn('DynamicPrint');
end;

end.
