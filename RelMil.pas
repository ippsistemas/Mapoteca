unit RelMil;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBTables, QRCTRLS, QUICKRPT, ExtCtrls;

type
  TQRListForm = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData2: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    MasterTable: TTable;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText6: TQRDBText;
    MasterTableCHAVEMIL: TAutoIncField;
    MasterTableDIGITALIZADO: TBooleanField;
    MasterTableCODIGO: TStringField;
    MasterTableFOLHA: TStringField;
    MasterTableTUBO: TSmallintField;
    MasterTableORD: TSmallintField;
    MasterTableCLASSE: TStringField;
    MasterTableLOCALPUBLICO: TIntegerField;
    MasterTableASSUNTO: TIntegerField;
    MasterTableDESCRICAO: TStringField;
    MasterTableCHAVECAD: TIntegerField;
    Query1: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRListForm: TQRListForm;

implementation

{$R *.dfm}

end.
