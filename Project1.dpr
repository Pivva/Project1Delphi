program Project1;

uses
  Vcl.Forms,
  Projeto1 in 'Projeto1.pas' {Form1},
  Ucidades in 'Ucidades.pas' {frm_cidades},
  Uclientes in 'Uclientes.pas' {frm_clientes},
  UpesqClientes in 'UpesqClientes.pas' {frm_PesqCliente},
  Urelatorios in 'Urelatorios.pas' {form_relatorio},
  UpesqCidades in 'UpesqCidades.pas' {frm_PesqCidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_PesqCidade, frm_PesqCidade);
  Application.CreateForm(Tfrm_PesqCidade, frm_PesqCidade);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_PesqCidade, frm_PesqCidade);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_PesqCidade, frm_PesqCidade);
  Application.CreateForm(Tfrm_PesqCliente, frm_PesqCliente);
  Application.CreateForm(Tfrm_PesqCidade, frm_PesqCidade);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_PesqCliente, frm_PesqCliente);
  Application.CreateForm(Tfrm_PesqCidade, frm_PesqCidade);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_cidades, frm_cidades);
  Application.CreateForm(Tfrm_clientes, frm_clientes);
  Application.CreateForm(Tfrm_PesqCidade, frm_PesqCidade);
  Application.CreateForm(Tfrm_PesqCliente, frm_PesqCliente);
  Application.CreateForm(Tform_relatorio, form_relatorio);
  Application.CreateForm(Tfrm_PesqCidade, frm_PesqCidade);
  Application.Run;
end.