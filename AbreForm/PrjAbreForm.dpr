program PrjAbreForm;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  untCliente in 'untCliente.pas' {frmCliente},
  untProduto in 'untProduto.pas' {frmProduto},
  untReceber in 'untReceber.pas' {frmReceber};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
