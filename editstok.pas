unit editstok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfeditstok = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  feditstok: Tfeditstok;

implementation

uses Unit1;

{$R *.dfm}

procedure Tfeditstok.Button1Click(Sender: TObject);
begin
dm.qstok.edit;
dm.qstok.FieldByName('nama_barang').AsString:=Edit1.Text;
dm.qstok.FieldByName('jumlah').AsString:=Edit2.Text;
dm.qstok.Post;
ShowMessage('Data Berhasil Diedit !!!');
Edit1.Clear;
Edit2.Clear;
Close;
end;

end.
