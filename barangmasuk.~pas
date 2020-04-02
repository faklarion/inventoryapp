unit barangmasuk;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls;

type
  Tfbarangmasuk = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button2: TButton;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label6: TLabel;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button7Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbarangmasuk: Tfbarangmasuk;

implementation

uses Unit1, Math, inputbarangmasuk, editbarang, DB, barangluar, editstok;

{$R *.dfm}

procedure Tfbarangmasuk.Button1Click(Sender: TObject);
begin
brgmsk.ShowModal;
end;

procedure Tfbarangmasuk.Button2Click(Sender: TObject);
begin
if MessageDlg('Data akan dihapus permanen, Apakah Akan Dilanjutkan ? ',mtInformation,[mbYes,mbNo],0)= mryes then
begin
dm.qstok.Delete;
dm.qstok.SQL.Clear;
dm.qstok.SQL.Add('select * from stok');
dm.qstok.Open;
ShowMessage('Data  dihapus!');
end else
begin
ShowMessage('Data Batal Dihapus!');
end;
end;

procedure Tfbarangmasuk.DBGrid1CellClick(Column: TColumn);
begin
;
end;

procedure Tfbarangmasuk.DBGrid1DblClick(Sender: TObject);
begin
feditbrg.Edit1.Clear;
feditbrg.Edit2.clear;
feditbrg.Edit3.Clear;
feditbrg.Edit1.Text := dm.qmasuk.Fields[0].AsString;
feditbrg.Edit2.Text := dm.qmasuk.Fields[1].AsString;
feditbrg.DateTimePicker1.DateTime := dm.qmasuk.Fields[2].AsDateTime;
feditbrg.Edit3.Text:=dm.qmasuk.Fields[3].AsString;
feditbrg.Edit4.Text:=dm.qmasuk.Fields[4].AsString;
feditbrg.ShowModal;
end;

procedure Tfbarangmasuk.Button3Click(Sender: TObject);
begin
if MessageDlg('Data akan dihapus permanen, Apakah Akan Dilanjutkan ? ',mtInformation,[mbYes,mbNo],0)= mryes then
begin
dm.qmasuk.Delete;
dm.qmasuk.SQL.Clear;
dm.qmasuk.SQL.Add('select * from barangmasuk');
dm.qmasuk.Open;
ShowMessage('Data  dihapus!');
end else
begin
ShowMessage('Data Batal Dihapus!');
end;
end;



procedure Tfbarangmasuk.Edit1Change(Sender: TObject);
begin
dm.qmasuk.SQL.Text := 'Select * FROM barangmasuk WHERE nama_barang Like' + QuotedStr(Edit1.Text + '%');
dm.qmasuk.Active:=true;
end;

procedure Tfbarangmasuk.Edit2Change(Sender: TObject);
begin
dm.qstok.SQL.Text := 'Select * FROM stok WHERE nama_barang Like' + QuotedStr(Edit2.Text + '%');
dm.qstok.Active:=true;

end;

procedure Tfbarangmasuk.Button4Click(Sender: TObject);
begin
dm.frxReport1.ShowReport();
end;

procedure Tfbarangmasuk.Button5Click(Sender: TObject);
begin
dm.frxReport2.ShowReport();
end;

procedure Tfbarangmasuk.DBGrid2DblClick(Sender: TObject);
begin
feditstok.Edit1.Clear;
feditstok.Edit2.clear;
feditstok.Edit1.Text := dm.qstok.Fields[0].AsString;
feditstok.Edit2.Text := dm.qstok.Fields[1].AsString;
feditstok.ShowModal;
end;

procedure Tfbarangmasuk.Button6Click(Sender: TObject);
begin
dm.qmasuk.Close;
dm.qmasuk.SQL.Clear;
dm.qmasuk.SQL.Add('SELECT * FROM barangmasuk WHERE tanggal BETWEEN (:tgl1) AND (:tgl2)');
dm.qmasuk.Parameters.ParamByName('tgl1').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker1.Date);
dm.qmasuk.Parameters.ParamByName('tgl2').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker2.Date);
dm.qmasuk.Open;
end;


procedure Tfbarangmasuk.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=Now;
DateTimePicker2.Date:=Now;
end;

procedure Tfbarangmasuk.Button7Click(Sender: TObject);
begin
dm.qmasuk.Close;
dm.qmasuk.SQL.Clear;
dm.qmasuk.SQL.Add('SELECT * FROM barangmasuk');
dm.qmasuk.Open;
end;

end.
