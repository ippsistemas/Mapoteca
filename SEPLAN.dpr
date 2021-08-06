program SEPLAN;

uses
  Forms,
  MENU in 'MENU.pas' {Form1},
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  about in 'about.pas' {AboutBox},
  Unit4 in 'Unit4.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form8},
  Unit10 in 'Unit10.pas' {Form10},
  CADERNETA in 'CADERNETA.pas' {Form11},
  Splash in 'Splash.pas' {SplashForm},
  MILIMETRADO in 'MILIMETRADO.pas' {Form12},
  ATUAL in 'ATUAL.pas' {Formatual},
  RELATUAL in 'RELATUAL.pas' {RATUAL},
  RelMil in 'RelMil.pas' {QRListForm};

{$R *.res}

begin
  Application.Initialize;
  SplashForm := TSplashForm.Create(Application);
  SplashForm.Show;
  SplashForm.Update;
  Application.Title := 'Seplan';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TRATUAL, RATUAL);
  Application.CreateForm(TQRListForm, QRListForm);
  SplashForm.Hide;
  SplashForm.Free;
  Application.Run;
end.
