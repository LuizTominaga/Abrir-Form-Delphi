unit untCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TfrmCliente = class(TForm)
    Panel1: TPanel;
    imgBody: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

{$R *.dfm}



Initialization
  RegisterClass(TfrmCliente);
end.

