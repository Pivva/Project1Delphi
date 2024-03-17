object form_relatorio: Tform_relatorio
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 282
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object pnl_fundo: TPanel
    Left = 0
    Top = 0
    Width = 474
    Height = 282
    Hint = 'Tipo do Relat'#243'rio'
    Align = alClient
    BevelKind = bkFlat
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 640
    ExplicitHeight = 480
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 228
      Height = 25
      Caption = 'GERA'#199#195'O DE RELAT'#211'RIOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 119
      Top = 58
      Width = 41
      Height = 17
      Caption = 'Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 225
      Top = 58
      Width = 34
      Height = 17
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 17
      Top = 58
      Width = 60
      Height = 17
      Caption = 'Intervalo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 92
      Width = 82
      Height = 15
      Caption = 'C'#243'digo Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 17
      Top = 127
      Width = 82
      Height = 15
      Caption = 'C'#243'digo Cidade:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 17
      Top = 164
      Width = 63
      Height = 15
      Caption = 'Estado (UF):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn1: TBitBtn
      Left = 119
      Top = 222
      Width = 100
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 225
      Top = 223
      Width = 100
      Height = 25
      Caption = 'Voltar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object dbe_data_inicio: TMaskEdit
      Tag = 5
      Left = 119
      Top = 89
      Width = 100
      Height = 23
      Hint = 'C'#243'digo Inicial'
      TabOrder = 2
      Text = ''
    end
    object dbe_data_final: TMaskEdit
      Tag = 5
      Left = 225
      Top = 89
      Width = 100
      Height = 23
      Hint = 'C'#243'digo Final'
      TabOrder = 3
      Text = ''
    end
  end
  object MaskEdit1: TMaskEdit
    Tag = 5
    Left = 121
    Top = 127
    Width = 100
    Height = 23
    Hint = 'C'#243'digo Inicial'
    TabOrder = 1
    Text = ''
  end
  object MaskEdit2: TMaskEdit
    Tag = 5
    Left = 227
    Top = 127
    Width = 100
    Height = 23
    Hint = 'C'#243'digo Final'
    TabOrder = 2
    Text = ''
  end
  object MaskEdit3: TMaskEdit
    Tag = 5
    Left = 121
    Top = 163
    Width = 100
    Height = 23
    Hint = 'C'#243'digo Inicial'
    TabOrder = 3
    Text = ''
  end
  object MaskEdit4: TMaskEdit
    Tag = 5
    Left = 227
    Top = 163
    Width = 100
    Height = 23
    Hint = 'C'#243'digo Final'
    TabOrder = 4
    Text = ''
  end
  object qryconsulta: TFDQuery
    Active = True
    Connection = Conexao_consulta
    SQL.Strings = (
      'SELECT cl.id_Cliente, cl.NM_Cliente, '
      
        '       CONCAT(c.ID_Cidade, '#39' - '#39', c.NM_Cidade) AS ID_Nome_Cidade' +
        ','
      '       c.ID_UF, '
      
        '       CONCAT(cl.Endereco, '#39', '#39', cl.Bairro, '#39', '#39', cl.Complemento' +
        ') AS Endereco_Completo,'
      '       cl.Telefone, cl.Email'
      'FROM clientes cl'
      'INNER JOIN cidades c ON cl.NM_Cidade = c.NM_Cidade;'
      '')
    Left = 272
    Top = 96
    object qryconsultaid_Cliente: TFDAutoIncField
      FieldName = 'id_Cliente'
      Origin = 'id_Cliente'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qryconsultaNM_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NM_Cliente'
      Origin = 'NM_Cliente'
      Size = 30
    end
    object qryconsultaID_Nome_Cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Nome_Cidade'
      Origin = 'ID_Nome_Cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object qryconsultaID_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_UF'
      Origin = 'ID_UF'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object qryconsultaEndereco_Completo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Endereco_Completo'
      Origin = 'Endereco_Completo'
      ProviderFlags = []
      ReadOnly = True
      Size = 154
    end
    object qryconsultaTelefone: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'Telefone'
      Origin = 'Telefone'
    end
    object qryconsultaEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      Required = True
      Size = 50
    end
  end
  object Conexao_consulta: TFDConnection
    Params.Strings = (
      'Database=cadastro'
      'User_Name=root'
      'Password=123456'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 272
    Top = 32
  end
  object DsConsulta: TDataSource
    DataSet = qryconsulta
    Left = 376
    Top = 160
  end
  object DBConsulta: TppDBPipeline
    DataSource = DsConsulta
    UserName = 'DBConsulta'
    Left = 376
    Top = 96
    object DBConsultappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'id_Cliente'
      FieldName = 'id_Cliente'
      FieldLength = 0
      DataType = dtLongint
      DisplayWidth = 0
      Position = 0
    end
    object DBConsultappField2: TppField
      FieldAlias = 'NM_Cliente'
      FieldName = 'NM_Cliente'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object DBConsultappField3: TppField
      FieldAlias = 'ID_Nome_Cidade'
      FieldName = 'ID_Nome_Cidade'
      FieldLength = 44
      DisplayWidth = 44
      Position = 2
    end
    object DBConsultappField4: TppField
      FieldAlias = 'ID_UF'
      FieldName = 'ID_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object DBConsultappField5: TppField
      FieldAlias = 'Endereco_Completo'
      FieldName = 'Endereco_Completo'
      FieldLength = 154
      DisplayWidth = 154
      Position = 4
    end
    object DBConsultappField6: TppField
      FieldAlias = 'Telefone'
      FieldName = 'Telefone'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 5
    end
    object DBConsultappField7: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
  end
  object ppDBConsulta: TppReport
    AutoStop = False
    DataPipeline = DBConsulta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta (8.5" x 11")'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 
      'C:\Users\felipe.piva\Desktop\Teste Dev Junior Delphi_SQL\Relator' +
      'ioClientes.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectURI = 'http://localhost'
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.AppName = 'ReportBuilder'
    RTFSettings.Author = 'ReportBuilder'
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -17
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    RTFSettings.Title = 'Report'
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.AuthStorage = [oasAccessToken, oasRefreshToken]
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectURI = 'http://localhost'
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 376
    Top = 32
    Version = '22.03'
    mmColumnWidth = 0
    DataPipelineName = 'DBConsulta'
    object ppHeaderBand1: TppHeaderBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 37571
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'RELAT'#211'RIO DE CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 63236
        mmTop = 8731
        mmWidth = 70114
        BandType = 0
        LayerName = Foreground
      end
      object ppVariable1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable1'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtDate
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 167482
        mmTop = 13494
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground
      end
      object ppVariable2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'Variable2'
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 13494
        mmWidth = 22754
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.600000023841857900
        mmHeight = 3969
        mmLeft = -6350
        mmTop = 27517
        mmWidth = 219869
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.600000023841857900
        mmHeight = 3969
        mmLeft = -6085
        mmTop = 33602
        mmWidth = 219869
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 29633
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 20373
        mmTop = 29633
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 138642
        mmTop = 29633
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'ESTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 167482
        mmTop = 29633
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'TELEFONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 185473
        mmTop = 29633
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Border.mmPadding = 0
        Picture.Data = {
          0954474946496D616765474946383761C800C800E6000004020484828444423C
          C4C2C464625CA4A2A4E4E2E424222474726C54524CD4D2CCB4B2AC949294F4F2
          EC3432341412146C6A647C7A748C8A844C4A4CCCCAC4ACAAA45C5A5CDCDADCBC
          BABCFCFAFC3C3A340C0A0CECEAEC2C2A2C9C9A9C1C1A1C444644646664747674
          545654D4D6D4B4B6B4F4F6F46C6E6C7C7E7C8C8E8CCCCECCACAEAC3C3E3C0406
          04848684444244C4C6C4646264A4A6A4E4E6E4242624747274545254D4D2D4B4
          B2B4949694F4F2F43436341416146C6A6C7C7A7C8C8A8C4C4E4CCCCACCACAAAC
          5C5E5CDCDEDCBCBEBCFCFEFC3C3A3C0C0E0CECEEEC2C2E2C9C9E9C1C1E1C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000002C00000000C800C800
          8604020484828444423CC4C2C464625CA4A2A4E4E2E424222474726C54524CD4
          D2CCB4B2AC949294F4F2EC3432341412146C6A647C7A748C8A844C4A4CCCCAC4
          ACAAA45C5A5CDCDADCBCBABCFCFAFC3C3A340C0A0CECEAEC2C2A2C9C9A9C1C1A
          1C444644646664747674545654D4D6D4B4B6B4F4F6F46C6E6C7C7E7C8C8E8CCC
          CECCACAEAC3C3E3C040604848684444244C4C6C4646264A4A6A4E4E6E4242624
          747274545254D4D2D4B4B2B4949694F4F2F43436341416146C6A6C7C7A7C8C8A
          8C4C4E4CCCCACCACAAAC5C5E5CDCDEDCBCBEBCFCFEFC3C3A3C0C0E0CECEEEC2C
          2E2C9C9E9C1C1E1C000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0007FF804682838485868788898A8B8C8D8E8F909192939495969798999A9B9C
          9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBC
          BDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDC
          DDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFC
          FDFEFF00030A1C48B0A0C18308132A5CC830830E1D3338CC9861E082C50B1325
          72D061220343513A385C2011044601063F7AC45869C18112972156C61091C303
          8E202A2E18E060E2A3A50C332E04C1C1E0C404074800285DCAB4A9D3164C8E58
          10B104C38D0B1C3CFA5C94810389224B44BCF8D0C2A9D9B36895B6E830028590
          2044FF746C2D94C14090153E267C48CBB7EFD916342C302871238956864982C8
          0881D4AFE3C74E1F807081E3825C84192EE008702429E4CFA0957E18C100C38C
          8219822CB1C024B46BD72D94D45861E070BF0C30528078F0BAF76B263196DCB8
          9DFBC506DFC85F23B1B1C480BE0B3F401C4F4EDD358F183238D89B5160C4F4EA
          E04333E951C4B6BB0C0342B40ECFDEF58E1F17E0CD6070A46CFBFBA01F582861
          1E5D90107BE12720680EFCA05D3A19C830C1770336E8180F2104810E072E7460
          9F8318FAD5021038F4F70D09220498E1887DB5E000031E7273410CBC91E8625F
          34B870E03703D8E0D98B38A2F581083372838174390689160F3C7633C0824226
          6916FF913D5E7381774A46D9140F3E5CE6E4102D4AA925004CA0780D073E64B9
          A5961D2C614D0639AC37E6962DBC3040353838B0E69C2DC4E09C3437D870E19A
          2C104104092928894400291A31400C4000E18195BFE8E0C28D73822048060544
          D9811089947094032E2421CC0A1DCCC994A4469850699423108188A60E70CA68
          2F06C4202A53134CBA84940FFCE0210647EDE04203C11420A6A8A452AA250B30
          1CC22AA79EFE120408B38E2A88A95AB640A8212500E180AFAFEA9201037BCE5A
          AB1119DC7AEC9B85F0DAEAAFBF906041B4D2927BEA632D6CB001122D84EB58BE
          48E01B6E0B2EF444080EDAFADAAC231938644247A9C830EC982DF0F0010F164C
          2B84FFC43C480C695348EC401506302CD143071BA7C5C30B54C18081078CE1BB
          D4041276C501071580D02A0A44CC3C73B783E870830C014010830F3258668A01
          21C02B42A183E06016124060D0ADA94AE8DB549B181CA2030E2078868407E5DA
          DCEA0EDBB65AB603211C624210271C6136D90EB010810A4C6B32809CD1D620B0
          224E37F5000A079BA0836183DCF0425A488460654849306C040728F0A0540844
          14F042D94AC00D374C86E82083DBDB6AC0020BA03B600106755F620203F00210
          C2057ECEA8031106F84984071C032E880E41E450830F38D426481134A035C165
          1C0491420F35E41044B31C0420B91218083144A220C0CDC20489261A41213A08
          E1F6FF0E2C5810800C6165EFD2092A8872C110ADF3F09203274C5A82D9AD1EC0
          540B43A86A84012ED09F5A6240374130A06400E041110461801330E8033EB880
          479E942F0F04850424F080FA4440010C8EE44E930AC2E57620801F80300318B0
          C00EC866A050C0006FAD534AB1E6651625AC401049F041C92CE03F13C090292C
          D81DEBCC02842070C0034A50CA094E23886CADEB6086E0C0095AC58214982703
          451841ABA2160A21584D5CD3A2A15362A01D4A15CF2C0CB84C0018048016F480
          81D07ADA1044A0A617484810EAF215B01011846DED00024DB2150BB695823D76
          227A318C57B974940306BEEB2C3B888F115430AC16A4401044D8415AF6F4811B
          3671FF53EC529B045A05024F1E22080468150486E389582572293344CB0ED005
          2AB4B460818208D5FE7C20080E3CD23139D08A130D868824D820731608E420A2
          B72D10E0B2132A38DC2B01302E6A9DC506773A605A7E70190B848B051E31010E
          CEE817DD19415D9C3264210CE047042C62092B74800C3E310001BEB258E632CB
          103C92011FF0E50407F241B81ED03E2378EE0592EB4B08EE44B075A97310B8A1
          E20F16C1B56D2DCA13184060B462699616D4AF5432188248474AD2212CE1323F
          60A31B9B950112B860023460635380C0CA6575EA10195841AB3450031CF8F4A7
          40DD8C005A9502286AA26FD3ACA61897F200174C2205FAE20103FC472E2208A1
          0620FF505353EC88C709902D9474C941D9C846D6B39135738454E64F64304D19
          DAEA2C3CB8A42452BAA41E60A0472DCDC1102CD41425E09255C43444065260B6
          CC19166E683D9B038ADA091DFCA0AD00E0A8537830D15205410898CDAC6637EB
          CDBF2841042B9020213820031B3185067FD5563AD546D8150E21022280AD6C63
          2B02DAC6B6043CB344125C0059A5C255AE33A801130EC084E11697B8C635EEC3
          9C12981F94E0842A08C18D50DB5587E294B00E10C0122662008A4CC4BBDFA548
          03521789DD42169F67D9002F8D3003598567033B088E248D7003202C85BA46B0
          A9512725836D09609EAD70EC7927B5D4A5A4AD5435C0CF0786501E723120A1F8
          052CFF580981452A36B215C66AAB6FCF328203FDE08BC969810DEE5884232825
          C2AA9D30214810BAF5B602A9F77CEB595870C70268953D0F90EB05EC0B001A57
          9759C514DB10F6B60A0CC8145E92754A07001C8409F0E56420BEB1534480C911
          2885A69FFCEA437B86806D0181028BF04A6E31514F0D87112DEAF5880E02A0D1
          36FA00060190728C72D0E616A0401022544A0CFCA75F44644008AD3AC2B510E1
          B91E4CF5132A60415B8348AE7C9A0504056DF217474082C7F5604F47C04012C0
          F4451A60CA0842D06591CE59301513820840201B109E698801A8100405187325
          5C39CD0F4CAA0847560A65C3890169EE2F42E18CE35294D02C22F820A14C4142
          0D4EFF6302144C279882B881161D00C84498C003630B01BA08A18312C4806C20
          E890271039CD0DF84F8A0945C28D333D2918F8800549E101083C4004ADB86058
          1BD01BB966B08218D0A02C4800C1A18D50625DE360100D1802D958909DDD8150
          10170801D93430020F14C6A030F8410276DA424F2408C4743213B90C30801260
          600081DA1F1092258819DCA008251800092E736D7B32854802CB001182808112
          14E1E2F4B5C0745EC07272054003649BC0107AD0831004802E1418C2D85E6081
          189C2004361864DC50305F4F0C4097AF3C025507E6940D4C0007442EC4056A60
          73BF5960DB821DC0086EB450420461049A33DB8129AC821368007F80074273C8
          4B89FF0BFC32916D6AF8A440D4D1030C61053DD2C1007CB083E5EEAF0331782E
          B7072002257CA705D086A80A5020369700A1003835400944A0BE6DB180003950
          C07E3B6182944FB3051F7000084230842374C0F200D8001394F082A5BFA00307
          6873D987FF8210F4E098C9EF6BD6E8221218AC60052420C2EC271514152C6005
          30D0C9F63D5104B043D65E90417F6FECF5450B54DADA849F56C2524104F74276
          4C48B8F03128A5FCFBE3880570670CF5E57FD5E202B2060CAB03720438223B30
          7DCAF02C0B9824D69276FBA74D11982300E80C867781383281CF2004E4C48119
          32025DC70C3A2050229821072072D0A0023690820EB20128107FC40082302820
          2D40FF82D490013F007C37E81B0D680D52946B3FF81BFA570DEEA28045F8183C
          E00234980C3000044AB8844F56036A350DBD36855468160F0050DD50022FA085
          5BB8143CB06CDFA0294438867EE385E0000373A7867CC10422C044E170032180
          6C70D857297080DA60003ED07670D8020C4781E1A00339C00262788148300401
          680E456001FD27823480020F970E44100049448539280484880E39C52245A804
          5C370F06708869D8564C300468670F30E00226168150D31CF980429DE77F50C3
          0005B40FDDF66E8998243C000439908BFE9004B9615AD1420321500037F084F3
          60023750002750356322192E8001F596103330001E3004D22824487004272003
          2AA0DB03CCB80F3AA78D12E783F7F1014080022B100433508E00610206A0022B
          E0020A1789BDC1032C70021E500424901573A108B3F3724B800221C0024CD08B
          4DB1014AB07B3FB00203700333D0890399085D61002431002B9003CB23525AA4
          042239922C2052439302FF380039610084739199E010494011B5834134490257
          610038C9018DE3923CD9933EF9934019944239944459944679944899944AB994
          4CD9944EF9945019955239955459955679955899955AB9955CD9955EF9956019
          966239966459966679966899966AB9966CD9966EF99670199772A9108100003B}
        mmHeight = 8996
        mmLeft = 2117
        mmTop = 8731
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 53181
        mmTop = 29633
        mmWidth = 16405
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'id_Cliente'
        DataPipeline = DBConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBConsulta'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 11906
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'NM_Cliente'
        DataPipeline = DBConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBConsulta'
        mmHeight = 3440
        mmLeft = 20373
        mmTop = 0
        mmWidth = 21167
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'ID_UF'
        DataPipeline = DBConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBConsulta'
        mmHeight = 3440
        mmLeft = 167482
        mmTop = 0
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Telefone'
        DataPipeline = DBConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBConsulta'
        mmHeight = 3440
        mmLeft = 185473
        mmTop = 0
        mmWidth = 64558
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'ID_Nome_Cidade'
        DataPipeline = DBConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBConsulta'
        mmHeight = 3440
        mmLeft = 138642
        mmTop = 0
        mmWidth = 187325
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Endereco_Completo'
        DataPipeline = DBConsulta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBConsulta'
        mmHeight = 3440
        mmLeft = 53181
        mmTop = 0
        mmWidth = 652993
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16669
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'www.teste.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 91811
        mmTop = 4498
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Av. Presidente Vargas, 1724 - Bastos - SP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 76994
        mmTop = 7938
        mmWidth = 54769
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.600000023841857900
        mmHeight = 3969
        mmLeft = -6350
        mmTop = 265
        mmWidth = 219869
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
