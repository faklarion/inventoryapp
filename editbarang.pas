unit editbarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tfeditbrg = class(TForm)
    Label2: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit3: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  feditbrg: Tfeditbrg;

implementation

uses Unit1, DB;

{$R *.dfm}

procedure Tfeditbrg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Clear;
Edit2.Clear;
end;

procedure Tfeditbrg.FormDestroy(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
end;

procedure Tfeditbrg.FormDeactivate(Sender: TObject);
begin
Edit1.Clear;
Edit2.Clear;
end;

procedure Tfeditbrg.Button1Click(Sender: TObject);
begin
dm.qmasuk.edit;
dm.qmasuk.FieldByName('nama_barang').AsString:=Edit1.Text;
dm.qmasuk.FieldByName('jumlah').AsString:=Edit2.Text;
dm.qmasuk.FieldByName('tanggal').AsDateTime:=DateTimePicker1.DateTime;
dm.qmasuk.FieldByName('penerima').AsString:=edit3.Text;
dm.qmasuk.FieldByName('keterangan_datang').AsString:=edit4.Text;
dm.qmasuk.Post;
ShowMessage('Data Berhasil Diedit !!!');
Edit1.Clear;
Edit2.Clear;
Close;
end;

procedure Tfeditbrg.Button2Click(Sender: TObject);
begin
Edit1.Clear;
 edit2.Clear;
 Close;
end;

procedure Tfeditbrg.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in['0'..'9', #8, #13]) then
    key:= #0 ;
end;

end.
