unit UpesqClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  Tfrm_PesqCliente = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    DBGrid2: TDBGrid;
    qryPesquisaCliente: TFDQuery;
    DsPesquisaCliente: TDataSource;
    qryPesquisaClienteid_Cliente: TFDAutoIncField;
    qryPesquisaClienteNM_Cliente: TStringField;
    qryPesquisaClienteCGC_CPF_Cliente: TStringField;
    qryPesquisaClienteTelefone: TLargeintField;
    qryPesquisaClienteEmail: TStringField;
    qryPesquisaClienteEndereco: TStringField;
    qryPesquisaClienteBairro: TStringField;
    qryPesquisaClienteComplemento: TStringField;
    qryPesquisaClienteCEP: TStringField;
    qryPesquisaClienteNM_Cidade: TStringField;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    procedure WMSysCommand(var Msg: TWMSysCommand); message WM_SYSCOMMAND;
  public
    { Public declarations }
  end;

var
  frm_PesqCliente: Tfrm_PesqCliente;

implementation

{$R *.dfm}

uses Uclientes;

procedure Tfrm_PesqCliente.BitBtn1Click(Sender: TObject);
begin
  edit1.Clear;
  edit1.SetFocus;
end;

procedure Tfrm_PesqCliente.BitBtn2Click(Sender: TObject);
begin
  frm_clientes.QryClientes.Locate('NM_Cliente', qryPesquisaClienteNM_Cliente.Value, []);
  frm_clientes.Show;
  Close;
end;

procedure Tfrm_PesqCliente.Edit1Change(Sender: TObject);
begin
  qryPesquisaCliente.SQL.Clear;
  qryPesquisaCliente.SQL.Text := 'SELECT * FROM cadastro.clientes WHERE NM_Cliente LIKE :Parametro';
  qryPesquisaCliente.ParamByName('Parametro').AsString := '%' + Edit1.Text + '%';
  qryPesquisaCliente.Open;
end;

procedure Tfrm_PesqCliente.WMSysCommand(var Msg: TWMSysCommand);
begin
if Msg.CmdType = SC_MAXIMIZE then
  begin
    Exit;
  end;
  inherited;
end;

end.
