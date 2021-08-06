unit Splash;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TSplashForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
  end;

var
  SplashForm: TSplashForm;

implementation

{$R *.dfm}

end.
