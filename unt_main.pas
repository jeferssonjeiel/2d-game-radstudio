unit unt_main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    player: TRectangle;
    obstaculo: TRectangle;
    OnUpdateGame: TTimer;
    procedure ColisaoBox(rect1, rect2: TRectangle);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure OnUpdateGameTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{ TForm1 }

procedure TForm1.ColisaoBox(rect1, rect2: TRectangle);
begin

  if (rect1.Position.X < rect2.Position.X) and
    (rect1.Position.X + rect1.Position.X > rect2.Position.X) and
    (rect1.Position.Y < rect2.Position.Y + rect2.Height) and
    (rect1.Position.Y + rect1.Height > rect2.Position.Y) then

  begin
    ShowMessage('Colisão Detectada');
  end;

  { if (rect1.x < rect2.x + rect2.width &&
    rect1.x + rect1.width > rect2.x &&
    rect1.y < rect2.y + rect2.height &&
    rect1.y + rect1.height > rect2.y) }
end;

procedure TForm1.OnUpdateGameTimer(Sender: TObject);
  begin
    ColisaoBox(player,obstaculo);
  end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  player.Position.X := player.Position.X + -10;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  player.Position.X := player.Position.X + 10;
end;

end.
