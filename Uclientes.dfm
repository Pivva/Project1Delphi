object frm_clientes: Tfrm_clientes
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 565
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 60
    Width = 39
    Height = 15
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 112
    Top = 60
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Label3: TLabel
    Left = 443
    Top = 60
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 8
    Top = 124
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object Label5: TLabel
    Left = 112
    Top = 124
    Width = 34
    Height = 15
    Caption = 'E-mail'
  end
  object Label6: TLabel
    Left = 443
    Top = 124
    Width = 21
    Height = 15
    Caption = 'CEP'
  end
  object Label7: TLabel
    Left = 8
    Top = 188
    Width = 49
    Height = 15
    Caption = 'Endere'#231'o'
  end
  object Label8: TLabel
    Left = 228
    Top = 188
    Width = 31
    Height = 15
    Caption = 'Bairro'
  end
  object Label9: TLabel
    Left = 443
    Top = 188
    Width = 77
    Height = 15
    Caption = 'Complemento'
  end
  object Label10: TLabel
    Left = 8
    Top = 244
    Width = 37
    Height = 15
    Caption = 'Cidade'
  end
  object PesquisarClientes: TSpeedButton
    Left = 8
    Top = 307
    Width = 106
    Height = 23
    Caption = 'Pesquisar Clientes'
    OnClick = PesquisarClientesClick
  end
  object Page_Abas_Clientes: TPageControl
    Left = 0
    Top = 0
    Width = 761
    Height = 50
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 757
  end
  object BtnIncluir: TButton
    Left = 8
    Top = 16
    Width = 74
    Height = 23
    Caption = 'Incluir'
    TabOrder = 1
    OnClick = BtnIncluirClick
  end
  object BtnAlterar: TButton
    Left = 111
    Top = 16
    Width = 74
    Height = 23
    Caption = 'Alterar'
    TabOrder = 2
    OnClick = BtnAlterarClick
  end
  object BtnGravar: TButton
    Left = 8
    Top = 16
    Width = 74
    Height = 23
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = BtnGravarClick
  end
  object BtnCancelar: TButton
    Left = 112
    Top = 16
    Width = 74
    Height = 23
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = BtnCancelarClick
  end
  object BtnExcluir: TButton
    Left = 209
    Top = 16
    Width = 74
    Height = 23
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = BtnExcluirClick
  end
  object EdtCodigo: TDBEdit
    Left = 8
    Top = 81
    Width = 88
    Height = 23
    DataField = 'id_Cliente'
    DataSource = DsClientes
    TabOrder = 6
  end
  object EdtNome: TDBEdit
    Left = 111
    Top = 81
    Width = 316
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NM_Cliente'
    DataSource = DsClientes
    TabOrder = 7
  end
  object EdtCPF: TDBEdit
    Left = 443
    Top = 81
    Width = 140
    Height = 23
    DataField = 'CGC_CPF_Cliente'
    DataSource = DsClientes
    TabOrder = 8
  end
  object EdtTelefone: TDBEdit
    Left = 8
    Top = 145
    Width = 88
    Height = 23
    DataField = 'Telefone'
    DataSource = DsClientes
    TabOrder = 9
  end
  object EdtEmail: TDBEdit
    Left = 111
    Top = 145
    Width = 316
    Height = 23
    CharCase = ecLowerCase
    DataField = 'Email'
    DataSource = DsClientes
    TabOrder = 10
  end
  object EdtCEP: TDBEdit
    Left = 443
    Top = 145
    Width = 140
    Height = 23
    DataField = 'CEP'
    DataSource = DsClientes
    TabOrder = 11
  end
  object EdtEndereco: TDBEdit
    Left = 8
    Top = 209
    Width = 205
    Height = 23
    CharCase = ecUpperCase
    DataField = 'Endereco'
    DataSource = DsClientes
    TabOrder = 12
  end
  object EdtBairro: TDBEdit
    Left = 228
    Top = 209
    Width = 199
    Height = 23
    CharCase = ecUpperCase
    DataField = 'Bairro'
    DataSource = DsClientes
    TabOrder = 13
  end
  object EdtComplemento: TDBEdit
    Left = 443
    Top = 209
    Width = 140
    Height = 23
    CharCase = ecUpperCase
    DataField = 'Complemento'
    DataSource = DsClientes
    TabOrder = 14
  end
  object EdtCidade: TDBEdit
    Left = 8
    Top = 265
    Width = 203
    Height = 23
    CharCase = ecUpperCase
    DataField = 'NM_Cidade'
    DataSource = DsClientes
    TabOrder = 15
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 345
    Width = 761
    Height = 220
    Align = alBottom
    DataSource = DsClientes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 16
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=cadastro'
      'User_Name=root'
      'Password=123456'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 363
    Top = 280
  end
  object QryClientes: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM cadastro.clientes;')
    Left = 444
    Top = 284
    object QryClientesid_Cliente: TFDAutoIncField
      FieldName = 'id_Cliente'
      Origin = 'id_Cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object QryClientesNM_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NM_Cliente'
      Origin = 'NM_Cliente'
      Size = 30
    end
    object QryClientesCGC_CPF_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CGC_CPF_Cliente'
      Origin = 'CGC_CPF_Cliente'
      FixedChar = True
      Size = 11
    end
    object QryClientesTelefone: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'Telefone'
      Origin = 'Telefone'
    end
    object QryClientesEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      Required = True
      Size = 50
    end
    object QryClientesEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Required = True
      Size = 50
    end
    object QryClientesBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Required = True
      Size = 50
    end
    object QryClientesComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Required = True
      Size = 50
    end
    object QryClientesCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object QryClientesNM_Cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NM_Cidade'
      Origin = 'NM_Cidade'
      Size = 30
    end
  end
  object DsClientes: TDataSource
    DataSet = QryClientes
    Left = 520
    Top = 280
  end
end
