unit Unit10;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Mask, ExtCtrls, Buttons;

type
  TForm10 = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditCHAVEORIGINAIS: TDBEdit;
    Label2: TLabel;
    EditCODIGO: TDBEdit;
    Label3: TLabel;
    EditORIGEM: TDBEdit;
    Label4: TLabel;
    EditFOLHA: TDBEdit;
    Label5: TLabel;
    EditLOCALIZACAO: TDBEdit;
    Label6: TLabel;
    EditNUMERO: TDBEdit;
    Label7: TLabel;
    EditORD: TDBEdit;
    Label8: TLabel;
    EditCLASSE: TDBEdit;
    Label9: TLabel;
    EditDESCRICAO: TDBEdit;
    Label10: TLabel;
    CheckBoxDIGITALIZADO: TDBCheckBox;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.DFM}

uses Unit1;

procedure TForm10.FormResize(Sender: TObject);
begin
    Form10.Height := 392;
    Form10.Width := 639;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action := cafree;// libera memória
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
     Screen.Cursor := CrDefault; // Coloca o cursor em modo normal
end;

procedure TForm10.BitBtn1Click(Sender: TObject);
begin
    close;  // Fecha a janela
end;

end.