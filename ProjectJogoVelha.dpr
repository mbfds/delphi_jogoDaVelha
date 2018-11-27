program ProjectJogoVelha;

uses
  Vcl.Forms,
  UnitMenu in 'UnitMenu.pas' {FormMenu},
  UnitVersusPessoa in 'UnitVersusPessoa.pas' {FormVersusPessoa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TFormVersusPessoa, FormVersusPessoa);
  Application.Run;
end.
