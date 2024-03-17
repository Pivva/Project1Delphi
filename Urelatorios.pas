unit Urelatorios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, ppComm, ppRelatv, ppDB, ppDBPipe, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, ppBands, ppCache, ppClass, ppDesignLayer,
  ppParameter, ppProd, ppReport, ppPrnabl, ppCtrls, ppVar, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.GIFImg;

type
  Tform_relatorio = class(TForm)
    pnl_fundo: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbe_data_inicio: TMaskEdit;
    Label2: TLabel;
    dbe_data_final: TMaskEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Label7: TLabel;
    qryconsulta: TFDQuery;
    Conexao_consulta: TFDConnection;
    DsConsulta: TDataSource;
    DBConsulta: TppDBPipeline;
    ppDBConsulta: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppVariable1: TppVariable;
    ppVariable2: TppVariable;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel6: TppLabel;
    ppLabel10: TppLabel;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppLine3: TppLine;
    qryconsultaid_Cliente: TFDAutoIncField;
    qryconsultaNM_Cliente: TStringField;
    qryconsultaID_Nome_Cidade: TStringField;
    qryconsultaID_UF: TStringField;
    qryconsultaEndereco_Completo: TStringField;
    qryconsultaTelefone: TLargeintField;
    qryconsultaEmail: TStringField;
    ppDBText3: TppDBText;
    ppDBText6: TppDBText;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;
    procedure inativacampos;
  public
    { Public declarations }
  end;

var
  form_relatorio: Tform_relatorio;

implementation

{$R *.dfm}

uses Projeto1;

procedure Tform_relatorio.BitBtn1Click(Sender: TObject);
var
  Caminho: String;
begin
  Caminho := 'C:\Users\felipe.piva\Desktop\Teste Dev Junior Delphi_SQL\RelatorioClientes.rep';
  ppDBconsulta.FileDevice.FileName := Caminho;
  //ppDBconsulta.Preview;
  ShowMessage('Não foi possível emitir o relatório'); // Foi adiciona esta mensagem pois não é possível acessar o relatório devido a restrições de permissão do sistema operacional ao acessar caminho;
end;

procedure Tform_relatorio.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure Tform_relatorio.inativacampos;
begin
  dbe_data_inicio.Enabled := False;
end;

procedure Tform_relatorio.WMSysCommand(var Msg: TWMSysCommand);
begin
if Msg.CmdType = SC_MAXIMIZE then
  begin
    Exit;
  end;
  inherited;
end;
end.
