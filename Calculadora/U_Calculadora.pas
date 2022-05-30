unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  TForm1 = class(TForm)
    bt_igual: TButton;
    bt_1: TButton;
    bt_0: TButton;
    bt_2: TButton;
    bt_virgula: TButton;
    bt_3: TButton;
    bt_6: TButton;
    bt_5: TButton;
    bt_4: TButton;
    bt_7: TButton;
    bt_8: TButton;
    bt_9: TButton;
    bt_dividir: TButton;
    bt_multiplicar: TButton;
    bt_subtrair: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    txt_n1: TText;
    painel: TPanel;
    txt_operador: TText;
    txt_n2: TText;
    bt_somar: TButton;
    bt_apagaUltNum: TButton;
    bt_limpar: TButton;
    txt_resultado: TText;
    procedure uClick(Sender: TObject);
    procedure bt_subtrairClick(Sender: TObject);
    procedure bt_multiplicarClick(Sender: TObject);
    procedure bt_dividirClick(Sender: TObject);
    procedure bt_igualClick(Sender: TObject);
    procedure bt_1Click(Sender: TObject);
    procedure bt_0Click(Sender: TObject);
    procedure bt_2Click(Sender: TObject);
    procedure bt_3Click(Sender: TObject);
    procedure bt_4Click(Sender: TObject);
    procedure bt_5Click(Sender: TObject);
    procedure bt_6Click(Sender: TObject);
    procedure bt_7Click(Sender: TObject);
    procedure bt_8Click(Sender: TObject);
    procedure bt_9Click(Sender: TObject);
    procedure bt_apagaUltNumClick(Sender: TObject);
    procedure bt_limparClick(Sender: TObject);
    procedure bt_virgulaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.Windows.fmx MSWINDOWS}

procedure TForm1.bt_0Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '0';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '0';
  end;
end;

procedure TForm1.bt_1Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '1';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '1';
  end;
end;

procedure TForm1.bt_2Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '2';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '2';
  end;
end;

procedure TForm1.bt_3Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '3';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '3';
  end;
end;

procedure TForm1.bt_4Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '4';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '4';
  end;
end;

procedure TForm1.bt_5Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '5';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '5';
  end;
end;

procedure TForm1.bt_6Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '6';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '6';
  end;
end;

procedure TForm1.bt_7Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '7';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '7';
  end;
end;

procedure TForm1.bt_8Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '8';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '8';
  end;
end;

procedure TForm1.bt_9Click(Sender: TObject);
begin
  txt_resultado.Text := '';
  if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + '9';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + '9';
  end;
end;

procedure TForm1.bt_dividirClick(Sender: TObject);
begin
  if (txt_resultado.Text.IsEmpty) then
  begin

  end
  else
  begin
    txt_n1.Text := txt_resultado.Text;
    txt_resultado.Text := '';
  end;
  txt_operador.Text := '/';
  bt_somar.Enabled := true;
  bt_subtrair.Enabled := true;
  bt_dividir.Enabled := false;
  bt_multiplicar.Enabled := true;
end;

procedure TForm1.uClick(Sender: TObject);
begin
  if (txt_resultado.Text.IsEmpty) then
  begin

  end
  else
  begin
    txt_n1.Text := txt_resultado.Text;
    txt_resultado.Text := '';
  end;
  txt_operador.Text := '+';
  bt_somar.Enabled := false;
  bt_subtrair.Enabled := true;
  bt_dividir.Enabled := true;
  bt_multiplicar.Enabled := true;
end;

procedure TForm1.bt_igualClick(Sender: TObject);
  var n1, n2 : Double;
begin
  n1 := StrToFloat(txt_n1.Text);
  n2 := StrToFloat(txt_n2.Text);

  //Somando
  if (txt_operador.Text = '+') Then
  begin

    txt_resultado.Text := FloatToStr(n1 + n2);
  end

  //Subtração
  else if (txt_operador.Text = '-') then
  begin
    txt_resultado.Text := FloatToStr(n1 - n2);
  end

  //Multiplicação
  else if (txt_operador.Text = 'x') then
  begin
    txt_resultado.Text := FloatToStr(n1 * n2);
  end

  //Divisão
  else if (txt_operador.Text = '/') then
  begin
    txt_resultado.Text := FloatToStr(n1 / n2);
  end;

  txt_n1.Text := '';
  txt_n2.Text := '';
  txt_operador.Text := '';
  bt_somar.Enabled := true;
  bt_subtrair.Enabled := true;
  bt_dividir.Enabled := true;
  bt_multiplicar.Enabled := true;
end;

procedure TForm1.bt_subtrairClick(Sender: TObject);
begin
  if (txt_resultado.Text.IsEmpty) then
  begin

  end
  else
  begin
    txt_n1.Text := txt_resultado.Text;
    txt_resultado.Text := '';
  end;
  txt_operador.Text := '-';
  bt_somar.Enabled := true;
  bt_subtrair.Enabled := false;
  bt_dividir.Enabled := true;
  bt_multiplicar.Enabled := true;
end;

procedure TForm1.bt_virgulaClick(Sender: TObject);
begin
   if txt_operador.Text = '' then
  begin
    txt_n1.Text := txt_n1.Text + ',';
  end
  else
  begin
    txt_n2.Text := txt_n2.Text + ',';
  end;
end;

procedure TForm1.bt_limparClick(Sender: TObject);
begin
  txt_n1.Text := '';
  txt_n2.Text := '';
  txt_operador.Text := '';
  bt_somar.Enabled := true;
  bt_subtrair.Enabled := true;
  bt_dividir.Enabled := true;
  bt_multiplicar.Enabled := true;
    txt_resultado.Text := '';
end;

procedure TForm1.bt_apagaUltNumClick(Sender: TObject);
begin

  if (txt_operador.Text = '') then
  begin
    txt_n1.Text := Copy(txt_n1.Text, 0, length(txt_n1.Text) - 1);
  end
  else
  begin
    txt_n2.Text := Copy(txt_n2.Text, 0, length(txt_n2.Text) - 1);
  end;
end;

procedure TForm1.bt_multiplicarClick(Sender: TObject);
begin
  if (txt_resultado.Text.IsEmpty) then
  begin

  end
  else
  begin
    txt_n1.Text := txt_resultado.Text;
    txt_resultado.Text := '';
  end;
  txt_operador.Text := 'x';
  bt_somar.Enabled := true;
  bt_subtrair.Enabled := true;
  bt_dividir.Enabled := true;
  bt_multiplicar.Enabled := false;
end;

end.
