unit FPU_CodeEnglish;

interface

uses
  Windows,Clipbrd, Messages, SysUtils, StrUtils,  Classes, Controls, Forms, Dialogs,StdCtrls,
  jpeg, ExtCtrls, ComCtrls, ImgList, Buttons,Math;



type
  TForm1 = class(TForm)
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
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CalBytes: TBitBtn;
    Signo: TRichEdit;
    Mantisa: TRichEdit;
    ExponenteNor: TRichEdit;
    Label6: TLabel;
    Label7: TLabel;
    StatusBar1: TStatusBar;
    Vuelta: TButton;
    numeropi: TBitBtn;
    raizde2: TBitBtn;
    logaritmoneperianode2: TBitBtn;
    logaritmoneperianode10: TBitBtn;
    goldenratio: TBitBtn;
    logaritmo10de2: TBitBtn;
    logaritmo2de10: TBitBtn;
    e: TBitBtn;

    
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



  private
  procedure MostrarAyuda();
    { Private declarations }
  var
   bytes: array[0..9] of Byte;
   ExtendedVal: extended;
   cadena : string;
  // num: Extended;
   mantissa: Extended;
   exponent: integer;
   sign: Integer;
   cadenadeBytes : String;
   n: Integer;
   EntradaInvalida : Integer;
   //Valorc:Extended;



  { Public declarations }
 end;

var
  Form1: TForm1;

implementation
 uses FAyuda;
{$R *.dfm}
{$R ayuda.res}

 procedure TForm1.numeropiClick(Sender: TObject);

  begin
  ColorNormal;
    Numero.Text :='numeropi';
    numeropi.Font.Color := 255;
    CalBytes_old ;
   end;
procedure TForm1.raizde2Click(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='raizde2';
    raizde2.Font.Color := 255;
    CalBytes_old ;
end;

procedure TForm1.eClick(Sender: TObject);
begin
ColorNormal;
   Numero.Text :='e';
   e.Font.Color := 255;
    CalBytes_old ;
end;
procedure TForm1.goldenratioClick(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='goldenratio';
    goldenratio.Font.Color := 255;
    CalBytes_old ;
end;
procedure TForm1.logaritmo10de2Click(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='logaritmo10de2';
    logaritmo10de2.Font.Color := 255;
    CalBytes_old ;
end;

procedure TForm1.logaritmo2de10Click(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='logaritmo2de10';
    logaritmo2de10.Font.Color := 255;
    CalBytes_old ;
end;

procedure TForm1.logaritmoneperianode10Click(Sender: TObject);
begin
ColorNormal;
    Numero.Text :='logaritmoneperianode10';
    logaritmoneperianode10.Font.Color := 255;
    CalBytes_old ;
end;

procedure TForm1.logaritmoneperianode2Click(Sender: TObject);
begin
 ColorNormal;
    Numero.Text :='logaritmoneperianode2';
    logaritmoneperianode2.Font.Color := 255;
    CalBytes_old ;
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
    Numero.Text := 'ENTRADA INVALIDA' ;
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

procedure TForm1.CalBytesoldClick(Sender: TObject);
begin
 CalBytes_old;
 //if EntradaInvalida =0 then Cal_Const;
 //EntradaInvalida :=0;
 ColorNormal;
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

end;

procedure TForm1.FormShow(Sender: TObject);
begin
Numero.SetFocus;

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
  Sleep(1000);
  Edit.Text := '' ;
  Edit.Font.Color:= RGB(0,0,255);
  Edit.Color:= RGB(255,255,255);
  Edit.Text := '' ;
  Edit.SetFocus;
  EntradaInvalida :=1;
 end;


procedure Tform1.ColorNormal ;
begin
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







end.

