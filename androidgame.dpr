program androidgame;

uses
  System.StartUpCopy,
  FMX.Forms,
  unt_main in 'unt_main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
