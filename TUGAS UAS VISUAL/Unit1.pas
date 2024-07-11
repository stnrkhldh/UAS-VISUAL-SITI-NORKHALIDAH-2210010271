unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    cbb1: TComboBox;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    Edit6: TEdit;
    Label9: TLabel;
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a : string;
implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.Button6Click(Sender: TObject);
begin
  DataModule2.frxReport.ShowReport();
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  posisiawal;
end;

procedure TForm1.posisiawal;
begin
  Button1.Enabled := True;
  Button2.Enabled := False;
  Button3.Enabled := False;
  Button4.Enabled := False;
  Button5.Enabled := False;
  cbb1.Enabled := False;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit1.Enabled := False;
  Edit2.Enabled := False;
  Edit3.Enabled := False;
  Edit4.Enabled := False;
  Edit5.Enabled := False;
end;

procedure TForm1.bersih;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  posisiawal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  bersih;
  Button1.Enabled := True;
  Button2.Enabled := True;
  Button3.Enabled := False;
  Button4.Enabled := False;
  Button5.Enabled := True;
  cbb1.Enabled := True;
  Edit1.Enabled := True;
  Edit2.Enabled := True;
  Edit3.Enabled := True;
  Edit4.Enabled := True;
  Edit5.Enabled := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    ShowMessage('Nik kustomer Tidak Boleh Kosong!');
  end else if DataModule2.ZQuery1.Locate('Nik', Edit1.Text, []) then
  begin
    ShowMessage('Nik kustomer ' + Edit1.Text + ' Sudah Ada Dalam Sistem');
  end else
  begin
    DataModule2.ZQuery1.SQL.Clear;
    DataModule2.ZQuery1.SQL.Add('insert into kustomer values(null, "' + Edit1.Text + '", "' + Edit2.Text + '", "' + Edit3.Text + '", "' + Edit4.Text + '", "' + Edit5.Text + '", "' + cbb1.Text + '")');
    DataModule2.ZQuery1.ExecSQL;

    DataModule2.ZQuery1.SQL.Clear;
    DataModule2.ZQuery1.SQL.Add('select * from kustomer');
    DataModule2.ZQuery1.Open;
    ShowMessage('Data Berhasil di Simpan');
  end;
  posisiawal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('update kustomer set Nik = "' + Edit1.Text + '", Name = "' + Edit2.Text + '", Telp = "' + Edit3.Text + '", Email = "' + Edit4.Text + '", Alamat = "' + Edit5.Text + '", Member = "' + cbb1.Text + '" where Id = "' + a + '"');
  DataModule2.ZQuery1.ExecSQL;

  DataModule2.ZQuery1.SQL.Clear;
  DataModule2.ZQuery1.SQL.Add('select * from kustomer');
  DataModule2.ZQuery1.Open;
  ShowMessage('Data Berhasil di Update!');
  posisiawal;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := DataModule2.ZQuery1.Fields[1].AsString;
  Edit2.Text := DataModule2.ZQuery1.Fields[2].AsString;
  Edit3.Text := DataModule2.ZQuery1.Fields[3].AsString;
  Edit4.Text := DataModule2.ZQuery1.Fields[4].AsString;
  Edit5.Text := DataModule2.ZQuery1.Fields[5].AsString;
  cbb1.Text := DataModule2.ZQuery1.Fields[6].AsString;
  a := DataModule2.ZQuery1.Fields[0].AsString;

  Edit1.Enabled := True;
  Button2.Enabled := False;
  Button3.Enabled := True;
  Button4.Enabled := True;
  Button5.Enabled := True;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  if MessageDlg('Apakah Anda Yakin Menghapus Data ini?', mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    DataModule2.ZQuery1.SQL.Clear;
    DataModule2.ZQuery1.SQL.Add('delete from kustomer where Id="' + a + '"');
    DataModule2.ZQuery1.ExecSQL;

    DataModule2.ZQuery1.SQL.Clear;
    DataModule2.ZQuery1.SQL.Add('select * from kustomer');
    DataModule2.ZQuery1.Open;
    ShowMessage('Data Berhasil di Delete!');
  end;
  posisiawal;
end;

procedure TForm1.cbb1Change(Sender: TObject);
begin
  if cbb1.Text = 'yes' then
    Label9.Caption := '10%'
  else if cbb1.Text = 'no' then
    Label9.Caption := '5%';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  cbb1.Items.Add('yes');
  cbb1.Items.Add('no');
end;
end.
