object frm_PesqCliente: Tfrm_PesqCliente
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Clientes'
  ClientHeight = 433
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 413
    Height = 25
    Caption = 'Digite o nome do cliente que voc'#234' deseja pesquisar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 8
    Top = 47
    Width = 185
    Height = 23
    TabOrder = 0
    OnChange = Edit1Change
  end
  object BitBtn2: TBitBtn
    Left = 321
    Top = 47
    Width = 100
    Height = 25
    Caption = 'Voltar'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn1: TBitBtn
    Left = 215
    Top = 47
    Width = 100
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 88
    Width = 605
    Height = 265
    DataSource = DsPesquisaCliente
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object qryPesquisaCliente: TFDQuery
    Active = True
    Connection = frm_clientes.Conexao
    SQL.Strings = (
      'SELECT *'
      'FROM cadastro.clientes;')
    Left = 264
    Top = 261
    object qryPesquisaClienteid_Cliente: TFDAutoIncField
      FieldName = 'id_Cliente'
      Origin = 'id_Cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPesquisaClienteNM_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NM_Cliente'
      Origin = 'NM_Cliente'
      Size = 30
    end
    object qryPesquisaClienteCGC_CPF_Cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CGC_CPF_Cliente'
      Origin = 'CGC_CPF_Cliente'
      FixedChar = True
      Size = 11
    end
    object qryPesquisaClienteTelefone: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'Telefone'
      Origin = 'Telefone'
    end
    object qryPesquisaClienteEmail: TStringField
      FieldName = 'Email'
      Origin = 'Email'
      Required = True
      Size = 50
    end
    object qryPesquisaClienteEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Required = True
      Size = 50
    end
    object qryPesquisaClienteBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Required = True
      Size = 50
    end
    object qryPesquisaClienteComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Required = True
      Size = 50
    end
    object qryPesquisaClienteCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 9
    end
    object qryPesquisaClienteNM_Cidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NM_Cidade'
      Origin = 'NM_Cidade'
      Size = 30
    end
  end
  object DsPesquisaCliente: TDataSource
    DataSet = qryPesquisaCliente
    Left = 264
    Top = 320
  end
end
