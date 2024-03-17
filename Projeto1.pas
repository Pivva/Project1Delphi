unit Projeto1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, System.Actions,
  Vcl.ActnList, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    pnl_principal: TPanel;
    pnl_menu_lateral: TPanel;
    Cidades: TSpeedButton;
    Clientes: TSpeedButton;
    Menu: TSpeedButton;
    pnl_barra: TPanel;
    pnl_mensagem: TPanel;
    mensagem: TLabel;
    Relatórios: TSpeedButton;
    procedure MenuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CidadesClick(Sender: TObject);
    procedure ClientesClick(Sender: TObject);
    procedure RelatóriosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  bExpandido: Boolean;

implementation

{$R *.dfm}

uses Ucidades, Uclientes, Urelatorios;

procedure TForm1.CidadesClick(Sender: TObject);
var cidades : Tfrm_cidades;
begin
         cidades := Tfrm_cidades.Create(self);
         cidades.ShowModal;
end;

procedure TForm1.ClientesClick(Sender: TObject);
var cidades : Tfrm_clientes;
begin
         cidades := Tfrm_clientes.Create(self);
         cidades.ShowModal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
     pnl_menu_lateral.Width := 67
end;

procedure TForm1.MenuClick(Sender: TObject);
begin
  if bExpandido then
    pnl_menu_lateral.Width := 67
  else
    pnl_menu_lateral.Width := 160;

  bExpandido := not bExpandido;
end;

procedure TForm1.RelatóriosClick(Sender: TObject);
var relatorios : Tform_relatorio;
begin
 relatorios := Tform_relatorio.Create(self);
 relatorios.ShowModal;
end;

end.


