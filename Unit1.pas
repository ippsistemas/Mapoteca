unit Unit1;

interface

uses
  SysUtils, Windows, Classes, Graphics, Controls,
  Forms, Dialogs, DB, DBTables;

type
  TDataModule1 = class(TDataModule)
    Table1CODIGO: TStringField;
    Table1ASSUNTO: TStringField;
    DataSource1: TDataSource;
    Table1: TTable;
    Table2: TTable;
    DataSource2: TDataSource;
    Table2CODIGO: TStringField;
    Table2CLASSE: TStringField;
    Table3: TTable;
    DataSource3: TDataSource;
    Table3CODIGO: TStringField;
    Table3CLASSE: TStringField;
    Table4: TTable;
    DataSource4: TDataSource;
    Table4CODIGO: TStringField;
    Table4CLASSE: TStringField;
    Table5: TTable;
    DataSource5: TDataSource;
    Table5NUMERO: TAutoIncField;
    Table5ASSUNTO: TStringField;
    Table6: TTable;
    AutoIncField1: TAutoIncField;
    StringField1: TStringField;
    DataSource6: TDataSource;
    Table7: TTable;
    DataSource7: TDataSource;
    Table7CODIGO: TAutoIncField;
    Table7NOME: TStringField;
    Table8: TTable;
    Table1CHAVEORIGINAIS: TAutoIncField;
    StringField2: TStringField;
    Table1ORIGEM: TStringField;
    Table1FOLHA: TStringField;
    Table1LOCALIZACAO: TStringField;
    Table1NUMERO: TSmallintField;
    Table1ORD: TSmallintField;
    Table1CLASSE: TStringField;
    Table1DESCRICAO: TStringField;
    Table1DIGITALIZADO: TBooleanField;
    DataSource8: TDataSource;
    Table8DCLASSE: TStringField;
    Table9: TTable;
    Table1CHAVECAD: TAutoIncField;
    StringField3: TStringField;
    Table1SEQ: TStringField;
    Table1CAIXA: TSmallintField;
    SmallintField1: TSmallintField;
    StringField4: TStringField;
    Table1LOCALPUBLICO: TIntegerField;
    IntegerField1: TIntegerField;
    StringField5: TStringField;
    BooleanField1: TBooleanField;
    DataSource9: TDataSource;
    Table12: TTable;
    DataSource12: TDataSource;
    Table12CHAVEMIL: TAutoIncField;
    Table12DIGITALIZADO: TBooleanField;
    Table12CODIGO: TStringField;
    Table12FOLHA: TStringField;
    Table12TUBO: TSmallintField;
    Table12ORD: TSmallintField;
    Table12CLASSE: TStringField;
    Table12LOCALPUBLICO: TIntegerField;
    Table12ASSUNTO: TIntegerField;
    Table12DESCRICAO: TStringField;
    Table12CHAVECAD: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.DFM}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
      Table1.Open;
      Table2.Open;
      Table3.Open;
      Table4.Open;
      Table5.Open;
      Table6.Open;
      Table7.Open;
      Table8.Open;
      Table9.open;
      Table12.open;

end;

end.
