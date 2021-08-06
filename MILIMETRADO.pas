unit MILIMETRADO;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Mask, ExtCtrls, Buttons;

type
  TForm12 = class(TForm)
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
    Label11: TLabel;
    EditCHAVEMIL: TDBEdit;
    CheckBoxDIGITALIZADO: TDBCheckBox;
    EditCODIGO: TDBEdit;
    EditFOLHA: TDBEdit;
    EditTUBO: TDBEdit;
    EditORD: TDBEdit;
    EditCLASSE: TDBEdit;
    EditLOCALPUBLICO: TDBEdit;
    EditASSUNTO: TDBEdit;
    EditDESCRICAO: TDBEdit;
    EditCHAVECAD: TDBEdit;
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
  Form12: TForm12;

implementation

{$R *.DFM}

uses Unit1;

procedure TForm12.FormResize(Sender: TObject);
begin
    Form12.Height := 424;
    Form12.Width := 689;
end;

procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action := cafree;// libera memória
end;

procedure TForm12.FormCreate(Sender: TObject);
begin
     Screen.Cursor := CrDefault; // Coloca o cursor em modo normal
end;

procedure TForm12.BitBtn1Click(Sender: TObject);
begin
       close;  // Fecha a janela
end;

end.
