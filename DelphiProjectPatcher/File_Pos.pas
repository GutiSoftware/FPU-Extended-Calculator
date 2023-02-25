{*******************************************************}
{                                                       }
{   Rutinas busqueda en fichero by  Arapumk             }
{                                                       }
{                                                       }
{*******************************************************}

unit File_Pos;

//  RUTINAS de busqueda en fichero

interface



function FilePos(const S1, S2: Pchar; L1,L2 :Integer	): Integer	;

// Publicas




//Funcion que busca una String dentro de un fichero
function FileStr(const AFileName, AStr: string): Integer;

//  Funcion que busca una Cadena HEX  dentro de un fichero
function FileHEX(const AFileName: string; S2 :Pointer; L2 :Integer): Integer;


{-------------------------------------------------------------------------------
  Funcion que busca una Cadena HEX  dentro de un fichero

  Uso de : FileHEX
function FileHEX(const AFileName: string; S2 :PByte; L2 :Integer): Integer;
se define un array de bytes con los diguitos hexa  usar conversor para ello

importante que el indice empiece en cero

CodeHEXA : Array[0..9] of Byte =($00,$00,$75,$0A,$BB,$0F,$27,$00,$00,$E9);

FileHEX(Fichero,Pbyte(@CodeHEXA),High(CodeHEXA));
-------------------------------------------------------------------------------}

implementation
Uses Classes;

{
 El algoritmo  recibe dos punteros a dos buffers de caracteres,
 y la longitud de ambas zonas de memoria.  Se  debe  buscar la primera  ocurrencia
 de los caracteres del primer buffer  dentro del segundo.
 
S1 - PATRON DE BUSQUEDA 
L1 - LONGUITUD DE PATRON 

S2 - SITIO A BUSCAR 
L2 - LONGUITUD DEL PATRON

	Si no se encuentra, la función devuelve -1;  en caso contrario, devuelve la
	posición donde se ha encontrado, contando como 0 la  primera posición.

}

function FilePos(const S1, S2: Pchar; L1,L2 :Integer	): Integer	;
var
	Step : Array[0..255] of integer; // TABLA DE FALLOS
	I : integer; // main loop
	J : integer;
begin
	result := -1;
	if L2 * L1 = 0 then exit;
	I :=  0;
	J := -1;
	Step [0] := -1;

repeat   // RELLENAR TABLA DE FALLOS
	if (J = -1) or (S1[I] = S1[J]) then
	begin
		inc(I);
		inc(J);
	if S1[J] = S1[i] then Step[I] := Step[J] else Step[I] := J;
	end else J := Step[J];
until I = L1 - 1;  
	J := -1;
	I :=  0;

while I < L2 do  // BUCLE PRINCIPAL
	begin
	if (J=-1) or (S1[J] = S2[I]) then // BUCLE DE COMPARACION
		begin
			inc(I);
			inc(J);
			if J >= L1 then // ENCONTRADO
				begin
					result := I-J;
					exit;
				end;
	end else J := Step[J]; // skips the value found in the table
end; // while
end; // Knutt_Mbrris_Pratt



//Funcion que busca una String dentro de un fichero

function FileStr(const AFileName, AStr: string): Integer;
var
  TS : TMemoryStream;
begin
  TS := TMemoryStream.Create;

  try
      TS.LoadFromFile(AFileName);
      Result := FilePos(PChar(AStr), TS.Memory,
         Length(AStr), TS.Size) ;
   finally
      TS.Free;
   end;
end;

//Funcion que busca una Cadena HEX  dentro de un fichero

function FileHex(const AFileName : String; S2 :Pointer; L2 :Integer): Integer;
var
  TS : TMemoryStream;
begin
  TS := TMemoryStream.Create;

  try
      TS.LoadFromFile(AFileName);
      Result := FilePos(PChar(S2), TS.Memory, L2, TS.Size) ;
   finally
      TS.Free;
   end;
end;

end.
