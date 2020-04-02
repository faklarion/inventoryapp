program AplikasiBarang;

uses
  Forms,
  barangmasuk in 'barangmasuk.pas' {fbarangmasuk},
  Unit1 in 'Unit1.pas' {dm: TDataModule},
  inputbarangmasuk in 'inputbarangmasuk.pas' {brgmsk},
  editbarang in 'editbarang.pas' {feditbrg},
  barangluar in 'barangluar.pas' {barangkeluar},
  inputbarangkeluar in 'inputbarangkeluar.pas' {fbarangkeluar},
  menuutama in 'menuutama.pas' {Form2},
  editstok in 'editstok.pas' {feditstok};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Gudang Barang Fajar';
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tfbarangmasuk, fbarangmasuk);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tbrgmsk, brgmsk);
  Application.CreateForm(Tfeditbrg, feditbrg);
  Application.CreateForm(Tbarangkeluar, barangkeluar);
  Application.CreateForm(Tfbarangkeluar, fbarangkeluar);
  Application.CreateForm(Tfeditstok, feditstok);
  Application.Run;
end.
