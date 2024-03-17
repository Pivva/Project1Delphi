object frm_cidades: Tfrm_cidades
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cidades'
  ClientHeight = 493
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label6: TLabel
    Left = 8
    Top = 56
    Width = 39
    Height = 15
    Caption = 'C'#243'digo'
  end
  object Label9: TLabel
    Left = 8
    Top = 120
    Width = 55
    Height = 15
    Caption = 'CEP Inicial'
  end
  object Label7: TLabel
    Left = 120
    Top = 56
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object Label10: TLabel
    Left = 120
    Top = 120
    Width = 49
    Height = 15
    Caption = 'CEP Final'
  end
  object Label8: TLabel
    Left = 347
    Top = 56
    Width = 35
    Height = 15
    Caption = 'Estado'
  end
  object PesquisarCidades: TSpeedButton
    Left = 8
    Top = 195
    Width = 106
    Height = 23
    Caption = 'Pesquisar Clientes'
    OnClick = PesquisarCidadesClick
  end
  object Page_cidades: TPageControl
    Left = 0
    Top = 0
    Width = 651
    Height = 50
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 647
  end
  object BtnIncluir: TButton
    Left = 8
    Top = 11
    Width = 74
    Height = 23
    Caption = 'Incluir'
    TabOrder = 1
    OnClick = BtnIncluirClick
  end
  object BtnAlterar: TButton
    Left = 108
    Top = 11
    Width = 74
    Height = 23
    Caption = 'Alterar'
    TabOrder = 2
    OnClick = BtnAlterarClick
  end
  object BtnGravar: TButton
    Left = 8
    Top = 11
    Width = 74
    Height = 23
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = BtnGravarClick
  end
  object BtnExcluir: TButton
    Left = 203
    Top = 11
    Width = 74
    Height = 23
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = BtnExcluirClick
  end
  object BtnCancelar: TButton
    Left = 108
    Top = 11
    Width = 74
    Height = 23
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BtnCancelarClick
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 224
    Width = 651
    Height = 269
    Align = alBottom
    DataSource = DsCidades
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object EdtCodigo: TDBEdit
    Left = 8
    Top = 77
    Width = 89
    Height = 23
    DataField = 'ID_Cidade'
    DataSource = DsCidades
    TabOrder = 7
  end
  object EdtCidade: TDBEdit
    Left = 120
    Top = 77
    Width = 204
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NM_Cidade'
    DataSource = DsCidades
    TabOrder = 8
  end
  object EdtCepInicial: TDBEdit
    Left = 8
    Top = 141
    Width = 89
    Height = 23
    DataField = 'CEP_Inicial'
    DataSource = DsCidades
    TabOrder = 9
  end
  object EdtEstado: TDBEdit
    Left = 347
    Top = 77
    Width = 70
    Height = 23
    CharCase = ecUpperCase
    DataField = 'ID_UF'
    DataSource = DsCidades
    TabOrder = 10
  end
  object EdtCepFinal: TDBEdit
    Left = 120
    Top = 141
    Width = 89
    Height = 23
    DataField = 'CEP_Final'
    DataSource = DsCidades
    TabOrder = 11
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=cadastro'
      'User_Name=root'
      'Password=123456'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 280
    Top = 120
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\felipe.piva\Desktop\Teste Dev Junior Delphi_SQL\libmysq' +
      'l.dll'
    Left = 384
    Top = 120
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 520
    Top = 120
  end
  object qrytabelas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT ID_Cidade, NM_Cidade, ID_UF, CEP_Inicial, CEP_Final'
      'FROM cadastro.cidades;')
    Left = 384
    Top = 184
    object qrytabelasID_Cidade: TFDAutoIncField
      FieldName = 'ID_Cidade'
      Origin = 'ID_Cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrytabelasNM_Cidade: TStringField
      FieldName = 'NM_Cidade'
      Origin = 'NM_Cidade'
      Required = True
      Size = 30
    end
    object qrytabelasID_UF: TStringField
      FieldName = 'ID_UF'
      Origin = 'ID_UF'
      Required = True
      Size = 2
    end
    object qrytabelasCEP_Inicial: TStringField
      FieldName = 'CEP_Inicial'
      Origin = 'CEP_Inicial'
      Required = True
      Size = 9
    end
    object qrytabelasCEP_Final: TStringField
      FieldName = 'CEP_Final'
      Origin = 'CEP_Final'
      Required = True
      Size = 9
    end
  end
  object DsCidades: TDataSource
    DataSet = qrytabelas
    Left = 280
    Top = 184
  end
end
