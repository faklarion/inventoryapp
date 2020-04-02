unit barangluar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls;

type
  Tbarangkeluar = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Label4: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  barangkeluar: Tbarangkeluar;

implementation

uses inputbarangkeluar, Unit1, editstok;

{$R *.dfm}

procedure Tbarangkeluar.Button1Click(Sender: TObject);
begin
fbarangkeluar.showmodal;
end;

procedure Tbarangkeluar.Edit1Change(Sender: TObject);
begin
dm.qluar.SQL.Text := 'Select * FROM barangkeluar WHERE nama_barang Like' + QuotedStr(Edit1.Text + '%');
dm.qluar.Active:=true;
end;

procedure Tbarangkeluar.Edit2Change(Sender: TObject);
begin
dm.qstok.SQL.Text := 'Select * FROM stok WHERE nama_barang Like' + QuotedStr(Edit2.Text + '%');
dm.qstok.Active:=true;
end;

procedure Tbarangkeluar.Button2Click(Sender: TObject);
begin
dm.frxReport3.ShowReport();
end;

procedure Tbarangkeluar.Button3Click(Sender: TObject);
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

procedure Tbarangkeluar.Button4Click(Sender: TObject);
begin
dm.frxReport2.ShowReport();
end;

procedure Tbarangkeluar.DBGrid2DblClick(Sender: TObject);
begin
feditstok.Edit1.Clear;
feditstok.Edit2.clear;
feditstok.Edit1.Text := dm.qstok.Fields[0].AsString;
feditstok.Edit2.Text := dm.qstok.Fields[1].AsString;
feditstok.ShowModal;
end;

procedure Tbarangkeluar.Button5Click(Sender: TObject);
begin
if MessageDlg('Data akan dihapus permanen, Apakah Akan Dilanjutkan ? ',mtInformation,[mbYes,mbNo],0)= mryes then
begin
dm.qluar.Delete;
dm.qluar.SQL.Clear;
dm.qluar.SQL.Add('select * from barangkeluar');
dm.qluar.Open;
ShowMessage('Data  dihapus!');
end else
begin
ShowMessage('Data Batal Dihapus!');
end;
end;

procedure Tbarangkeluar.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
DateTimePicker2.Date:=now;
end;

procedure Tbarangkeluar.Button6Click(Sender: TObject);
begin
dm.qluar.Close;
dm.qluar.SQL.Clear;
dm.qluar.SQL.Add('SELECT * FROM barangkeluar WHERE tanggal BETWEEN (:tgl1) AND (:tgl2)');
dm.qluar.Parameters.ParamByName('tgl1').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker1.Date);
dm.qluar.Parameters.ParamByName('tgl2').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker2.Date);
dm.qluar.Open;
end;

procedure Tbarangkeluar.Button7Click(Sender: TObject);
begin
dm.qluar.Close;
dm.qluar.SQL.Clear;
dm.qluar.SQL.Add('SELECT * FROM barangkeluar');
dm.qluar.Open;
end;

end.
