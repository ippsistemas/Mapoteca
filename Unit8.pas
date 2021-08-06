unit Unit8;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Mask, ExtCtrls, Grids, DBGrids, Buttons;

type
  TForm8 = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    EditCODIGO: TDBEdit;
    Label2: TLabel;
    EditASSUNTO: TDBEdit;
    DBNavigator: TDBNavigator;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.DFM}

uses Unit1;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin
     close;  // Fecha a janela
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      action := cafree;// libera mem�ria
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
      Screen.Cursor := CrDefault; // Coloca o cursor em modo normal
end;

procedure TForm8.FormResize(Sender: TObject);
begin
      form8.Height := 332;
      form8.Width := 542;
end;

end.
