object Form1: TForm1
  Left = 0
  Top = 0
  Caption = ' Extended Precisi'#243'n  FPU Calculator 6.4'
  ClientHeight = 420
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clRed
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 223
    Top = 96
    Width = 121
    Height = 15
    Caption = 'Enter ten Hex. bytes ->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 319
    Top = 216
    Width = 58
    Height = 30
    Caption = 'Enter a real    number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object lbl2: TLabel
    Left = 113
    Top = 391
    Width = 231
    Height = 15
    Caption = 'The most significant bit of this byte must be:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsItalic]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 175
    Top = 182
    Width = 13
    Height = 15
    Caption = '(*)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 100
    Top = 385
    Width = 13
    Height = 15
    Caption = '(*)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clPurple
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 348
    Top = 392
    Width = 7
    Height = 15
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object img1: TImage
    Left = 424
    Top = 385
    Width = 83
    Height = 26
    Picture.Data = {
      0A544A504547496D6167658C040000FFD8FFE000104A46494600010101006000
      600000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC00011080020005403011100021101031101
      FFC4001C0000020203010100000000000000000000040503060001020709FFC4
      002C100002020201030205040301000000000001020304051100061221133114
      22415161071532714281A1F1FFC4001401010000000000000000000000000000
      0000FFC40014110100000000000000000000000000000000FFDA000C03010002
      110311003F00FA4B62DC7586DDB5F61C00E4CD47015F5A3961563A0D246541FF
      0067807C72ACAA194EC1E06A59D211B6200E0462F46C8590F780367B7CE87DF8
      10FEEB1BF8895E76D6FB6252C7FE7032AE561B3218FCA483DD1C688FF47806F7
      0FBF0076B523B3082096C76F86F4D0B6B81150CC57C82831481B637C03B814CE
      B4EA1B581E9C9EF51216FD9BAB8F826201F44142ECE3F3A1AE027A54FA968E2E
      69E5C964EDD49E07F5CD8EF963EC2A76DB3BEDD7BEC6BDB80D467D3114706564
      697E3A291FC9F03B1BB7C701950EA18A2FD46C262DDA766B74FE2A32BAED0CD1
      B921BF1A53AD7D75C0A2F46F5256CF51BAD8C9B315AB438D9EC335D68C48C546
      FB7E51AED3F5E01692E6BAAFA470B074BE53E12DC524A7214E2B020B12924763
      29D8D8007DFEBF5D7806984FDCE4CCD7A595B938BD144416B83E64886D8B13FE
      43DFCFFDE06E8F5A53EA14BE30F25E5B35617B082DAA84B28BFC82EBCA9D7900
      F02BBD73D538BBFD1BD2F2B4B9D8DAF35B9235A1246AAD2A145264DFBA827E5D
      79D6F7C06F97EA0C7D3CF606A564CB9B8F85AAF08631FA2233DC07A9F5EFD03B
      D78F6E07A05491DEBA161A623CF02A5D5156B59A56B179099A9C12CE96EB5CEC
      2EB0CCA35F381E7B48F1BFA70114974623159B5B3D494EE0B588B146B53A5624
      9B73381D87B3B74BEC46CEB5BE02FAF516F74C74D09F2D4F196F1293C5623BCC
      CA5D1DC32B2681EE3AF1AE0318733497F53FA7F2F5EC7C5E329E3A2824B08846
      8947424AFB823B8123E9C00FA76941D29532541F2546E093176A38E5A8E58166
      5D2A9D81A63F6E0715BA731390C0530F95C7D6B5E98F562C83342D1BFE1B47B8
      7009FDFA25EA5C0409625CAE3E8E3E7A17F248AC4C825D81DBBF2C13C79FAF9E
      073894A9D178CB4E7254B25685796BD3868B17791DC150CE35F2003C9DFF00E8
      055F0E5FA6BA368E83D8A5F1A664D794EF914AEFFB00F02C17A2AF2E6B15954B
      B515AAE3E2A52D295889FBD09FE2BAF20EF7BDF02FF56712408C06811C0CB746
      1BA856540C0FDC7015C7D1F8D8E5F50574EEFEB813DBE9AA3700F52046D7B6C7
      0375FA7695642A90A807DFC70384E98A08C4881013F8E0736BA5685B03D4810E
      BF1C09AAF4FD3A91148E15553F61C0893A5A824DEA8813BBEFAE018B8BAE9277
      88D41FEB810CD80A73CE256894B8FAEB807C712C68140F0381FFD9}
  end
  object img2: TImage
    Left = 164
    Top = 143
    Width = 256
    Height = 9
    Picture.Data = {
      0A544A504547496D61676506030000FFD8FFE000104A46494600010101006000
      600000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC0001108001000F703011100021101031101
      FFC400190001010003010000000000000000000000000301020708FFC4003910
      00000305050504070900000000000000000103020405075606081118D2179394
      95D1122191B1131416315162B437384152617275C2D3FFC40014010100000000
      000000000000000000000000FFC4001411010000000000000000000000000000
      0000FFDA000C03010002110311003F00EF376ABBA4BEB7D262011C8EC009FA28
      F2D3C12ABFAD2CC76BB2F0A30CF732D917732C917BBF001D3F28729E95678D78
      FF004016CA6CAAA4D1E256D60194D95549A3C4ADAC0329B2AA9347895B580CB3
      74F954CB44656490332F8BC2C7FDC0572B12B29074DE29A8032B12B29074DE29
      A8032B12B29074DE29A806CC5D6E56A6D625641CCCFE669B3F3680532C52BE8E
      70F06BA80658A57D1CE1E0D7500CB14AFA39C3C1AEA0374EED12C52C70B1B0D3
      C7F3306D79980A65B6595190BDC8065B6595190BDC8065B6595190BDC80A2777
      59689338158A84197CCECC9F980DB2F32D68A83708CF400CBCCB5A2A0DC233D0
      032F32D68A83708CF401566414B8619264AC4408C8BE2E0999F900DB6092E287
      80F2F4BA006C125C50F01E5E97400D824B8A1E03CBD2E802C523E5D9161EC2D9
      CE56869019D884BBA16CE72A434806C425DD0B6739521A400A48CBC64C8CAC2D
      9C232F71942D0D202BB1BB0545C0396A3A4079DEFC160ACD59595D077A82D9F8
      6425E548CA6936B393A268B6D31E8163EC99B244786244787E8403A85CE7EEED
      65FF0073DFD52A03B48000000000000000000000000000000000000000000000
      000000000000F325FF00BEC8E09FCE25F4EB80FFD9}
  end
  object lbl6: TLabel
    Left = 249
    Top = 124
    Width = 65
    Height = 15
    Caption = 'm a n t i ss a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl7: TLabel
    Left = 103
    Top = 137
    Width = 5
    Height = 15
    Caption = 's'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object img3: TImage
    Left = 109
    Top = 138
    Width = 58
    Height = 16
    Picture.Data = {
      0A544A504547496D616765EA010000FFD8FFE000104A46494600010101006000
      600000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC00011080014003703011100021101031101
      FFC4001800010100030000000000000000000000000008020607FFC4002A1000
      0004020905000300000000000000000001030602040507141853559293D30811
      121321313241FFC40014010100000000000000000000000000000000FFC40014
      110100000000000000000000000000000000FFDA000C03010002110311003F00
      A495EBED869291C074238CCE1332EE4821CC031BFF0030B2471EC4BF3005FF00
      9859238F625F9802FF00CC2C91C7B12FCC017FE61648E3D897E600BFF30B2471
      EC4BF300175FCC2C91C7B12FCC036CE95AA9A9CAAA6853547B8A5E5D3999AA4E
      39A489250942F59A70425F7F9F613F803B5D9D2C383490059D2C383490059D2C
      383490059D2C383490059D2C38349009CBABBA8D7356FAAD536CCB4B2854794D
      14C7B9624BB79FABC7B77FCFE9100A4400000000000007FFD9}
  end
  object lbl8: TLabel
    Left = 126
    Top = 124
    Width = 22
    Height = 15
    Caption = 'exp.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 41
    Top = 257
    Width = 153
    Height = 17
    Caption = '(-1)^s * (1+ m )* 2^(e) ='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 150
    Top = 201
    Width = 178
    Height = 15
    Caption = ' mantissa                    exp. (-16383)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 383
    Top = 222
    Width = 13
    Height = 15
    Caption = '->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 361
    Top = 392
    Width = 32
    Height = 15
    Caption = ' (>7F)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 124
    Top = 311
    Width = 99
    Height = 34
    Caption = 'Predefined         constant  ->'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label8: TLabel
    Left = 277
    Top = 66
    Width = 73
    Height = 16
    Caption = 'CLIPBOARD'
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object CalConst: TButton
    Left = 359
    Top = 88
    Width = 72
    Height = 34
    Caption = 'Calculate number'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    WordWrap = True
    OnClick = CalConstClick
    OnMouseEnter = CalConstMouseEnter
  end
  object Hex0: TEdit
    Left = 106
    Top = 155
    Width = 28
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 2
    OnKeyPress = Hex0KeyPress
  end
  object Hex1: TEdit
    Left = 137
    Top = 155
    Width = 28
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 3
  end
  object Hex2: TEdit
    Left = 168
    Top = 155
    Width = 28
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 4
  end
  object Hex3: TEdit
    Left = 199
    Top = 155
    Width = 28
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 5
  end
  object Hex4: TEdit
    Left = 230
    Top = 155
    Width = 26
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 6
  end
  object Hex5: TEdit
    Left = 261
    Top = 155
    Width = 28
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 7
  end
  object Hex6: TEdit
    Left = 292
    Top = 155
    Width = 28
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 8
  end
  object Hex7: TEdit
    Left = 323
    Top = 155
    Width = 28
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 9
  end
  object Hex8: TEdit
    Left = 354
    Top = 155
    Width = 28
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 10
  end
  object hEX9: TEdit
    Left = 385
    Top = 155
    Width = 28
    Height = 28
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 2
    ParentFont = False
    TabOrder = 11
  end
  object CalBytesold: TButton
    Left = 397
    Top = 211
    Width = 62
    Height = 32
    Caption = 'Calculate Bytes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    WordWrap = True
    OnClick = CalBytesoldClick
    OnMouseEnter = CalBytesoldMouseEnter
  end
  object Numero: TRichEdit
    Left = 209
    Top = 252
    Width = 267
    Height = 27
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    MaxLength = 21
    ParentFont = False
    TabOrder = 1
    OnKeyPress = NumeroKeyPress
  end
  object Ayu: TBitBtn
    Left = 15
    Top = 88
    Width = 29
    Height = 25
    Caption = '?'
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Symbol'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 13
    OnClick = AyuClick
    OnMouseEnter = AyuMouseEnter
  end
  object CalBytes: TBitBtn
    Left = -128
    Top = 614
    Width = 55
    Height = 48
    BiDiMode = bdLeftToRight
    Caption = 'Calcular   bytes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 14
    WordWrap = True
  end
  object Signo: TRichEdit
    Left = 56
    Top = 218
    Width = 20
    Height = 25
    Alignment = taCenter
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object Mantisa: TRichEdit
    Left = 83
    Top = 218
    Width = 168
    Height = 25
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object ExponenteNor: TRichEdit
    Left = 258
    Top = 218
    Width = 49
    Height = 25
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object Vuelta: TButton
    Left = 93
    Top = 87
    Width = 95
    Height = 34
    Caption = 'Flip Clipboard and paste'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    WordWrap = True
    OnClick = VueltaClick
    OnMouseEnter = VueltaMouseEnter
  end
  object numeropi: TBitBtn
    Left = 226
    Top = 285
    Width = 114
    Height = 24
    Caption = '   Pi     '
    Font.Charset = GREEK_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
    OnClick = numeropiClick
    OnMouseEnter = numeropiMouseEnter
    OnMouseLeave = numeropiMouseLeave
    OnMouseMove = numeropiMouseMove
  end
  object raizde2: TBitBtn
    Left = 226
    Top = 304
    Width = 114
    Height = 24
    Caption = '                  Raiz de 2                    '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
    OnClick = raizde2Click
    OnMouseEnter = raizde2MouseEnter
    OnMouseLeave = raizde2MouseLeave
    OnMouseMove = raizde2MouseMove
  end
  object logaritmoneperianode2: TBitBtn
    Left = 226
    Top = 325
    Width = 114
    Height = 24
    Caption = '            Log nep (2)               '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
    OnClick = logaritmoneperianode2Click
    OnMouseEnter = logaritmoneperianode2MouseEnter
    OnMouseLeave = logaritmoneperianode2MouseLeave
    OnMouseMove = logaritmoneperianode2MouseMove
  end
  object logaritmoneperianode10: TBitBtn
    Left = 226
    Top = 347
    Width = 114
    Height = 24
    Caption = '             Log nep (10)                '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 22
    OnClick = logaritmoneperianode10Click
    OnMouseEnter = logaritmoneperianode10MouseEnter
    OnMouseLeave = logaritmoneperianode10MouseLeave
    OnMouseMove = logaritmoneperianode10MouseMove
  end
  object goldenratio: TBitBtn
    Left = 337
    Top = 285
    Width = 114
    Height = 24
    Caption = '      Golden ratio      '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 23
    OnClick = goldenratioClick
    OnMouseEnter = goldenratioMouseEnter
    OnMouseLeave = goldenratioMouseLeave
    OnMouseMove = goldenratioMouseMove
  end
  object logaritmo10de2: TBitBtn
    Left = 337
    Top = 304
    Width = 114
    Height = 24
    Caption = '                 Log 10 de (2)                 '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 24
    OnClick = logaritmo10de2Click
    OnMouseEnter = logaritmo10de2MouseEnter
    OnMouseLeave = logaritmo10de2MouseLeave
    OnMouseMove = logaritmo10de2MouseMove
  end
  object logaritmo2de10: TBitBtn
    Left = 337
    Top = 325
    Width = 114
    Height = 24
    Caption = '                 Log 2 de (10)                 '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 25
    OnClick = logaritmo2de10Click
    OnMouseEnter = logaritmo2de10MouseEnter
    OnMouseLeave = logaritmo2de10MouseLeave
    OnMouseMove = logaritmo2de10MouseMove
  end
  object e: TBitBtn
    Left = 337
    Top = 347
    Width = 114
    Height = 24
    Caption = 'e (Euler'#39's number)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
    OnClick = eClick
    OnMouseEnter = eMouseEnter
    OnMouseLeave = eMouseLeave
    OnMouseMove = eMouseMove
  end
  object portapa: TRichEdit
    Left = 165
    Top = 36
    Width = 292
    Height = 28
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clSilver
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 27
  end
  object RadioButton1: TRadioButton
    Left = 21
    Top = 28
    Width = 127
    Height = 17
    Caption = 'Maximum Digits'
    Checked = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clOlive
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 28
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 21
    Top = 51
    Width = 113
    Height = 17
    Caption = 'Round'
    Font.Charset = ANSI_CHARSET
    Font.Color = clOlive
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 29
    OnClick = RadioButton2Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 0
    Width = 525
    Height = 30
    Align = alTop
    Panels = <
      item
        Alignment = taCenter
        Text = 'Encoded for Maximum number of significant Digits'
        Width = 50
      end>
  end
  object hkClipboardMonitor1: ThkClipboardMonitor
    OnChange = hkClipboardMonitor1Change
    Left = 40
    Top = 322
  end
end
