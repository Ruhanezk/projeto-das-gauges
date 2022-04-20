unit gauges;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Gauges, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Gauge1: TGauge;
    Gauge4: TGauge;
    Gauge3: TGauge;
    Gauge2: TGauge;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SEdit1: TSpinEdit;
    Panel1: TPanel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

procedure TForm1.SpeedButton1Click(Sender: TObject);
var a, e, i, o, u : integer;

    begin
    u := SEdit1.Value;
    if u = 0 then
      abort;
    Gauge1.Progress := 0;
    Gauge2.Progress := 10000;
    Gauge3.Progress := 10000;
    Gauge4.Progress := 0;
        a := gauge1.MaxValue;
        gauge1.Progress := gauge1.progress +1;
          repeat
          gauge1.Progress := gauge1.progress +1;
          until (gauge1.progress = a);
            if a = gauge1.maxvalue then
            begin
            gauge2.progress :=  gauge2.progress +1;
            end;

          begin
          e := gauge2.MinValue;
          gauge2.Progress := gauge2.progress -1;
          repeat
          gauge2.Progress := gauge2.progress -1;
          until (gauge2.progress = e);
              if i = gauge2.MinValue then
              begin
              gauge3.progress :=  gauge3.progress -1;
              end;
                 begin
                  i := gauge3.MinValue;
                  gauge3.Progress := gauge3.progress -1;
                  repeat
                  gauge3.Progress := gauge3.progress -1;
                  until (gauge3.progress = i);
                  if i = gauge3.MinValue then
                   begin
                   gauge4.progress :=  gauge4.progress +1;
                   end;
                          begin
                          o := gauge4.MaxValue;
                          gauge4.Progress := gauge4.progress +1;
                              repeat
                              gauge4.Progress := gauge4.progress +1;
                              until (gauge4.progress = o);
                          if o = gauge4.MaxValue then
                          Sedit1.Value := Sedit1.Value -1;
                          showmessage ('Uaaaau, Looping em sentido horário!');
                          end;
                  end;
          end;
      repeat
      SpeedButton1.click;
      until u = 0;
    end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
var b, c, d, f, g : integer;

    begin
    g := SEdit1.Value;
    if g = 0 then
      abort;
    Gauge1.Progress := 10000;
    Gauge2.Progress := 0;
    Gauge3.Progress := 0;
    Gauge4.Progress := 10000;
                      b := gauge1.MinValue;
                      gauge1.Progress := gauge1.progress -1;
                        repeat
                        gauge1.Progress := gauge1.progress -1;
                        until (gauge1.progress = b);
                          if b = gauge1.MinValue then
                          begin
                          gauge4.progress :=  gauge4.progress -1;
                          end;

          begin
          c := gauge4.MinValue;
          gauge4.Progress := gauge4.progress -1;
          repeat
          gauge4.Progress := gauge4.progress -1;
          until (gauge4.progress = c);
              if c = gauge4.MinValue then
              begin
              gauge3.progress :=  gauge3.progress +1;
              end;
                 begin
                  d := gauge3.MaxValue;
                  gauge3.Progress := gauge3.progress +1;
                  repeat
                  gauge3.Progress := gauge3.progress +1;
                  until (gauge3.progress = d);
                  if d = gauge3.MaxValue then
                   begin
                   gauge2.progress :=  gauge2.progress +1;
                   end;
                          begin
                          f := gauge2.MaxValue;
                          gauge2.Progress := gauge2.progress +1;
                              repeat
                              gauge2.Progress := gauge2.progress +1;
                              until (gauge2.progress = f);
                          if f = gauge2.MaxValue then
                          Sedit1.Value := Sedit1.Value -1;
                          showmessage ('Uaaaau, Looping em sentido anti-horário!');
                          end;
                  end;
          end;
       repeat
       SpeedButton2.click;
       until g = 0;
    end;

end.
