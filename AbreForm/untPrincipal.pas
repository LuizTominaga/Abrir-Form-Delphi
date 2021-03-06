unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxImage,
  cxGridCustomTableView, cxGridCardView, cxGridDBCardView, Datasnap.DBClient,
  cxGridCustomView, cxGridCustomLayoutView, cxClasses, cxGridLevel, cxGrid,
  cxMemo;

type
  TfrmPrincipal = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBCardView1: TcxGridDBCardView;
    dsMenu: TDataSource;
    cxGrid1DBCardView1codigo: TcxGridDBCardViewRow;
    cxGrid1DBCardView1descricao: TcxGridDBCardViewRow;
    cxGrid1DBCardView1imagem: TcxGridDBCardViewRow;
    cxGrid1DBCardView1formulario: TcxGridDBCardViewRow;
    cdsMenu: TClientDataSet;
    cdsMenuCODIGO: TIntegerField;
    cdsMenuDESCRICAO: TStringField;
    cdsMenuIMAGEM: TBlobField;
    cdsMenuFORMULARIO: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyleGrid: TcxStyle;
    procedure cxGrid1DBCardView1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirFormulario(ps_form: String);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses untCliente, untProduto;

procedure TfrmPrincipal.AbrirFormulario(ps_form: String);
var
  Form: TForm;
begin
  try
    try
      Application.CreateForm(TFormClass(FindClass(ps_form)), Form);
      Form.ShowModal;
    finally
      FreeAndNil(Form);
    end;
  except
    ShowMessage('Ocorreu um erro ao abrir o cadastro!');
  end;
end;

procedure TfrmPrincipal.cxGrid1DBCardView1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  AbrirFormulario(cdsMenuFORMULARIO.AsString);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  ls_Path : String;
begin
  ls_Path := ExtractFilePath(Application.ExeName);
  cdsMenu.CreateDataSet;
  cdsMenu.EmptyDataSet;

  cdsMenu.Append;
  cdsMenuCODIGO.AsInteger := 1;
  cdsMenuIMAGEM.LoadFromFile(ls_Path + 'Cliente.jpg');
  cdsMenuFORMULARIO.AsString := 'TfrmCliente';
  cdsMenuDESCRICAO.AsString := 'Cadastro de cliente';
  cdsMenu.Post;

  cdsMenu.Append;
  cdsMenuCODIGO.AsInteger := 2;
  cdsMenuIMAGEM.LoadFromFile(ls_Path + 'Produto.jpg');
  cdsMenuFORMULARIO.AsString := 'TfrmProduto';
  cdsMenuDESCRICAO.AsString := 'Cadastro de Produto';
  cdsMenu.Post;

  cdsMenu.Append;
  cdsMenuCODIGO.AsInteger := 3;
  cdsMenuIMAGEM.LoadFromFile(ls_Path + 'Receber.jpg');
  cdsMenuFORMULARIO.AsString := 'TfrmReceber';
  cdsMenuDESCRICAO.AsString := 'Contas a Receber';
  cdsMenu.Post;
end;

end.
