unit FAyuda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TVisor_Ayuda = class(TForm)
    Visor: TRichEdit;
    procedure VisorMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
   private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Visor_Ayuda: TVisor_Ayuda;

implementation

{$R *.dfm}

procedure TVisor_Ayuda.FormCreate(Sender: TObject);
var
    Ayuda : TResourceStream;
  begin
      Visor.PopupMenu := Nil;
      Ayuda := TResourceStream.CreateFromID(hInstance,100,Pchar('AYUDA'));
      visor.Lines.LoadFromStream(Ayuda);
      ayuda.Free;
  end;




procedure TVisor_Ayuda.VisorMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
Visor.SelStart:=0;
Visor.SelLength:=0;
end;

end.
