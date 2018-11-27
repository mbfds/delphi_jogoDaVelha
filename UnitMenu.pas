unit UnitMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormMenu = class(TForm)
    Label1: TLabel;
    btnVersusPessoa: TButton;
    btnVersusMaquina: TButton;
    procedure btnVersusPessoaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

{$R *.dfm}

uses UnitVersusPessoa;

procedure TFormMenu.btnVersusPessoaClick(Sender: TObject);
begin
   FormVersusPessoa := TFormVersusPessoa.Create(self);//cria o form na memória
   FormVersusPessoa.ShowModal;//exibe na tela
end;

end.
