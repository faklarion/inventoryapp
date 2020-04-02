unit inputbarangmasuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  Tbrgmsk = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    DateTimePicker1: TDateTimePicker;
    Button2: TButton;
    Label5: TLabel;
    Edit3: TEdit;
    Label6: TLabel;
    Edit4: TEdit;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  brgmsk: Tbrgmsk;

implementation

uses Unit1, DB;

{$R *.dfm}

procedure Tbrgmsk.Button1Click(Sender: TObject);
begin
if (Edit4.Text='') or (edit1.Text='') or(Edit2.Text='')or (Edit3.Text='')then
begin
  ShowMessage('Data Masih Ada Yang Kosong !');
end else
IF dm.qstok.Locate('nama_barang',edit1.Text,[]) then
begin
dm.qstok.Edit;
dm.qstok.FieldByName('jumlah').AsInteger:=dm.qstok.FieldByName('jumlah').AsInteger+StrToInt(Edit2.Text);
dm.qstok.Post;
dm.qstok.SQL.Clear;
dm.qstok.SQL.Add('select * from stok');
dm.qstok.Open;
dm.qmasuk.Append;
dm.qmasuk.FieldByName('nama_barang').AsString:=edit1.Text;
dm.qmasuk.FieldByName('jumlah').AsInteger:=StrToInt(Edit2.Text);
dm.qmasuk.FieldByName('tanggal').AsDateTime:=DateTimePicker1.Date;
dm.qmasuk.FieldByName('penerima').AsString:=edit3.Text;
dm.qmasuk.FieldByName('keterangan_datang').AsString:=edit4.Text;
dm.qmasuk.Post;
dm.qmasuk.SQL.Clear;
dm.qmasuk.SQL.Add('select * from barangmasuk');
dm.qmasuk.Open;
ShowMessage('Data Berhasil Ditambahkan !!!');
edit4.Clear;
Edit2.Clear;
edit3.Clear;
end else
if dm.qstok.RecordCount=0 then
begin
dm.qstok.Append;
dm.qstok.FieldByName('nama_barang').AsString:=edit1.Text;
dm.qstok.FieldByName('jumlah').AsInteger:=StrToInt(Edit2.Text);
dm.qstok.Post;
dm.qstok.SQL.Clear;
dm.qstok.SQL.Add('select * from stok');
dm.qstok.Open;
dm.qmasuk.Append;
dm.qmasuk.FieldByName('nama_barang').AsString:=edit1.Text;
dm.qmasuk.FieldByName('jumlah').AsInteger:=StrToInt(Edit2.Text);
dm.qmasuk.FieldByName('tanggal').AsDateTime:=DateTimePicker1.Date;
dm.qmasuk.FieldByName('penerima').AsString:=edit3.Text;
dm.qmasuk.FieldByName('keterangan_datang').AsString:=edit4.Text;
dm.qmasuk.Post;
dm.qmasuk.SQL.Clear;
dm.qmasuk.SQL.Add('select * from barangmasuk');
dm.qmasuk.Open;
ShowMessage('Data Berhasil Ditambahkan !!!');
edit4.Clear;
EDit2.Clear;
edit3.Clear;
end else
if dm.qstok.RecordCount>0 then
begin
dm.qstok.Append;
dm.qstok.FieldByName('nama_barang').AsString:=edit1.Text;
dm.qstok.FieldByName('jumlah').AsInteger:=StrToInt(Edit2.Text);
dm.qstok.Post;
dm.qstok.SQL.Clear;
dm.qstok.SQL.Add('select * from stok');
dm.qstok.Open;
dm.qmasuk.Append;
dm.qmasuk.FieldByName('nama_barang').AsString:=edit1.Text;
dm.qmasuk.FieldByName('jumlah').AsInteger:=StrToInt(Edit2.Text);
dm.qmasuk.FieldByName('tanggal').AsDateTime:=DateTimePicker1.Date;
dm.qmasuk.FieldByName('penerima').AsString:=edit3.Text;
dm.qmasuk.FieldByName('keterangan_datang').AsString:=edit4.Text;
dm.qmasuk.Post;
dm.qmasuk.SQL.Clear;
dm.qmasuk.SQL.Add('select * from barangmasuk');
dm.qmasuk.Open;
ShowMessage('Data Berhasil Ditambahkan !!!');
edit4.Clear;
EDit2.Clear;
edit3.Clear;
end else
end;

procedure Tbrgmsk.Button2Click(Sender: TObject);
begin
 edit3.Clear;
 edit4.Clear;
 edit2.Clear;
 Close;
end;

procedure Tbrgmsk.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
end;

procedure Tbrgmsk.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if not ( key in['0'..'9', #8, #13]) then
    key:= #0 ;
end;

end.
