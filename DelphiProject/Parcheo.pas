unit Parcheo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

Const ORG_Code : Array[0..12] of Byte =($03, $31, $00, $FF, $45, $F8, $EB, $14, $BF, $12, $00, $00, $00);



Const PAT_Code1 : Array[0..107] of Byte =(
$D9, $C0, $D9, $C0, $9B, $D9, $7D, $E6, $66, $81, $65,
$E6, $FF, $F3, $66, $81, $4D, $E6, $00, $0C, $D9, $6D,
$E6, $D9, $FC, $DE, $E9, $66, $B8, $64, $00, $66, $89,
$45, $E6, $DE, $4D, $E6, $DF, $75, $E8, $DF, $75, $E9,
$9B, $DB, $E3, $8D, $7B, $03, $BA, $0A, $00, $00, $00,
$9B, $8A, $44, $2A, $E7, $88, $C4, $C0, $E8, $04, $80,
$E4, $0F, $66, $05, $30, $30, $66, $AB, $4A, $75, $EB,
$32, $C0, $AA, $8B, $7D, $F8, $03, $7D, $08, $79, $07,
$31, $C0, $E9, $52, $FF, $FF, $FF, $3B, $7D, $0C, $72,
$03, $8B, $7D, $0C, $BF, $14, $00, $00, $00 );



Const PAT_Code2 : Array[0..1] of Byte =( $90, $90 );

type
  TForm1 = class(TForm)
    dlgOpen1: TOpenDialog;
    btn1: TBitBtn;
    btn3: TBitBtn;
    edt1: TEdit;
    btn4: TBitBtn;
    edt2: TEdit;
    edt3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    //procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure BuscarBytes;
  private
    Patch : string;
    Name_DCU  : string;
    Offset_1  : Integer;
    Offset_2  : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses File_Pos;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
     Edt1.Color := clWhite;
     dlgOpen1.Execute();
     Name_DCU:= ExtractFileName(dlgOpen1.FileName);
     edt1.Text:=Name_DCU;
     BuscarBytes;
end;

procedure TForm1.BuscarBytes;//procedure TForm1.btn2Click(Sender: TObject);
begin
Offset_1:=FileHEX (dlgOpen1.FileName,Pbyte(@ORG_Code),High(ORG_Code));
if Offset_1 <> -1 then
 BEGIN
 Offset_1 :=Offset_1 - 95;
 Edt1.Color := clGreen;
 Edt1.Text := '  ¡¡BYTES FOUND!!';
 Btn4.Enabled := true;
 edt2.Text:= IntToHex(Offset_1,8);
 Offset_2:=Offset_1-$23;
 edt3.Text:= IntToHex(Offset_2,8);
 END
 ELSE
 begin
  Edt1.Color := clRed;
  Edt1.Text := ' BYTES NOT FOUND';
   end;
 
end;

procedure TForm1.btn4Click(Sender: TObject);
var
  TS : TMemoryStream;
begin
  TS := TMemoryStream.Create;

  try
      TS.LoadFromFile(dlgOpen1.FileName);
         TS.Position:=Offset_1;
         TS.Write(PAT_Code1,108);

         TS.Position:=Offset_2;
         TS.Write(PAT_Code2,2);
         TS.SaveToFile(dlgOpen1.FileName +'.new');  {TS.SaveToFile('Parcheado.DCU');}
  finally
      TS.Free;
   end;

   //***** Código generado con MsgBoxAsist 2.0 *****
//************ vi. 10/02/23 19:23:03 ************
  MessageBox(0,
    pchar(  '     File patched successfully!'
    +#13#10
    +#13#10+'   Added: .new to the modified file'),
    pchar('File created OK'),
    MB_OK+MB_ICONERROR);
//***** Fin código generado con MsgBoxAsist *****


end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    Patch:= ExtractFilePath(Application.ExeName);
    dlgOpen1.InitialDir:=Patch;


end;

end.
