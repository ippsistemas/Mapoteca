unit MENU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdActns, ActnList, ComCtrls, ToolWin,DBTables, jpeg,
  ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Arquivos1: TMenuItem;
    Cadernetas1: TMenuItem;
    Milimetrados1: TMenuItem;
    OriginaisTopografia1: TMenuItem;
    SistemaVirio1: TMenuItem;
    SDP1: TMenuItem;
    Classificao1: TMenuItem;
    Assuntos1: TMenuItem;
    Locais1: TMenuItem;
    Mapa: TMenuItem;
    Caderneta1: TMenuItem;
    PlantaTopogrfica1: TMenuItem;
    Projeto1: TMenuItem;
    SDP2: TMenuItem;
    SistemaVirio2: TMenuItem;
    Mapas1: TMenuItem;
    ools1: TMenuItem;
    Pesquisas1: TMenuItem;
    Relatrios1: TMenuItem;
    Ajuda1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    PorPalavra1: TMenuItem;
    PorAssunto1: TMenuItem;
    PorTipo1: TMenuItem;
    PorPeriodo1: TMenuItem;
    Contedo1: TMenuItem;
    Sobre1: TMenuItem;
    Janelas1: TMenuItem;
    WindowCascadeItem: TMenuItem;
    Minimizar1: TMenuItem;
    Cascata1: TMenuItem;
    ActionList1: TActionList;
    WindowCascade1: TWindowCascade;
    WindowTileHorizontal1: TWindowTileHorizontal;
    WindowTileVertical1: TWindowTileVertical;
    WindowMinimizeAll1: TWindowMinimizeAll;
    WindowArrangeAll1: TWindowArrange;
    MinimizeAll1: TMenuItem;
    ArrangeAll1: TMenuItem;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Opes1: TMenuItem;
    Image1: TImage;
    ProjetoAtual1: TMenuItem;
    procedure MapaClick(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Caderneta1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure PlantaTopogrfica1Click(Sender: TObject);
    procedure Projeto1Click(Sender: TObject);
    procedure SistemaVirio2Click(Sender: TObject);
    procedure SDP2Click(Sender: TObject);
    procedure Locais1Click(Sender: TObject);
    procedure Mapas1Click(Sender: TObject);
    procedure Cadernetas1Click(Sender: TObject);
    procedure Milimetrados1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure ProjetoAtual1Click(Sender: TObject);

  private
    { Private declarations }
    Function Formexiste(nomejanela:Tform):boolean;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, about, Unit4, Unit5, Unit1, Unit6, Unit7, Unit8, Unit10,
     CADERNETA, MILIMETRADO, ATUAL;

{$R *.dfm}


procedure _close;
var
  I: Integer;
begin
  for I := 0 to DataModule1.ComponentCount -1 do
    if DataModule1.Components[I] is TTable then
      if TTable(DataModule1.Components[I]).active = true then
         TTable(DataModule1.Components[I]).active := false;

end;


//Função para testar se o form já existe
Function TForm1.Formexiste(Nomejanela:TForm):boolean;
var
  I : integer;
begin
  Formexiste := false;
  for i := 0 to componentcount - 1 do
     if Components[i] is TForm then
        if TForm(Components[i])= nomejanela then
           Formexiste := true
end;


procedure TForm1.MapaClick(Sender: TObject);
begin
 If Formexiste(Form2) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form2 := TForm2.Create(Self);
   End
 Else
  If Formexiste(Form2) = true  then
   Begin
     Form2.WindowState := WsNormal;
     Form2.BringToFront;
     Form2.Setfocus;
   End;
   form2.Height := 343;
   form2.Width := 533;
end;


procedure TForm1.Sair1Click(Sender: TObject);
begin
             
        if Application.MessageBox('Deseja realmente Sair do aplicativo ?','Atenção',
        MB_YESNO + MB_DEFBUTTON2) = IDYES then
        BEGIN
         _close;
          Close; // Sair do programa
        END;
end;


procedure TForm1.Caderneta1Click(Sender: TObject);
begin
 If Formexiste(Form3) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form3 := TForm3.Create(Self);
   End
 Else
  If Formexiste(Form3) = true  then
   Begin
     Form3.WindowState := WsNormal;
     Form3.BringToFront;
     Form3.Setfocus;
   End;
    form3.Height := 332;
    form3.Width := 542;
end;


procedure TForm1.Sobre1Click(Sender: TObject);
begin
      AboutBox.ShowModal;

end;


procedure TForm1.PlantaTopogrfica1Click(Sender: TObject);
begin
   If Formexiste(Form4) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form4 := TForm4.Create(Self);
   End
 Else
  If Formexiste(Form4) = true  then
   Begin
     Form4.WindowState := WsNormal;
     Form4.BringToFront;
     Form4.Setfocus;
   End;
    form4.Height := 332;
    form4.Width := 542;
end;



procedure TForm1.Projeto1Click(Sender: TObject);
begin
 If Formexiste(Form5) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form5 := TForm5.Create(Self);
   End
 Else
  If Formexiste(Form5) = true  then
   Begin
     Form5.WindowState := WsNormal;
     Form5.BringToFront;
     Form5.Setfocus;
   End;
    form5.Height := 332;
    form5.Width := 542;
end;



procedure TForm1.SistemaVirio2Click(Sender: TObject);
begin
 If Formexiste(Form6) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form6 := TForm6.Create(Self);
   End
 Else
  If Formexiste(Form6) = true  then
   Begin
     Form6.WindowState := WsNormal;
     Form6.BringToFront;
     Form6.Setfocus;
   End;
    form6.Height := 332;
    form6.Width := 542;
end;


procedure TForm1.SDP2Click(Sender: TObject);
begin
 If Formexiste(Form7) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form7 := TForm7.Create(Self);
   End
 Else
  If Formexiste(Form7) = true  then
   Begin
     Form7.WindowState := WsNormal;
     Form7.BringToFront;
     Form7.Setfocus;
   End;
    form7.Height := 332;
    form7.Width := 542;
end;


procedure TForm1.Locais1Click(Sender: TObject);
begin
 If Formexiste(Form8) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form8 := TForm8.Create(Self);
   End
 Else
  If Formexiste(Form8) = true  then
   Begin
     Form8.WindowState := WsNormal;
     Form8.BringToFront;
     Form8.Setfocus;
   End;
    form8.Height := 332;
    form8.Width := 542;

end;


procedure TForm1.Mapas1Click(Sender: TObject);
begin
 If Formexiste(Form10) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form10 := TForm10.Create(Self);
   End
 Else
  If Formexiste(Form10) = true  then
   Begin
     Form10.WindowState := WsNormal;
     Form10.BringToFront;
     Form10.Setfocus;
   End;
   Form10.Height := 392;
   Form10.Width := 639;


end;


procedure TForm1.Cadernetas1Click(Sender: TObject);
begin
 If Formexiste(Form11) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form11 := TForm11.Create(Self);
   End
 Else
  If Formexiste(Form11) = true  then
   Begin
     Form11.WindowState := WsNormal;
     Form11.BringToFront;
     Form11.Setfocus;
   End;
   Form11.Height := 424;
    Form11.Width := 689;

end;

procedure TForm1.Milimetrados1Click(Sender: TObject);
begin
    If Formexiste(Form12) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Form12 := TForm12.Create(Self);
   End
 Else
  If Formexiste(Form12) = true  then
   Begin
     Form12.WindowState := WsNormal;
     Form12.BringToFront;
     Form12.Setfocus;
   End;
   Form12.Height := 424;
    Form12.Width := 689;

end;

procedure TForm1.Image1Click(Sender: TObject);
begin
    AboutBox.ShowModal;
end;

procedure TForm1.ProjetoAtual1Click(Sender: TObject);
begin
         If Formexiste(Formatual) = false then
   Begin
      Screen.Cursor := CrHourGlass;
      Formatual := TFormatual.Create(Self);
   End
 Else
  If Formexiste(Formatual) = true  then
   Begin
     Formatual.WindowState := WsNormal;
     Formatual.BringToFront;
     Formatual.Setfocus;
   End;
   Formatual.Height := 628;
   Formatual.Width := 782;
end;

end.
