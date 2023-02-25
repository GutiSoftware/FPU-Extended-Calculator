program SysUtilsPatch;

uses
  Forms,
  SysUtilPatch in 'SysUtilPatch.pas' {Form1},
  File_Pos in '..\BuscaBytesSysUtils\File_Pos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
