object frm_PesqCidade: Tfrm_PesqCidade
  Left = 0
  Top = 0
  Caption = 'Pesquisa de Cidades'
  ClientHeight = 379
  ClientWidth = 615
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 413
    Height = 25
    Caption = 'Digite o nome da cidade que voc'#234' deseja pesquisar:'
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
  object BitBtn1: TBitBtn
    Left = 215
    Top = 47
    Width = 100
    Height = 25
    Caption = 'Limpar'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 321
    Top = 47
    Width = 100
    Height = 25
    Caption = 'Voltar'
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 88
    Width = 605
    Height = 265
    DataSource = DsPesquisaCidade
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object qryPesquisaCidade: TFDQuery
    Active = True
    Connection = frm_cidades.Conexao
    SQL.Strings = (
      'SELECT *'
      'FROM cadastro.cidades;')
    Left = 264
    Top = 261
    object qryPesquisaCidadeID_Cidade: TFDAutoIncField
      FieldName = 'ID_Cidade'
      Origin = 'ID_Cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryPesquisaCidadeNM_Cidade: TStringField
      FieldName = 'NM_Cidade'
      Origin = 'NM_Cidade'
      Required = True
      Size = 30
    end
    object qryPesquisaCidadeID_UF: TStringField
      FieldName = 'ID_UF'
      Origin = 'ID_UF'
      Required = True
      Size = 2
    end
    object qryPesquisaCidadeCEP_Inicial: TStringField
      FieldName = 'CEP_Inicial'
      Origin = 'CEP_Inicial'
      Required = True
      Size = 9
    end
    object qryPesquisaCidadeCEP_Final: TStringField
      FieldName = 'CEP_Final'
      Origin = 'CEP_Final'
      Required = True
      Size = 9
    end
  end
  object DsPesquisaCidade: TDataSource
    DataSet = qryPesquisaCidade
    Left = 264
    Top = 320
  end
end
