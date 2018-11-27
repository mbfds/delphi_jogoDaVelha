unit UnitVersusPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFormVersusPessoa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    LabelNomeJogador: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditJogador1: TEdit;
    EditJogador2: TEdit;
    btnIniciar: TButton;
    btn11: TSpeedButton;
    btn12: TSpeedButton;
    btn13: TSpeedButton;
    btn21: TSpeedButton;
    btn22: TSpeedButton;
    btn23: TSpeedButton;
    btn31: TSpeedButton;
    btn32: TSpeedButton;
    btn33: TSpeedButton;
    procedure btnIniciarClick(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure vericaJogo();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVersusPessoa: TFormVersusPessoa;
  vezDe : Boolean;//Variavel pra guardar quem vai jogar na proxima
          //ou é True ou False
implementation

{$R *.dfm}

procedure TFormVersusPessoa.btn11Click(Sender: TObject);
begin
    if(vezDe = true)then//verifica se vezDe é igual a true
    begin //se for igual a true
        TSpeedButton(Sender).Caption := 'X';//troca o caption (texto) do botao pra X
        vezDe := False;//muda a variavel para o proximo jogador
        LabelNomeJogador.Caption := EditJogador2.Text //muda o label com o nome do proximo

    end
    else //se não for igual a true
    begin
        TSpeedButton(Sender).Caption := '0';//troca o caption (texto) do botao para O
        vezDe := True;//muda a variavel para o proximo jogador
        LabelNomeJogador.Caption := EditJogador1.Text//muda o lavel com o nome do proximo
    end;

    TSpeedButton(Sender).Enabled := False;//desabilita o botao para não clicar de novo
    vericaJogo;

end;

procedure TFormVersusPessoa.btnIniciarClick(Sender: TObject);
begin


  if (btnIniciar.Caption = 'Zerar') then
  begin
    FormCreate(self);
    btnIniciar.Caption := 'Inicar';
  end;



  //se não preencheu o nome 1 OU não preencheu o nome 2
  if (EditJogador1.Text = '') OR (EditJogador2.Text = '')then
  begin
     ShowMessage('Os dois nomes são obrigatórios!');
  end
  else
  begin
     EditJogador1.Enabled := False;
     EditJogador2.Enabled := False;

     //VezDe := true -> Jogador1 (X) Vai jogar
     vezDe := true;
     //muda o nome do jogador no label
     LabelNomeJogador.Caption := EditJogador1.Text;



     //liberar todos os botoes
    btn11.Enabled := True;
    btn12.Enabled := True;
    btn13.Enabled := True;

    btn21.Enabled := True;
    btn22.Enabled := True;
    btn23.Enabled := True;

    btn31.Enabled := True;
    btn32.Enabled := True;
    btn33.Enabled := true;

    btnIniciar.Caption := 'Zerar';

  end;







end;

procedure TFormVersusPessoa.FormCreate(Sender: TObject);
begin

  //desabilitar todos os botoes
    btn11.Enabled := False;
    btn12.Enabled := False;
    btn13.Enabled := False;

    btn21.Enabled := False;
    btn22.Enabled := False;
    btn23.Enabled := False;

    btn31.Enabled := False;
    btn32.Enabled := False;
    btn33.Enabled := False;


  //limpar o conteúdo de todos os botoes
    btn11.Caption := '';
    btn12.Caption := '';
    btn13.Caption := '';

    btn21.Caption := '';
    btn22.Caption := '';
    btn23.Caption := '';

    btn31.Caption := '';
    btn32.Caption := '';
    btn33.Caption := '';
end;

procedure TFormVersusPessoa.vericaJogo;
var vencedor : string; //variavel para salvar o icone do vencedor
begin
   //verificação linhas
   if(  (btn11.Caption = btn12.Caption) AND (btn12.Caption = btn13.Caption) AND (btn11.Caption <> '') )then
   begin
     vencedor := btn11.Caption;
   end
   else if(  (btn21.Caption = btn22.Caption) AND (btn22.Caption = btn23.Caption) AND (btn21.Caption <> '') )then
   begin
     vencedor := btn21.Caption;
   end
   else if(  (btn31.Caption = btn32.Caption) AND (btn32.Caption = btn33.Caption) AND (btn31.Caption <> '') )then
   begin
     vencedor := btn31.Caption;
   end


   //verificação colunas
   else if(  (btn11.Caption = btn21.Caption) AND (btn21.Caption = btn31.Caption) AND (btn11.Caption <> '') )then
   begin
     vencedor := btn11.Caption;
   end
    else if(  (btn12.Caption = btn22.Caption) AND (btn22.Caption = btn32.Caption) AND (btn12.Caption <> '') )then
   begin
     vencedor := btn12.Caption;
   end
    else if(  (btn13.Caption = btn23.Caption) AND (btn23.Caption = btn33.Caption) AND (btn13.Caption <> '') )then
   begin
     vencedor := btn13.Caption;
   end


   //verificação diagonais
   else if(  (btn11.Caption = btn22.Caption) AND (btn22.Caption = btn33.Caption) AND (btn11.Caption <> '') )then
   begin
     vencedor := btn11.Caption;
   end
   else if(  (btn13.Caption = btn22.Caption) AND (btn22.Caption = btn31.Caption) AND (btn13.Caption <> '') )then
   begin
     vencedor := btn13.Caption;
   end;


   if (vencedor = 'X') then
   begin
     ShowMessage(EditJogador1.Text + ' Venceu!!!!');
   end
   else if(vencedor = '0')then
   begin
     ShowMessage(EditJogador2.Text + ' Venceu!!!!');
   end;


   if vencedor <> '' then
   begin
      //desabilitar todos os botoes
    btn11.Enabled := False;
    btn12.Enabled := False;
    btn13.Enabled := False;

    btn21.Enabled := False;
    btn22.Enabled := False;
    btn23.Enabled := False;

    btn31.Enabled := False;
    btn32.Enabled := False;
    btn33.Enabled := False;

   end;



end;

end.
