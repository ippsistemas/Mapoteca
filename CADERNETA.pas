unit CADERNETA;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Mask, ExtCtrls, Buttons;

type
  TForm11 = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    DBNavigator: TDBNavigator;
    ScrollBox: TScrollBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EditCHAVECAD: TDBEdit;
    EditCODIGO: TDBEdit;
    EditSEQ: TDBEdit;
    EditCAIXA: TDBEdit;
    EditORD: TDBEdit;
    EditCLASSE: TDBEdit;
    EditLOCALPUBLICO: TDBEdit;
    EditASSUNTO: TDBEdit;
    EditDESCRICAO: TDBEdit;
    CheckBoxDIGITALIZADO: TDBCheckBox;
    BitBtn1: TBitBtn;
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
  Form11: TForm11;

implementation

{$R *.DFM}

uses Unit1;

procedure TForm11.FormResize(Sender: TObject);
begin
    Form11.Height := 424;
    Form11.Width := 689;
end;

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action := cafree;// libera memória
end;

procedure TForm11.FormCreate(Sender: TObject);
begin
     Screen.Cursor := CrDefault; // Coloca o cursor em modo normal
end;

procedure TForm11.BitBtn1Click(Sender: TObject);
begin
       close;  // Fecha a janela
end;

end.
