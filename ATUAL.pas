unit Atual;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, Mask, ExtCtrls, Buttons, Grids,
  DBGrids, CheckLst, DBTables, QuickRpt, ComCtrls;

type
  TFormatual = class(TForm)
    ScrollBox: TScrollBox;
    Label1: TLabel;
    ED1: TDBEdit;
    Label2: TLabel;
    ED4: TDBEdit;
    Label3: TLabel;
    ED5: TDBEdit;
    Label4: TLabel;
    ED6: TDBEdit;
    Label5: TLabel;
    ED3: TDBEdit;
    Label6: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    ED8: TDBMemo;
    ED7: TDBRadioGroup;
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    BARRA1: TDBNavigator;
    Q1: TQuery;
    Table2: TTable;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    SpeedButton2: TBitBtn;
    StaticText1: TStaticText;
    Table1CODIGO: TStringField;
    Table1MAP: TStringField;
    Table1CXTBGAV: TStringField;
    Table1ORDEM: TStringField;
    Table1ASSUNTO: TStringField;
    Table1DESCRICAO: TStringField;
    Table1TIPO: TStringField;
    Table1ANO: TStringField;
    Table2CODIGO: TStringField;
    Table2MAP: TStringField;
    Table2CXTBGAV: TStringField;
    Table2ORDEM: TStringField;
    Table2ASSUNTO: TStringField;
    Table2DESCRICAO: TStringField;
    Table2TIPO: TStringField;
    Table2EXECUTADO: TBooleanField;
    GroupBox2: TGroupBox;
    RGCAMPOS: TRadioGroup;
    Operador: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Label8: TLabel;
    Edit3: TEdit;
    Label10: TLabel;
    Image1: TImage;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure BARRA2Click(Sender: TObject; Button: TNavigateBtn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure RGCAMPOSClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
   // procedure RadioButton1Click(Sender: TObject);
   // procedure RadioButton2Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Formatual: TFormatual;

implementation

uses Unit1, MENU, RELATUAL;

{$R *.DFM}


procedure TFormatual.SpeedButton1Click(Sender: TObject);
begin

   close;

end;

procedure TFormatual.SpeedButton3Click(Sender: TObject);

begin
        DataSource2.Enabled:=false;
        Table2.First;
        Q1.First;
        While not Table2.Eof do
        begin
          Table2.Delete;
        end;
        While not Q1.Eof do
        begin
               Table2.Insert;
               Table2.Fields[0].AsString := Q1.Fields[0].AsString;
               Table2.Fields[1].AsString := Q1.Fields[1].AsString;
               Table2.Fields[2].AsString := Q1.Fields[2].AsString;
               Table2.Fields[3].AsString := Q1.Fields[3].AsString;
               Table2.Fields[4].AsString := Q1.Fields[4].AsString;
               Table2.Fields[5].AsString := Q1.Fields[5].AsString;
               Table2.Fields[6].AsString := Q1.Fields[6].AsString;
               Table2.Fields[7].AsBoolean := Q1.Fields[7].AsBoolean;
               Table2.Post;
               Q1.Next;

        end;
        DataSource2.Enabled:=true;
        RATUAL.QuickRep1.Preview;
end;

procedure TFormatual.BARRA2Click(Sender: TObject; Button: TNavigateBtn);
begin
        Table1.ApplyUpdates;
        Table1.CommitUpdates;
end;

procedure TFormatual.DBGrid1CellClick(Column: TColumn);
begin
    {Table1.SetKey;
    IF Table1.FindKey([Q1.FieldValues['CODIGO']]) then
    Table1.GotoKey;}
end;

procedure TFormatual.RGCAMPOSClick(Sender: TObject);
begin
  IF RGCAMPOS.ItemIndex=0 THEN
    BEGIN
      EDIT1.Enabled:=TRUE;
      EDIT2.VISIBLE:=FALSE;
      OPERADOR.ENABLED:=FALSE;
    END
  ELSE
    BEGIN
    EDIT1.ENABLED:=TRUE;
    EDIT2.VISIBLE:=TRUE;
    OPERADOR.Enabled:=TRUE;
    END;

end;

procedure TFormatual.Button1Click(Sender: TObject);
begin
 { TABLE1.First;
  WHILE NOT TABLE1.EOF DO
  begin
     Table1.edit;
     Table1.FieldValues['DESCRICAO'] :=
     TABLE1.FieldValues['ASSUNTO'] + '  ' + TABLE1.FieldValues['DESCRICAO'];
     Table1.Post;
     Table1.ApplyUpdates;
     Table1.CommitUpdates;
     Table1.Next;
  end;  }
end;

procedure TFormatual.Edit3Change(Sender: TObject);
begin
        Table1.SetKey;
        Table1.FindNearest([Edit3.text])
       
end;

procedure TFormatual.BitBtn1Click(Sender: TObject);
begin
        groupbox1.Visible:= false;   
end;

procedure TFormatual.SpeedButton4Click(Sender: TObject);
begin
        groupbox1.Visible:=true;
        edit1.SetFocus;
end;

procedure TFormatual.SpeedButton2Click(Sender: TObject);
begin
     Q1.CLOSE;
     Q1.SQL.Clear;
     IF RGCAMPOS.ItemIndex=0 THEN   // PROCURA COM UMA CHAVE
        BEGIN
          IF TRIM(Edit1.Text)='' then
            begin
              showmessage('O campo está vazio...');
              SpeedButton3.Enabled:=false;
              //Edit1.setfocus;
              exit;
            end;
            // vamos a SQ2
            Q1.SQL.Add('SELECT * FROM SEPLAN02 WHERE DESCRICAO LIKE:P1');
            Q1.ParamByName('P1').AsString:='%'+Edit1.Text+'%';
            SpeedButton3.Enabled:=true;
        END
     ELSE   // PROCURA COM DUAS CHAVES
      BEGIN
        IF TRIM(Edit1.Text) ='' then
        BEGIN
          showmessage('O primeiro campo está vazio...');
          SpeedButton3.Enabled:=false;
          //Edit1.SetFocus;
          exit;
        end;
        IF TRIM(Edit2.text) = '' then
         begin
           showmessage('O segundo campo está vazio...');
           //Edit2.SetFocus;
           exit;
         end;
         // vamos a sql2
         IF OPERADOR.ItemIndex = 0 THEN
         BEGIN
         Q1.SQL.Add('SELECT * FROM SEPLAN02 WHERE DESCRICAO LIKE:P1 OR DESCRICAO LIKE:P2');
         Q1.ParamByName('P1').AsString:='%'+Edit1.Text+'%';
         Q1.ParamByName('P2').AsString:='%'+Edit2.Text+'%';
         END
         ELSE
         Q1.SQL.Add('SELECT * FROM SEPLAN02 WHERE DESCRICAO LIKE:P1 AND DESCRICAO LIKE:P2');
         Q1.ParamByName('P1').AsString:='%'+Edit1.Text+'%';
         Q1.ParamByName('P2').AsString:='%'+Edit2.Text+'%';

      END;
      Q1.Open;
      SpeedButton3.Enabled:=true;

end;

{
procedure TForm2.RadioButton1Click(Sender: TObject);
{ HABILITA OU NÃO OPÇÕES DE BUSCA PALAVRAS
begin
    IF RadioButton1.Checked = TRUE THEN
    BEGIN
        //OPERADOR.Enabled := TRUE;
        RGCAMPOS.Enabled := TRUE;
        EDIT1.Enabled := TRUE;
        EDIT2.Enabled := TRUE;
        edit1.SetFocus;
        //
        DINICIAL.Enabled := FALSE;
        DFINAL.Enabled := FALSE;
        COMBOBOX1.Enabled := FALSE;
    END;
end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
        IF RadioButton2.Checked = TRUE  THEN
        BEGIN
           DINICIAL.Enabled := TRUE;
           DFINAL.Enabled := TRUE;
           COMBOBOX1.Enabled := true;
           //
           OPERADOR.Enabled := FALSE;
           RGCAMPOS.Enabled := FALSE;
           EDIT1.Enabled := FALSE;
           EDIT2.Enabled := FALSE;
           DINICIAL.SetFocus;
        END;
end;   }

procedure TFormatual.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     action := cafree;// libera memória
end;

procedure TFormatual.FormCreate(Sender: TObject);
begin
     Screen.Cursor := CrDefault; // Coloca o cursor em modo normal
end;

procedure TFormatual.FormResize(Sender: TObject);
begin
      Formatual.Height := 628;
      Formatual.Width  := 782;
      Formatual.Top    := 0;
      Formatual.Left   := 0;
end;

end.
