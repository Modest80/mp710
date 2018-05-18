unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, JvExControls, JvSwitch, ComCtrls, StdCtrls, Grids, ValEdit,
  Menus, ExtCtrls, JvComponentBase, JvHidControllerClass, Buttons, Mask,
  JvgStringGrid, JvExGrids, JvStringGrid;

type
  TMainForm = class(TForm)
    pgc1: TPageControl;
    ts1: TTabSheet;
    grp1: TGroupBox;
    jvswtch1: TJvSwitch;
    trckbr1: TTrackBar;
    lbl1: TLabel;
    grp2: TGroupBox;
    lbl2: TLabel;
    jvswtch2: TJvSwitch;
    trckbr2: TTrackBar;
    grp3: TGroupBox;
    lbl3: TLabel;
    jvswtch3: TJvSwitch;
    trckbr3: TTrackBar;
    grp4: TGroupBox;
    lbl4: TLabel;
    jvswtch4: TJvSwitch;
    trckbr4: TTrackBar;
    grp5: TGroupBox;
    lbl5: TLabel;
    jvswtch5: TJvSwitch;
    trckbr5: TTrackBar;
    grp6: TGroupBox;
    lbl6: TLabel;
    jvswtch6: TJvSwitch;
    trckbr6: TTrackBar;
    grp7: TGroupBox;
    lbl7: TLabel;
    jvswtch7: TJvSwitch;
    trckbr7: TTrackBar;
    grp8: TGroupBox;
    lbl8: TLabel;
    jvswtch8: TJvSwitch;
    trckbr8: TTrackBar;
    ts2: TTabSheet;
    lst1: TValueListEditor;
    grp9: TGroupBox;
    lbl9: TLabel;
    jvswtch9: TJvSwitch;
    trckbr9: TTrackBar;
    grp10: TGroupBox;
    lbl10: TLabel;
    jvswtch10: TJvSwitch;
    trckbr10: TTrackBar;
    grp11: TGroupBox;
    lbl11: TLabel;
    jvswtch11: TJvSwitch;
    trckbr11: TTrackBar;
    grp12: TGroupBox;
    lbl12: TLabel;
    jvswtch12: TJvSwitch;
    trckbr12: TTrackBar;
    grp13: TGroupBox;
    lbl13: TLabel;
    jvswtch13: TJvSwitch;
    trckbr13: TTrackBar;
    grp14: TGroupBox;
    lbl14: TLabel;
    jvswtch14: TJvSwitch;
    trckbr14: TTrackBar;
    grp15: TGroupBox;
    lbl15: TLabel;
    jvswtch15: TJvSwitch;
    trckbr15: TTrackBar;
    grp16: TGroupBox;
    lbl16: TLabel;
    jvswtch16: TJvSwitch;
    trckbr16: TTrackBar;
    mm1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    stat1: TStatusBar;
    tmr1: TTimer;
    ts3: TTabSheet;
    ControllerHID: TJvHidDeviceController;
    ts4: TTabSheet;
    LogMemo: TMemo;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    grp17: TGroupBox;
    lbl17: TLabel;
    ChannelList: TComboBox;
    lbl18: TLabel;
    PowerTrackBar: TTrackBar;
    lbl19: TLabel;
    EventList: TComboBox;
    lbl20: TLabel;
    MaskTimeEvent: TMaskEdit;
    grp18: TGroupBox;
    NullPowerBtn: TSpeedButton;
    FullPowerBtn: TSpeedButton;
    TaskGrid: TJvStringGrid;
    spl1: TSplitter;
    btn4: TButton;
    TimerEvents: TTimer;
    procedure trckbr1Change(Sender: TObject);
    procedure lst1Exit(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ControllerHIDArrival(HidDev: TJvHidDevice);
    procedure ControllerHIDRemoval(HidDev: TJvHidDevice);
    procedure jvswtch1Click(Sender: TObject);
    procedure jvswtch2Click(Sender: TObject);
    procedure jvswtch3Click(Sender: TObject);
    procedure jvswtch4Click(Sender: TObject);
    procedure jvswtch5Click(Sender: TObject);
    procedure jvswtch6Click(Sender: TObject);
    procedure jvswtch7Click(Sender: TObject);
    procedure jvswtch8Click(Sender: TObject);
    procedure jvswtch9Click(Sender: TObject);
    procedure jvswtch10Click(Sender: TObject);
    procedure jvswtch11Click(Sender: TObject);
    procedure jvswtch12Click(Sender: TObject);
    procedure jvswtch13Click(Sender: TObject);
    procedure jvswtch14Click(Sender: TObject);
    procedure jvswtch15Click(Sender: TObject);
    procedure jvswtch16Click(Sender: TObject);
    procedure trckbr2Change(Sender: TObject);
    procedure trckbr3Change(Sender: TObject);
    procedure trckbr4Change(Sender: TObject);
    procedure trckbr5Change(Sender: TObject);
    procedure trckbr6Change(Sender: TObject);
    procedure trckbr7Change(Sender: TObject);
    procedure trckbr8Change(Sender: TObject);
    procedure trckbr9Change(Sender: TObject);
    procedure trckbr10Change(Sender: TObject);
    procedure trckbr11Change(Sender: TObject);
    procedure trckbr12Change(Sender: TObject);
    procedure trckbr13Change(Sender: TObject);
    procedure trckbr14Change(Sender: TObject);
    procedure trckbr15Change(Sender: TObject);
    procedure trckbr16Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure NullPowerBtnClick(Sender: TObject);
    procedure FullPowerBtnClick(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure TimerEventsTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  USB_ENABLE : boolean;
  USB: TJvHidDevice;
  BUF : array [0..8] of byte;
  USB_BUFI : array [0..8] of Byte;
  USB_BUFO : array [0..8] of Byte;
  POWER_CHANNEL: array [0..15] of Byte;
  //function USB_RCCP_WR(N:Byte; REG:Byte; COM:Byte; CMD:Integer; PRG:Integer):Boolean;
  //procedure USB_BUF_CLEAR();

implementation

{$R *.dfm}

function USB_SET_FEATURE():Boolean;
begin
  if USB_ENABLE then //  запись из буфера в устройство
    try RESULT:=USB.SetFeature(USB_BUFO, 9);
        except RESULT:=false; end;

end;

function USB_GET_FEATURE():Boolean;
var
  i:Integer;
begin
  //  чтение в буфер из устройства
   if USB_ENABLE then begin
    i:=3;   //  число попыток
    while ((not RESULT) and (i>0)) do
        try RESULT:=USB.GetFeature(USB_BUFI, 9);
            except RESULT:=false; end;
    end;
end;

procedure USB_BUF_CLEAR();
var
  i:Integer;
begin
//  очистка буферов приёма и передачи
 for i:=0 to 8 do
  begin
   USB_BUFI[i]:=0;
   USB_BUFO[i]:=0;
  end;

end;

function USB_RCCP_RD(Channel:Byte):Boolean;
var
  i:Byte;
  PowerCh:Byte;
begin
   //  читаем REG, COM, CMD и PRG
    USB_BUF_CLEAR();
    RESULT:=False;
    USB_BUFO[1]:=$36;
    USB_BUFO[2]:=Channel;
    i:=3;   //  число попыток
    while ((not RESULT) and (i>0)) do
        if (USB_SET_FEATURE()) then
            if (USB_GET_FEATURE()) then begin
                RESULT:=((USB_BUFI[1]=$36) and (USB_BUFI[2]=Channel));
                PowerCh:=USB_BUFI[3];
                POWER_CHANNEL[Channel]:=PowerCh;
                //MainForm.LogMemo.Lines.Append('Channel: ' + IntToStr(Channel) + ' Мощность: ' + IntToStr(PowerCh));
                //COM:=USB_BUFI[4];
                //CMD:=(USB_BUFI[5]<<8)+USB_BUFI[6];
                //PRG:=(USB_BUFI[7]<<8)+USB_BUFI[8];
             i:=i-1;
             end;
    if (not RESULT) then MainForm.LogMemo.Lines.Append('Ошибка чтения данных');
end;

function USB_RCCP_WR(N:Byte; REG:Byte; COM:Byte; CMD:Integer; PRG:Integer):Boolean;
var
  i:Integer;
begin
   // запись REG и COM
    USB_BUF_CLEAR();      //Очищаем буфер
    Result:=False;        //Результат ставим в ложь
    USB_BUFO[1]:=$63;     //Заполняем выходной буфер значениями
    USB_BUFO[2]:=N;       // Канал
    USB_BUFO[3]:=REG;     // Мощность канала
    USB_BUFO[4]:=COM;     // Программа канала
    USB_BUFO[5]:=CMD shr 8;    // Счетчик команд. Скорость прохождения цикла
    USB_BUFO[6]:=CMD and $FF;  // Счетчик команд. Скорость прохождения цикла
    USB_BUFO[7]:=PRG shr 8;   // Задействованные каналы
    USB_BUFO[8]:=PRG and $FF; // Задействованные каналы
    i:=3;   //  число попыток
    while ((not RESULT) and (i>0)) do
        if (USB_SET_FEATURE()) then
            if (USB_GET_FEATURE()) then
                RESULT:=(USB_BUFI[1]=$63) and (USB_BUFI[2]=N) and (USB_BUFI[3]=REG) and (USB_BUFI[4]=COM)
                      and (USB_BUFI[5]=USB_BUFO[5]) and (USB_BUFI[6]=USB_BUFO[6]) and (USB_BUFI[7]= USB_BUFO[7]) and (USB_BUFI[8]=USB_BUFO[8]);


end;

procedure SetStatusChannel(Channel:Byte; OnOff:Byte; PowerChannel:Byte);
 var
   cmd, prg:Integer; //скорость, цикл
   //res:Boolean;  // Состояние
   //status: array[0..15] of Byte; //массив для задания каждому каналу мощности
   programm, power:Byte;  // Программа, мощность
begin
  // Устанавливаем состояние канала
 CMD:=100; //счетчик команд. Данный параметр сказывается на скорости выполнения задаваемой программы
 PRG:=15; //счетчик циклов программы. Опытным путем было установлено, что число указывает сколько каналов будет задействовано в задаваемой программе.
  //т.е. фактически максимально число будет 15 (16 каналов от 0 до 15). Если задать 3, то задаваемая программа будет распространяться на каналы с первого по четвертый
 //res:=true;
 power:=PowerChannel; //Мощность свечения светодиода, берем из "ползунка"
 Programm:=0; //Задаем выполняемую программу
{ Варианты программы и коды
  0-nc (простое включение на заданную мощность, если мощность 0, то выключено)
  1-inc (пошаговое увеличение мощности)
  2-dec (пошаговое уменьшение мощности)
  3-inc_off (циклическое: увеличение мощности до максимума, потом выключение)
  4-dec_on (циклическое: уменьшение мощности до минимума, потом включение)
  5-inc_dec (циклическое: увеличение мощности - уменьшение мощности)
  6-dec_inc (циклическое: уменьшение мощности - увеличение мощности)
  7-inc_m_dec (циклическое: увеличение мощности - уменьшение мощности)
  8-dec_m_inc (циклическое: уменьшение мощности - увеличение мощности)
  9-run1 (мигание - включние/выключение, скорость можно задать параметром CMD)
  10-run2 (мигание - выключние/включение, скорость можно задать параметром CMD)
  11-run3 (бегущий огонь по всем 4 каналам параллельно - все выключены)
  12-run4 (бегущий огонь по всем 4 каналам параллельно - все включены)
  13-run5 (бегущий огонь по двум каналам попарно - все выключены)
  14-run6 (бегущий огонь по двум каналам попарно - все включены)
  15-run7 (бегущий огонь по 16 каналам - все выключены)
  16-run8 (бегущий огонь по 16 каналам - все включены)}
  Channel:=Channel - 1;
  USB_RCCP_WR(Channel, power, programm, cmd, prg);
end;

procedure TMainForm.trckbr1Change(Sender: TObject);
begin
 lbl1.Caption:=IntToStr(trckbr1.Position);
end;

procedure TMainForm.lst1Exit(Sender: TObject);
var
  i:Integer;
begin
 // Устанавливаем подписи к каналам
 grp1.Caption:=lst1.Values['1'];
 for i:=1 to 16 do
 with TGroupBox(FindComponent('grp' + IntToStr(i))) do
  begin
    Caption:=lst1.Values[IntToStr(i)];
  end;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
 Close;
end;

procedure TMainForm.tmr1Timer(Sender: TObject);
begin
 //stat1.Panels[0].Text:=DateTimeToStr(Now);
 if USB_ENABLE then
  begin
    btn1Click(Self);
    tmr1.Enabled:=False;
  end;
end;

function GetDataUSB():Boolean;
var
  Ch:Byte;
begin
 Result:=false;
 for Ch:=0 to 15 do
 begin
  if USB_RCCP_RD(Ch) then
   begin
     with TTrackBar(MainForm.FindComponent('trckbr' + IntToStr(Ch+1))) do
      begin
       Position:=POWER_CHANNEL[Ch];
       if Position > 0 then with TJvSwitch(MainForm.FindComponent('jvswtch' + IntToStr(Ch+1))) do StateOn:=True;
      end;
      Result:=True;
   end;

 end;

end;

procedure LoadDataTask();
begin
 with MainForm do begin
 TaskGrid.Cells[0,0]:='№';
 TaskGrid.Cells[1,0]:='Канал';
 TaskGrid.Cells[2,0]:='Мощность';
 TaskGrid.Cells[3,0]:='Событие';
 TaskGrid.Cells[4,0]:='Время';
 TaskGrid.LoadFromCSV('task.csv');
 end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
 //Выполнение необходимых процедур при создании формы
 // Инициализируем переменные

 // Ищем подключенный модуль и если нашли, то считываем данные
 
 // Заполняем название каналов
  lst1Exit(Self);

  // Заполняем названия столбцов таблицы заданий
 LoadDataTask;
end;

procedure TMainForm.ControllerHIDArrival(HidDev: TJvHidDevice);
var
 res : boolean;
begin
  if not USB_ENABLE then
        begin
        if HidDev.VendorName='www.masterkit.ru' then
            begin
            LogMemo.Lines.Append(HidDev.VendorName);
            HidDev.OpenFile;
            BUF[1]:=$2D;
            res:=HidDev.SetFeature(BUF, 9);
            res:=res and HidDev.GetFeature(BUF, 9);
            //res:=res and (BUF[1]=$1D);
            //res:=res and (BUF[2]=$30);
            if res then
               begin
                stat1.Panels[2].Text:='MP 710';
                USB:=HidDev;
                USB.OpenFile;
                USB_ENABLE:=True;
               end;
            end;
        end;
end;

procedure TMainForm.ControllerHIDRemoval(HidDev: TJvHidDevice);
begin
 // Извлечение устройства USB HID
     if USB_ENABLE then
        begin
        if USB=HidDev then
            begin
            stat1.Panels[2].Text:='Нет';
            USB_ENABLE:=False;
            //SetLeds();
            end;
        end;
end;

procedure TMainForm.jvswtch1Click(Sender: TObject);
begin
 // Включили/Выключили канал 1
 if jvswtch1.StateOn then SetStatusChannel(1,1,trckbr1.Position)
  else SetStatusChannel(1,0,0);
end;

procedure TMainForm.jvswtch2Click(Sender: TObject);
begin
 if jvswtch2.StateOn then SetStatusChannel(2,1,trckbr2.Position)
  else SetStatusChannel(2,0,0);
end;

procedure TMainForm.jvswtch3Click(Sender: TObject);
begin
 if jvswtch3.StateOn then SetStatusChannel(3,1,trckbr3.Position)
  else SetStatusChannel(3,0,0);
end;

procedure TMainForm.jvswtch4Click(Sender: TObject);
begin
 if jvswtch4.StateOn then SetStatusChannel(4,1,trckbr4.Position)
  else SetStatusChannel(4,0,0);
end;

procedure TMainForm.jvswtch5Click(Sender: TObject);
begin
 if jvswtch5.StateOn then SetStatusChannel(5,1,trckbr5.Position)
  else SetStatusChannel(5,0,0);
end;

procedure TMainForm.jvswtch6Click(Sender: TObject);
begin
 if jvswtch6.StateOn then SetStatusChannel(6,1,trckbr6.Position)
  else SetStatusChannel(6,0,0);
end;

procedure TMainForm.jvswtch7Click(Sender: TObject);
begin
 if jvswtch7.StateOn then SetStatusChannel(7,1,trckbr7.Position)
  else SetStatusChannel(7,0,0);
end;

procedure TMainForm.jvswtch8Click(Sender: TObject);
begin
 if jvswtch8.StateOn then SetStatusChannel(8,1,trckbr8.Position)
  else SetStatusChannel(8,0,0);
end;

procedure TMainForm.jvswtch9Click(Sender: TObject);
begin
 if jvswtch9.StateOn then SetStatusChannel(9,1,trckbr9.Position)
  else SetStatusChannel(9,0,0);
end;

procedure TMainForm.jvswtch10Click(Sender: TObject);
begin
 if jvswtch10.StateOn then SetStatusChannel(10,1,trckbr10.Position)
  else SetStatusChannel(10,0,0);
end;

procedure TMainForm.jvswtch11Click(Sender: TObject);
begin
 if jvswtch11.StateOn then SetStatusChannel(11,1,trckbr11.Position)
  else SetStatusChannel(11,0,0);
end;

procedure TMainForm.jvswtch12Click(Sender: TObject);
begin
 if jvswtch12.StateOn then SetStatusChannel(12,1,trckbr12.Position)
  else SetStatusChannel(12,0,0);
end;

procedure TMainForm.jvswtch13Click(Sender: TObject);
begin
 if jvswtch13.StateOn then SetStatusChannel(13,1,trckbr13.Position)
  else SetStatusChannel(13,0,0);
end;

procedure TMainForm.jvswtch14Click(Sender: TObject);
begin
 if jvswtch14.StateOn then SetStatusChannel(14,1,trckbr14.Position)
  else SetStatusChannel(14,0,0);
end;

procedure TMainForm.jvswtch15Click(Sender: TObject);
begin
 if jvswtch15.StateOn then SetStatusChannel(15,1,trckbr15.Position)
  else SetStatusChannel(15,0,0);
end;

procedure TMainForm.jvswtch16Click(Sender: TObject);
begin
 if jvswtch16.StateOn then SetStatusChannel(16,1,trckbr16.Position)
  else SetStatusChannel(16,0,0);
end;

procedure TMainForm.trckbr2Change(Sender: TObject);
begin
 lbl2.Caption:=IntToStr(trckbr2.Position);
end;

procedure TMainForm.trckbr3Change(Sender: TObject);
begin
 lbl3.Caption:=IntToStr(trckbr3.Position);
end;

procedure TMainForm.trckbr4Change(Sender: TObject);
begin
 lbl4.Caption:=IntToStr(trckbr4.Position);
end;

procedure TMainForm.trckbr5Change(Sender: TObject);
begin
 lbl5.Caption:=IntToStr(trckbr5.Position);
end;

procedure TMainForm.trckbr6Change(Sender: TObject);
begin
 lbl6.Caption:=IntToStr(trckbr6.Position);
end;

procedure TMainForm.trckbr7Change(Sender: TObject);
begin
 lbl7.Caption:=IntToStr(trckbr7.Position);
end;

procedure TMainForm.trckbr8Change(Sender: TObject);
begin
 lbl8.Caption:=IntToStr(trckbr8.Position);
end;

procedure TMainForm.trckbr9Change(Sender: TObject);
begin
 lbl9.Caption:=IntToStr(trckbr9.Position);
end;

procedure TMainForm.trckbr10Change(Sender: TObject);
begin
 lbl10.Caption:=IntToStr(trckbr10.Position);
end;

procedure TMainForm.trckbr11Change(Sender: TObject);
begin
 lbl11.Caption:=IntToStr(trckbr11.Position);
end;

procedure TMainForm.trckbr12Change(Sender: TObject);
begin
 lbl12.Caption:=IntToStr(trckbr12.Position);
end;

procedure TMainForm.trckbr13Change(Sender: TObject);
begin
 lbl13.Caption:=IntToStr(trckbr13.Position);
end;

procedure TMainForm.trckbr14Change(Sender: TObject);
begin
 lbl14.Caption:=IntToStr(trckbr14.Position);
end;

procedure TMainForm.trckbr15Change(Sender: TObject);
begin
 lbl15.Caption:=IntToStr(trckbr15.Position);
end;

procedure TMainForm.trckbr16Change(Sender: TObject);
begin
 lbl16.Caption:=IntToStr(trckbr16.Position);
end;

procedure TMainForm.btn1Click(Sender: TObject);
begin
 if GetDataUSB() then LogMemo.Lines.Append('Данные успешно считаны');
end;

procedure TMainForm.NullPowerBtnClick(Sender: TObject);
begin
 PowerTrackBar.Position:=0;
end;

procedure TMainForm.FullPowerBtnClick(Sender: TObject);
begin
 PowerTrackBar.Position:=128;
end;

procedure AppendTask(Channel,PowerChannel,Event,TimeTask:String);
var
  LastRow:Integer;
begin
  // Добавление нового задания в общий список
  LastRow:=MainForm.TaskGrid.RowCount - 1;
  with MainForm do
   begin
     TaskGrid.Cells[0,LastRow]:=IntToStr(LastRow);
     TaskGrid.Cells[1,LastRow]:=Channel;
     TaskGrid.Cells[2,LastRow]:=PowerChannel;
     TaskGrid.Cells[3,LastRow]:=Event;
     TaskGrid.Cells[4,LastRow]:=TimeTask;
     TaskGrid.RowCount:=TaskGrid.RowCount + 1;
     TaskGrid.SaveToCSV('task.csv');
   end;

end;

procedure TMainForm.btn4Click(Sender: TObject);
begin
 AppendTask(ChannelList.Text, IntToStr(PowerTrackBar.Position), EventList.Text, MaskTimeEvent.Text);
end;

procedure TMainForm.TimerEventsTimer(Sender: TObject);
begin
 //LoadNextEvent; // Загрузить следующее задание
end;

end.
