unit FPU_CodeEnglish;

interface

uses
  Windows,Clipbrd, Messages, SysUtils, StrUtils,  Classes, Controls, Forms, Dialogs,StdCtrls,
  jpeg, ExtCtrls, ComCtrls, ImgList, Buttons,Math, WinSkinData,
  hkClipboardMonitor, SkinCaption;
  Const ORG_Code : Array[0..12] of Byte =(
$03, $31, $00, $FF, $45, $F8, $EB, $14, $BF, $12, $00,
$00, $00);


Const PAT_Code3 : Array[0..107] of Byte =(
$8D, $7B, $03, $D9, $C0, $D9, $C0, $9B, $D9, $7D, $E6,
$66, $81, $4D, $E6, $00, $0C, $D9, $6D, $E6, $D9, $FC,
$DE, $E9, $66, $B8, $64, $00, $66, $89, $45, $E6, $DE,
$4D, $E6, $DF, $75, $E8, $DF, $75, $E9, $9B, $DB, $E3,
$BA, $0A, $00, $00, $00, $8A, $44, $2A, $E7, $88, $C4,
$C0, $E8, $04, $80, $E4, $0F, $66, $05, $30, $30, $66,
$AB, $4A, $75, $EB, $32, $C0, $AA, $8B, $7D, $F8, $03,
$7D, $08, $79, $16, $31, $C0, $E9, $52, $FF, $FF, $FF,
$3A, $05, $00, $C0, $47, $00, $75, $02, $D9, $FC, $E9,
$78, $FF, $FF, $FF, $BF, $14, $00, $00, $00);



Const PAT_Code2 : Array[0..1] of Byte =($EB, $79);

 type
   bp = array [1..8] of byte;


type
  TForm1 = class(TForm)
  //dlgOpen1: TOpenDialog;
  //dlgSave1: TSaveDialog;
    CalConst: TButton;
    Hex0: TEdit;
    Hex1: TEdit;
    Hex2: TEdit;
    Hex3: TEdit;
    Hex4: TEdit;
    Hex5: TEdit;
    Hex6: TEdit;
    Hex7: TEdit;
    Hex8: TEdit;
    hEX9: TEdit;
    Label1: TLabel;
    CalBytesold: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    img1: TImage;
    Numero: TRichEdit;
    img2: TImage;
    lbl6: TLabel;
    lbl7: TLabel;
    img3: TImage;
    lbl8: TLabel;
    Ayu: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CalBytes: TBitBtn;
    Signo: TRichEdit;
    Mantisa: TRichEdit;
    ExponenteNor: TRichEdit;
    Label6: TLabel;
    Label7: TLabel;
    Vuelta: TButton;
    numeropi: TBitBtn;
    raizde2: TBitBtn;
    logaritmoneperianode2: TBitBtn;
    logaritmoneperianode10: TBitBtn;
    goldenratio: TBitBtn;
    logaritmo10de2: TBitBtn;
    logaritmo2de10: TBitBtn;
    e: TBitBtn;
    hkClipboardMonitor1: ThkClipboardMonitor;
    portapa: TRichEdit;
    Label8: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Ready: TBitBtn;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    Image1: TImage;

    
    procedure AyuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure NumeroKeyPress(Sender: TObject; var Key: Char);
    procedure HayError(n:integer);
    procedure CalBytes_old ;
    procedure Cal_Const;
    procedure CalBytesoldClick(Sender: TObject);
    procedure CalConstClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Hex0KeyPress(Sender: TObject; var Key: Char);
    procedure VueltaClick(Sender: TObject);
    procedure ColorNormal ;
    procedure numeropiClick(Sender: TObject);
    procedure eClick(Sender: TObject);
    procedure raizde2Click(Sender: TObject);
    procedure goldenratioClick(Sender: TObject);
    procedure logaritmoneperianode2Click(Sender: TObject);
    procedure logaritmoneperianode10Click(Sender: TObject);
    procedure logaritmo10de2Click(Sender: TObject);
    procedure logaritmo2de10Click(Sender: TObject);
    procedure CalConstMouseEnter(Sender: TObject);
    procedure VueltaMouseEnter(Sender: TObject);
    procedure CalBytesoldMouseEnter(Sender: TObject);
    procedure AyuMouseEnter(Sender: TObject);
    procedure numeropiMouseEnter(Sender: TObject);
    procedure raizde2MouseEnter(Sender: TObject);
    procedure logaritmoneperianode2MouseEnter(Sender: TObject);
    procedure logaritmoneperianode10MouseEnter(Sender: TObject);
    procedure goldenratioMouseEnter(Sender: TObject);
    procedure logaritmo10de2MouseEnter(Sender: TObject);
    procedure logaritmo2de10MouseEnter(Sender: TObject);
    procedure eMouseEnter(Sender: TObject);
    procedure logaritmo10de2MouseLeave(Sender: TObject);
    procedure numeropiMouseLeave(Sender: TObject);
    procedure raizde2MouseLeave(Sender: TObject);
    procedure logaritmoneperianode2MouseLeave(Sender: TObject);
    procedure logaritmoneperianode10MouseLeave(Sender: TObject);
    procedure goldenratioMouseLeave(Sender: TObject);
    procedure logaritmo2de10MouseLeave(Sender: TObject);
    procedure eMouseLeave(Sender: TObject);
    procedure numeropiMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure raizde2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure logaritmoneperianode2MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure logaritmoneperianode10MouseMove(Sender: TObject;
      Shift: TShiftState; X, Y: Integer);
    procedure goldenratioMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure logaritmo10de2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure logaritmo2de10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure eMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure hkClipboardMonitor1Change(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure  BuscarBytes;
    procedure ReadyClick(Sender: TObject);
    procedure ReadyMouseEnter(Sender: TObject);
    procedure ReadyMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn1MouseEnter(Sender: TObject);



  private
  procedure MostrarAyuda();
    { Private declarations }

   var
   Patch : string;
   // Name_DCU  : string;
    Offset_1  : Integer;
    Offset_2  : Integer;
    Offset_3  : Integer;
    //Offset_4 : Integer;
   bytes: array[0..9] of Byte;
   ExtendedVal: extended;
   cadena : string;

   mantissa: Extended;
   exponent: integer;
   sign: Integer;
   cadenadeBytes : String;
   n: Integer;
   EntradaInvalida : Integer;
   np : bp;


  { Public declarations }
 end;

var
  Form1: TForm1;

implementation
 uses File_Pos,FAyuda;
{$R *.dfm}
{$R ayuda.res}




 procedure TForm1.numeropiClick(Sender: TObject);

  begin

  ColorNormal;
    Numero.Text :='numeropi';
    numeropi.Font.Color := 255;
    CalBytes_old ;
    np[1]:=1;
   end;
procedure TForm1.numeropiMouseEnter(Sender: TObject);
begin
numeropi.Cursor :=crHandPoint;

end;

procedure TForm1.numeropiMouseLeave(Sender: TObject);
begin
if np[1] = 0 then numeropi.Font.Color := 0;
end;

procedure TForm1.numeropiMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 numeropi.Font.Color := 255;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
asm   //el flag de Max Dig a 1
  push eax
  mov al,1
  mov[$47c000],al
  pop eax
end;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
asm  //el flag de Max Dig a 0 (Round)
  push eax
  mov al,0
  mov[$47c000],al
  pop eax
 end;
end;

procedure TForm1.raizde2Click(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='raizde2';
    raizde2.Font.Color := 255;
    CalBytes_old ;
    np[2] :=1;
end;

procedure TForm1.raizde2MouseEnter(Sender: TObject);
begin
raizde2.Cursor :=crHandPoint;
end;

procedure TForm1.raizde2MouseLeave(Sender: TObject);
begin
if np [2] = 0 then raizde2.Font.Color := 0;

end;

procedure TForm1.raizde2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 raizde2.Font.Color :=255;
end;

procedure TForm1.ReadyClick(Sender: TObject);
var
  TS : TMemoryStream;
  SaveDialog1: TSaveDialog;

begin

  SaveDialog1 := TSaveDialog.Create(Self);
  SaveDialog1.FileName := ExtractFileName(ParamStr(0)); // Establece el nombre de archivo predeterminado como el nombre del archivo actual
//SaveDialog1.Filter := 'Archivos (.)|.'; // Filtro opcional para el tipo de archivo a
  SaveDialog1.Filter := 'Archivos (*.*)|*.*'; // Filtro opcional para el tipo de archivo a guardar

  if SaveDialog1.Execute then
  begin
    TS := TMemoryStream.Create;

    try
      TS.LoadFromFile(ParamStr(0));
      TS.Position:=Offset_3;
      TS.Write(PAT_Code3,108);
      TS.Position:=Offset_2;
      TS.Write(PAT_Code2,2);
      //TS.SaveToFile(SaveDialog1.FileName); // Guarda el archivo con el nombre y ruta elegidos por el usuario
      TS.SaveToFile(ExtractFilePath(SaveDialog1.FileName) + 'PATCH' + ExtractFileName(SaveDialog1.FileName));
    finally
      TS.Free;
    end;
  end;
  SaveDialog1.Free;
  Ready.Caption:= 'PATCHED file saved' ;
  Ready.Enabled  := False;
  label2.Caption := 'For better acuraccy use saved one ->';
  label2.Visible := True;
end;

procedure TForm1.ReadyMouseEnter(Sender: TObject);
begin
ready.Cursor := crHandPoint;
end;

procedure TForm1.ReadyMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
ready.Dragcursor := crHandPoint;
end;

procedure TForm1.eClick(Sender: TObject);
begin
ColorNormal;
   Numero.Text :='e';
   e.Font.Color := 255;
    CalBytes_old ;
    np[8]:= 1;
end;
procedure TForm1.eMouseEnter(Sender: TObject);
begin
e.Cursor :=crHandPoint;
end;

procedure TForm1.eMouseLeave(Sender: TObject);
begin
if np[8] = 0 then e.Font.Color := 0;

end;

procedure TForm1.eMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
e.Font.Color :=255;
end;

procedure TForm1.goldenratioClick(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='goldenratio';
    goldenratio.Font.Color := 255;
    CalBytes_old ;
    np[5]:= 1;
end;
procedure TForm1.goldenratioMouseEnter(Sender: TObject);
begin
goldenratio.Cursor :=crHandPoint;
end;

procedure TForm1.goldenratioMouseLeave(Sender: TObject);
begin
if np[5] = 0 then goldenratio.Font.Color := 0;
end;

procedure TForm1.goldenratioMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
goldenratio.Font.Color :=255;
end;

procedure TForm1.logaritmo10de2Click(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='logaritmo10de2';
    logaritmo10de2.Font.Color := 255;
    CalBytes_old ;
    np[6]:= 1;
end;

procedure TForm1.logaritmo10de2MouseEnter(Sender: TObject);
begin
logaritmo10de2.Cursor :=crHandPoint;

end;

procedure TForm1.logaritmo10de2MouseLeave(Sender: TObject);
begin
logaritmo10de2.Cursor :=crHandPoint;
if np[6] = 0 then logaritmo10de2.Font.Color := 0;
end;

procedure TForm1.logaritmo10de2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
logaritmo10de2.Font.Color :=255;
end;

procedure TForm1.logaritmo2de10Click(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='logaritmo2de10';
    logaritmo2de10.Font.Color := 255;
    CalBytes_old ;
    np[7]:= 1;
end;

procedure TForm1.logaritmo2de10MouseEnter(Sender: TObject);
begin
logaritmo2de10.Cursor :=crHandPoint;

end;

procedure TForm1.logaritmo2de10MouseLeave(Sender: TObject);
begin
if np[7] = 0 then logaritmo2de10.Font.Color := 0;
end;

procedure TForm1.logaritmo2de10MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
logaritmo2de10.Font.Color :=255;
end;

procedure TForm1.logaritmoneperianode10Click(Sender: TObject);
begin
ColorNormal;
    Numero.Text :='logaritmoneperianode10';
    logaritmoneperianode10.Font.Color := 255;
    CalBytes_old ;
    np[4]:= 1;
end;

procedure TForm1.logaritmoneperianode10MouseEnter(Sender: TObject);
begin
logaritmoneperianode10.Cursor :=crHandPoint;

end;

procedure TForm1.logaritmoneperianode10MouseLeave(Sender: TObject);
begin
if np [4] = 0 then logaritmoneperianode10.Font.Color := 0;
end;

procedure TForm1.logaritmoneperianode10MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
logaritmoneperianode10.Font.Color :=255;
end;

procedure TForm1.logaritmoneperianode2Click(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='logaritmoneperianode2';
    logaritmoneperianode2.Font.Color := 255;
    CalBytes_old ;
    np[3]:= 1;
end;

procedure TForm1.logaritmoneperianode2MouseEnter(Sender: TObject);
begin
logaritmoneperianode2.Cursor :=crHandPoint;

end;

procedure TForm1.logaritmoneperianode2MouseLeave(Sender: TObject);
begin
if np[3] = 0 then logaritmoneperianode2.Font.Color := 0;

end;

procedure TForm1.logaritmoneperianode2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
logaritmoneperianode2.Font.Color :=255;
end;

procedure TForm1.AyuClick(Sender: TObject);
begin
 MostrarAyuda ;
end;

procedure Tform1.CalBytes_old ;
var
  i: Integer;
  P: PByte;
  EditName: string;
  Edit    : TEdit;
  Valor:Extended;
  Valorc :Extended;


begin
   Valorc :=0;
   Numero.SetFocus;
   EntradaInvalida :=0;
   Numero.Text := StringReplace(Numero.Text, '.', ',', [rfReplaceAll]);
  {va comprobamdo si metemos una de las constantes predefinidas, y si tiene
  código de FFPU se usa este para más precision y byte correcots}
  if Numero.Text = 'numeropi' then
  begin
   Numero.Text:= FloatToStr (pi);
    asm
      dw $EBD9 //fldpi en opcodes como muestra de uso (código FPU para cargar pi en st0
      fstp tbyte ptr[Valorc] //asigna los 10 bytes de pi a la variable extended: Valorc
    end;
  end;


  if Numero.Text = 'e' then
  begin
   Numero.Text := FloatToStr (Exp(1)); //Exp (1) es e (numero de Euler)
   Valorc := Exp(1);
  end;
  if Numero.Text = 'logaritmoneperianode10' then
  begin
  Numero.Text := FloatToStr (Ln(10));
  Valorc := Ln(10);
  end;
  if Numero.Text = 'raizde2' then
  begin
  Numero.Text := FloatToStr (sqrt(2));
  Valorc := sqrt(2);
  end;
  if Numero.Text = 'logaritmoneperianode2' then
  begin
  Numero.Text := FloatToStr (Ln(2));
  asm
  fldln2  //código FPU para logaritmo neperiano de 2
  fstp tbyte ptr [Valorc]
  end;
  end;
   if Numero.Text = 'logaritmo10de2' then
  begin
  Numero.Text := FloatToStr (Log10(2));
  asm
  fldlg2  //código FPU para logaritmo en base 10 de 2
  fstp tbyte ptr [Valorc]
  end;
  end;
  if Numero.Text = 'logaritmo2de10' then
  begin
  Numero.Text := FloatToStr (Log2(10));
  asm
  fldl2t  //código FPU para  logaritmo en base 2 de 10
  fstp tbyte ptr [Valorc]
  end;
  end;

  if Numero.Text = 'goldenratio' then Numero.Text := '1,61803398874989484820';
   //proporción aurea

  if TryStrToFloat(Numero.Text, ExtendedVal) then

   begin
    Valor := StrToFloat (Numero.Text);
    Signo.Text := '';
    ExponenteNor.Text := '';
    Mantisa.Text := '';
    ExtendedVal:= valor;
    if valorc <>0 then ExtendedVal:= Valorc;
    P := @ExtendedVal ;  //P es un puntero a la memoria donde se guarda la variable
    for i := 0 to 9 do // length (bites)-1 do
     begin
      Bytes[9-i] := P^; //se asigana al array Bytes  cada uno de los bytes al que va apuntando el puntero
      Inc(P); //incrementamos el puntero
      EditName := 'Hex' + IntToStr(9-i);
      Edit:= TEdit(FindComponent(EditName));
      Edit.Text := IntToHex (bytes[9-i],2);
      cadenadeBytes := cadenadeBytes + Edit.Text;
     end;
     clipboard.astext:= (cadenadeBytes) ;
     cadenadeBytes :='';
   end
  else
   begin
    Numero.SetFocus;
    Numero.Text := 'WRONG DATA' ;
    Numero.Font.Color:= RGB(255,255,255);
    Numero.Color:= RGB(255,0,0);
    Application.ProcessMessages;
    Sleep(1000);
    Numero.Text := '' ;
    Numero.Font.Color:= RGB (0,0,255);
    Numero.Color:= RGB(255,255,255);
    EntradaInvalida := 1
   end;
   if EntradaInvalida =0 then Cal_Const;
 EntradaInvalida :=0;
end;

procedure TForm1.CalConstClick(Sender: TObject);

var
  i :integer;
  EditName: string;
  Edit    : TEdit;
  Esnumero : integer;
 begin
  ColorNormal;
      cadenadeBytes :='';
      EntradaInvalida := 0;
      Numero.Text := '';
      Mantisa.Text := '';
      ExponenteNor.Text := '';
      Signo.Text := '';
      for I := 0 to 9 do   //comprueba si hay alguna entrda de bytes invalida
       begin
        EditName := 'Hex' + IntToStr(I);
        Edit:= TEdit(FindComponent(EditName));
         if not TryStrToInt ('$'+ Edit.Text,  Esnumero) then
          begin
           n :=I;
           HayError (n);
          end ;
         if length (Edit.Text) = 1 then  Edit.Text := '0' + Edit.Text ;

       end ;
     if EntradaInvalida = 0 then
       begin
        //el tercer byte no puedes ser menor de $80
        if Hex2.Text < '80' then
          begin
           HayError (2);
           EntradaInvalida := 1;
          end;


          // el primero y el seguno bytes no pueden ser los dos cero  ni $FF
          if (StrToInt ('$'+(Hex0.text)) = 0 ) and (StrToInt ('$'+(Hex1.text)) = 0 ) or (Hex0.text = 'FF' ) and (Hex1.text = 'FF') then
              begin
               HayError (1);
               HayError (0);
              end;

       end;
       if Entradainvalida = 0 then
        Cal_Const;
        
 end;

procedure TForm1.CalConstMouseEnter(Sender: TObject);
begin
calconst.Cursor :=crHandPoint;
end;

procedure TForm1.AyuMouseEnter(Sender: TObject);
begin
 Ayu.Cursor :=crHelp;
end;

procedure TForm1.CalBytesoldClick(Sender: TObject);
begin
 CalBytes_old;
 //if EntradaInvalida =0 then Cal_Const;
 //EntradaInvalida :=0;
 ColorNormal;
 end;

procedure TForm1.CalBytesoldMouseEnter(Sender: TObject);
begin
CalBytesOld.Cursor :=crHandPoint;
end;

procedure TForm1.Cal_Const;
var
  i :integer;
  EditName: string;
  Edit    : TEdit;

   begin
   
     for i := 0 to 9 do
       begin
          EditName := 'Hex' + IntToStr(9-i);
          Edit:= TEdit(FindComponent(EditName));
          Cadena := '$' + Edit.Text;
          bytes[i] := StrToInt(Cadena);
          cadenadeBytes := Edit.Text + cadenadeBytes ;
       end;
     clipboard.astext:= (cadenadeBytes) ;
     mantissa :=  (bytes[7] and $7F);
        for i := 0 to 6  do
          begin
            mantissa :=  mantissa * 256 + bytes[6-i];
          end ;
     Move(bytes, ExtendedVal, SizeOf(bytes));
     Numero.Text := FloatToStr (ExtendedVal);
     exponent := bytes[8] + ((bytes[9] and $7F)) *256 ;
     exponent := exponent - 16383;
     ExponenteNor.Text := inttoStr (exponent);
     mantissa:= mantissa/power (2,63);
     Mantisa.Text := FloatToStr (mantissa);
     //mantissa := 1+ mantissa ;
     // Calcule el signo
       if (bytes[9] and $80) <> 0 then
         begin
          sign := -1;
          Signo.Text := '-' //intToStr (sign);
         end
       else
         begin
          sign := 1;
          Signo.Text := '+'// + intToStr (sign);
         end;
     {num da el mismo resultado que:
      Numero.Text := FloatToStr (ExtendedVal);
      por lo que no se muestra por pantalla
      num := (sign * mantissa * Power(2, exponent));
      Numerobis.Text := FloatToStr (num);}
     
   end;


procedure TForm1.FormCreate(Sender: TObject);

begin
// impedir redimensionar
self.Constraints.MaxHeight:=Height;
Self.Constraints.MinHeight:=Height;
Self.Constraints.MaxWidth:=Width;
Self.Constraints.MinWidth:=Width;

Patch:= ExtractFilePath(Application.ExeName);
    //dlgOpen1.InitialDir:=Patch;
    //Name_DCU:='SysUtil_X';


asm  //el flag de calculo con Max Dig a 1
  push eax
  mov al,1
  mov [$47c000],al
  pop eax
end;

end;

procedure TForm1.FormShow(Sender: TObject);
var
flag:string;
begin
Numero.SetFocus;
flag := FloatToStr(pi);
if length (flag) >18  then
begin

Ready.Caption := 'PATCHED' ;
Ready.Enabled := false;
Ready.Visible:=true;
RadioButton1.Visible := True;
RadioButton2.Visible := True;
label2.Caption := 'Compiled for better precision';
label2.Enabled := False;
end

 else BuscarBytes;

//Edit1.Text := IntToHex (band_dir,4);

end;


procedure Tform1.MostrarAyuda();
Var
   VerAyuda :TVisor_Ayuda;
 begin
   Self.Hide;
   VerAyuda:=TVisor_Ayuda.Create(Self);
    try
     VerAyuda.ShowModal;
     finally
     VerAyuda.free;
     Self.Show;
    end;
 end;
procedure TForm1.NumeroKeyPress(Sender: TObject; var Key: Char);
 begin
  if (key = Char(#13)) then
   begin
    CalBytes_old ();
    Cal_Const;
    Key := Char (#0);
    ColorNormal;
   End;

 end;


procedure TForm1.VueltaClick(Sender: TObject);
{captura el portapapeles, comprueba que tiene 10 bytes, les da la vuelta,
los va mostrando en sus correspondientes casillas y los vuelve a dejar en
el portapapeles}
var
i: integer;
tmpp : string;
tmp : string;
EditName: string;
Edit    : TEdit;
begin
i :=0 ;
tmp :=Clipboard.Astext;
tmpp := '';
if length (tmp) = 20 then
begin
  while Length(tmp) > 0 do
  begin
    tmpp := tmpp + Copy(tmp, Length(tmp) - 1, 2);
    EditName := 'Hex' + IntToStr(I);
    Edit:= TEdit(FindComponent(EditName));
    Edit.Text := Copy(tmp, Length(tmp) - 1, 2);
    Delete(tmp, Length(tmp) - 1, 2);
    inc (i);
  end;
  Clipboard.Astext:= tmpp;
  end;
  end;

procedure TForm1.VueltaMouseEnter(Sender: TObject);
begin
Vuelta.Cursor :=crHandPoint;
end;

procedure Tform1.HayError(n:integer);
var
  EditName: string;
  Edit    : TEdit;

begin
  EditName := 'Hex' + IntToStr(n);
  Edit:= TEdit(FindComponent(EditName));
  Edit.Font.Color:= RGB(255,255,255);
  Edit.Color:= RGB(255,0,0);
  Application.ProcessMessages;
  Sleep(500);
  Edit.Text := '' ;
  Edit.Font.Color:= RGB(0,0,255);
  Edit.Color:= RGB(255,255,255);
  Edit.Text := '' ;
  Edit.SetFocus;
  EntradaInvalida :=1;
 end;


procedure Tform1.ColorNormal ;
var
i:integer;


begin
for i := 1 to 8 do
  begin
   np[i]:=0;
  end;
numeropi.Font.color :=0;
logaritmoneperianode2.Font.color :=0;
raizde2.Font.color :=0;
logaritmoneperianode10.Font.color :=0;
e.Font.color :=0;
goldenratio.Font.color :=0;
logaritmo10de2.Font.color :=0;
logaritmo2de10.Font.color :=0;
end;





procedure TForm1.Hex0KeyPress(Sender: TObject; var Key: Char);
begin
if Key = char (#9) then  Hex1.SetFocus;
end;







procedure TForm1.hkClipboardMonitor1Change(Sender: TObject);
begin
PortaPa.Text := Clipboard.Astext;
end;

procedure TForm1.BitBtn1MouseEnter(Sender: TObject);
begin
BitBtn1.Cursor := crHandPoint;
end;

procedure TForm1.BuscarBytes;//procedure TForm1.btn2Click(Sender: TObject);
begin
//dlgOpen1.Execute();
Offset_1:=FileHEX (ParamStr(0),Pbyte(@ORG_Code),High(ORG_Code));
//if Offset_1 <> -1 then
// BEGIN
 Offset_1 :=Offset_1 - 44;
 //Ready.Visible := True;
 //RadioButton1.Visible := False;
 //RadioButton2.Visible := False;
 //Edt1.Color := clGreen;
 //Edt1.Text := '    BYTES FOUND!!';
 //Btn4.Enabled := true;
 Offset_3 := offset_1 - 51;
 //Edit1.Text := IntToHex(Offset_3,8);
 Offset_2:=Offset_3-$23;
 //edt3.Text:= IntToHex(Offset_2,8);
  //END
 {ELSE
 begin
 Ready.Visible := False;
 RadioButton1.Visible := true;
 RadioButton2.Visible := true;
  //Edt1.Color := clRed;
  //Edt1.Text := ' BYTES NOT FOUND';
   end;}

end;

end.

