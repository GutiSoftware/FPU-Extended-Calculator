program CalPFU;

uses
  Forms,
  FPU_Code in 'FPU_Code.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
