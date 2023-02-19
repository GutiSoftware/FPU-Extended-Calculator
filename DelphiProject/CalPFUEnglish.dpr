program CalPFUEnglish;

uses
  Forms,
  FPU_CodeEnglish in 'FPU_CodeEnglish.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
