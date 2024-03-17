unit UpesqCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_PesqCidade = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid2: TDBGrid;
    qryPesquisaCidade: TFDQuery;
    DsPesquisaCidade: TDataSource;
    qryPesquisaCidadeID_Cidade: TFDAutoIncField;
    qryPesquisaCidadeNM_Cidade: TStringField;
    qryPesquisaCidadeID_UF: TStringField;
    qryPesquisaCidadeCEP_Inicial: TStringField;
    qryPesquisaCidadeCEP_Final: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;
  public
    { Public declarations }
  end;

var
  frm_PesqCidade: Tfrm_PesqCidade;

implementation

{$R *.dfm}

uses Ucidades;

procedure Tfrm_PesqCidade.BitBtn1Click(Sender: TObject);
begin
  edit1.Clear;
  edit1.SetFocus;
end;

procedure Tfrm_PesqCidade.BitBtn2Click(Sender: TObject);
begin
  frm_cidades.qrytabelas.Locate('NM_Cidade', qryPesquisaCidadeNM_Cidade.Value, []);
  frm_cidades.Show;
  Close;
end;

procedure Tfrm_PesqCidade.Edit1Change(Sender: TObject);
begin
  qryPesquisaCidade.SQL.Clear;
  qryPesquisaCidade.SQL.Text := 'SELECT * FROM cadastro.cidades WHERE NM_Cidade LIKE :Parametro';
  qryPesquisaCidade.ParamByName('Parametro').AsString := '%' + Edit1.Text + '%';
  qryPesquisaCidade.Open;
end;


procedure Tfrm_PesqCidade.WMSysCommand(var Msg: TWMSysCommand);
begin
if Msg.CmdType = SC_MAXIMIZE then
  begin
    Exit;
  end;
  inherited;
end;

end.

