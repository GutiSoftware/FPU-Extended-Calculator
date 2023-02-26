object Form1: TForm1
  Left = 0
  Top = 0
  Caption = ' Extended Precisi'#243'n  FPU Calculator 7.6'
  ClientHeight = 435
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
    Left = 218
    Top = 117
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
    Top = 237
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
    Left = 35
    Top = 412
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
    Left = 170
    Top = 203
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
    Left = 22
    Top = 406
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
    Left = 270
    Top = 413
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
    Top = 406
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
    Left = 159
    Top = 164
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
    Left = 244
    Top = 145
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
    Left = 98
    Top = 158
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
    Left = 104
    Top = 159
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
    Left = 121
    Top = 145
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
    Top = 278
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
    Top = 222
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
    Top = 243
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
    Left = 283
    Top = 413
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
    Top = 332
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
    Top = 87
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
  object Label2: TLabel
    Left = 23
    Top = 12
    Width = 253
    Height = 16
    Caption = 'For better acuraccy use this button ->'
  end
  object Image1: TImage
    Left = 297
    Top = 31
    Width = 121
    Height = 23
    Picture.Data = {
      0A544A504547496D616765EB0A0000FFD8FFE000104A46494600010101006000
      600000FFDB0043000302020302020303030304030304050805050404050A0707
      06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
      1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
      1414141414141414141414141414141414141414141414141414141414141414
      14141414141414141414141414FFC00011080017007B03011100021101031101
      FFC4001C0000020300030100000000000000000000050603040702080901FFC4
      0030100001040103030302050403000000000001020304051100061208132107
      315114222332416171152542814353F0FFC4001B010001050101000000000000
      00000000000400010203060508FFC40032110002010303030204040603000000
      0000010211000312042131054151136106227181323391A11415234252B183F0
      F1FFDA000C03010002110311003F00F44B776EBAFD97B7E75CDA484C5810DA53
      CF3AAFF148193E3F5FE0793A83BADB52EC76145E93497B5DA84D2E9972772001
      E49AC46B7AC5DBCECC9D1AC6AADAB26467BB7F44A8C5F7D49EDF70A8A1AE453C
      5192B0AC14630AC1F1AE72F51B2412D2378E3EFDBF7F15BED47C05D52DDCB69A
      774B8197290C1547CD8C4BE20CB6CA46CDCAC8AD4E8FD5ADB57B5F1A647B48CA
      664212E34A2E01C92A190403F3AE887560083B1AC15DD1EA2C5C7B3710864241
      11C11B107E944DBDFB46EA39A2CA3291CB8F20E8233F1EFEFA948F3541B5714E
      254CF3C76F35CDBDEF4CF04145847505E7810E03CB1EF8F9D2914C6DBAC82088
      E7DAB82B7ED1A4A41B28C39631F8A3CE7DB1E7F6D3643CD3FA3737F94EDED48B
      EA17521B6B60C88ECB889766A5B6B7DD557361D4C6650A4214E38790C2429C48
      F193E7DB42DFD5DBD3901FBF8AD4746F8635FD716E3E9F15C607CC6322C090AB
      B1924293D87BD3BD0EFAAABEAF12E3CB696D633C82811A2E45650AB29C48835C
      D5BF6892DA1C36717B6B5704AFBA9C28FC039F274D90E66ADF42EE4570323722
      0EC2A456F5A7472E53D84F1C72CB83C67DB3A7915584731039A5DDD7EB96CDD9
      7190FDADE458C85AF8240573513824FDA9C9C000927181839D5372FDAB226E34
      5763A7744EA3D5AE1B7A2B0CE409DBC7D4C0EE23CCED46207A8D43621AECD947
      5A9D4771090E0CA93F207EA3F7D5D903DEB94D66E282594800C1DB83E0FBD4CB
      DF74895A91FD463F701E253DC19CFC633EFE34A47134C6D5C0322A639E2B2C1D
      5451AB7BCCA454394D428F3535C2D94505854928E61B385152390CF12A002CA1
      6124F13A006B6D9BC6C9FA4F69F1FF0079ADA5DF8475C9D253AAAB2B0652E504
      E4101C72DC4100FE20092A0A9220D6D75F39BB08C879A5052543208D742B0D56
      74A9562BD4EBCDA36F6DE44D2814CBDC3562C4B9F93E9BEADBE7CBF4E3ED9CF8
      C6B9DAFF00C9DF8913F4915BBF82E7F99BFA7F99E95EC3CE7E9B447BF315D1CD
      95BA55B0E65B5CDD3B315BBD36A629851548549429A793225ADD42CE4256B4B4
      DE4FE601D4F9F2359A46678551BAFF00EB1FF42BD09AFD1D8D3E77AF3A8B17A2
      18E58E257D2B08A547F6A9773FE248631CD41BBD5B6A8AA2457EDC7686709F7C
      F16A7CA69B96FC4AC723C571A4A890A28ED95292A20720A6DC008FB811885208
      4DFF0078103FD568F4F7756B76D5ED6874845054128AD7B3B8188E322F00A826
      0865267634DB22AB6FCAB5AF8F119DB7696ADC4BF43AA42EB9319E0C434390E4
      B8DC73D86BEF2EE0A8938490A51C1D4A14900413BF8EC363B6D402DDD5A5B7B9
      74DC442DA78DAEE433B856E20671EA36C164011C1006D4B3731292E62DB418EF
      6DF85B9D347116A7234C8F1E0FD7264E5F119D0A0CA54582DF208500A505F1CF
      81A83095DB631F69EF078E2BA1A7BF72D5E4CF37B7EA34A9566B9E995381B8B0
      6E15F503625848113DE8DAAC363D4EF0AB84C47DA92AAA66EA911A63AF36CBA9
      6EBD4C430085FF00C6DF253C42D2410A4AF047DD994DB0C00889FDB6A1BD2EA9
      7B4772E3B5D5B8B614A8058137035D3C7F7340595320889076815B3B716CF931
      22CDDC26142665D04A8D6716943519C778CE6CB69EDA703B85B4FECA5A520939
      FBB50464225BC6F1F5A33A8693A8A33DBD1CB15BAA519E5809B6D27232710C7D
      C292768DAA5DBB631A1DFDA524AB1AA736E3D2E43EA7A0A8B752EBAA88B30438
      127EC67BBD90B4AFC820873C83A3D587F0E5578933E38F97EDE7F7AC6EA6D5E3
      D613537948B9E920B61BF3805B83D789FC570296285762A7E4AA9B7D84299B3F
      AB5ECA73728B58DF54C4B7ABC414D7F6FF001151F81EC024A53CFB3F8BE13C7C
      9568211BF1CF788E378EDFA6F5AEBAD780B648BA130682A2F679E671CF21EA6C
      A4E21FFA7320EC05588D5BB42CE5419D0E755269E3CAB86A4A2DA5B6DC975AE2
      B3016B69C505BA305012403823071A442CC93B6FCF3ED504D46AD6DB5B0ACCE4
      5AC4DB525430205E0194155320E40913EF53EDDDDD5F57BBAB98A987B663D72B
      6A088A9CF448FC1560F5384AD2F3EBF092B7B2DA8294120AD7CB1C964DAA217D
      45022238EE57CFD76AE66B0DCB975B47A96B86E1B86E0019A7D34D4ED820E404
      F9D6016200898103D32A8A07A5CC3F12354CBB6112489CF35690A34C87384870
      B6B64287796DA5B0D710C2CB6A1C8602BCEA80C15011CFD4020FB77FD36AED9B
      3A8D47537B574B0B4596014B8C8E855720D1F2062D9646E286060CC55D930A82
      DB79EDFA965BA88CE5FC77EAD10A1AA148554CA576CC77C4B8B9EE23BDC7EE70
      F75284BA1590A0A54A0170046FF4D8F6323DFEFCD51EAEA6C68AF5DB99B0B455
      E585C02E20CB3536EE7E1384ECA3D32C5237F9406A39F11F57A94FD43298B44E
      428716BDB4A38737913E2A62AF1FF729B69E709F723BBF2757AA05829CB47FB1
      8FDF626B8DA9D65DD47F4F57B8B25C31FF0082EB5F13FE0ACE96C76040F15E8F
      FA3AFBEFECD82A7F257DB1EFFC6B715E38A7BD2A54B3EA0ECB83BEF6D4DA8B16
      52FC494D96DC42BD8823FF0079D41D16E2946120D17A4D55FD0DF4D5699B1742
      0823B115866C9E94A153EE697676539FB990F9482FCD585B9C529094824019C0
      0064E49C79274369F4A9A69C64CF9AD075DF88F57D7C5A5BEAA8B6C100202049
      324C49DC9EC200EC053FA7A72DA6990A7535B1D2A50C1E2D819D14154702B38F
      A8BD7000EE481E49A43DF9D23535AAD2F54487A91E2D3B1DC5C1284171A71250
      E36ACA4E414923FDE83BFA3B7A80036D1E2B55D13E2BEA1D0DDDED63732C4C3C
      B0054CAB0861B83F6F228EED5E96B6BD752B71244265EE23FC920E8B08A0631B
      565DB557DAEB5F2E736E4CEE68923A5ED9E9CFF6C8F8230476C791A582F8A475
      5A8241370C8DF93CF135F55D30ED02B0AFE9AC6739CF01EFA7C5798A8FF117B1
      C7331C727BF3FAD1481E806D8AF88E466E032197010A4040C1FF005A5880222A
      2D7AEBB8766248EF3BD0A77A5FD9CEE01AB8DC01E413DB1807E74DE9A4440ABC
      6BB54AE6E0BAD91104E4648F04CF15348E99F68C94A42EB585103195201F1A72
      AA791555BD45EB431B6E40F62455A89D3C6D5890DC8C9AE63B4E7E6470183FC8
      D2C4444537AF7731733390E0C991F4343A474BBB3DF5051AC8F94F807B63C0FD
      B4D82F8AB06AF52A180B8D0DB9DCEFF5F349FBB3A43A779D6E452CA9345212DB
      8CADCAF73B25C6D6005A1440CE081838C78247B13A16F68ED5F8CB68F1B735A5
      E95F15751E902E0B643E78FE319C1592A449E4498991EDB503DB7D1DC3A7B38E
      AFAF7DCAF6DF1253014E0ECA5D09080E710324848C0C938CAB18C9D45345692E
      FAA3F4EC3B511ABF8C7AA6B7A7FF002FB8560C86603E76058B904CC416326002
      DB644C5768A86A1AA5AE6A334004A12078D1F587A25A54ABFFD9}
  end
  object CalConst: TButton
    Left = 354
    Top = 109
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
    Left = 101
    Top = 176
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
    Left = 132
    Top = 176
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
    Left = 163
    Top = 176
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
    Left = 194
    Top = 176
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
    Left = 225
    Top = 176
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
    Left = 256
    Top = 176
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
    Left = 287
    Top = 176
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
    Left = 318
    Top = 176
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
    Left = 349
    Top = 176
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
    Left = 380
    Top = 176
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
    Top = 232
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
    Top = 273
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
    Left = 478
    Top = 58
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
    Top = 239
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
    Top = 239
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
    Top = 239
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
    Left = 88
    Top = 108
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
    Top = 306
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
    Top = 325
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
    Top = 346
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
    Top = 368
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
    Top = 306
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
    Top = 325
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
    Top = 346
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
    Top = 368
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
    Top = 57
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
    Top = 49
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
    Visible = False
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 21
    Top = 72
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
    Visible = False
    OnClick = RadioButton2Click
  end
  object Ready: TBitBtn
    Left = 277
    Top = 0
    Width = 154
    Height = 33
    Caption = '&Ready to PATCH '
    DragCursor = crArrow
    Font.Charset = ANSI_CHARSET
    Font.Color = clTeal
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 30
    WordWrap = True
    OnClick = ReadyClick
    OnMouseEnter = ReadyMouseEnter
    Kind = bkAll
  end
  object BitBtn1: TBitBtn
    Left = 443
    Top = 10
    Width = 64
    Height = 25
    Caption = '&Exit'
    TabOrder = 31
    OnMouseEnter = BitBtn1MouseEnter
    Kind = bkClose
  end
  object hkClipboardMonitor1: ThkClipboardMonitor
    OnChange = hkClipboardMonitor1Change
    Left = 40
    Top = 343
  end
end
