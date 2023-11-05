
%% SCS��·�ж���ֵ�궨
SCS_Error_5V = 4500;                           %unit: mV  �ж�ģ��SCS�Ƿ���5v��Դ��·
SCS_Error_5V = ecucoder_cal(SCS_Error_5V);

SCS_Error_GND = 200;                           %unit: mV  �ж�ģ��SCS�Ƿ���GND��·
SCS_Error_GND = ecucoder_cal(SCS_Error_GND);
%% ����̤��궨
APPS_Map = [0,1000];                            %����̤�忪��

APPS1_Voltage  = [445,1800];                     %����̤�崫����1�ź� ��λ mV
APPS1_Voltage  = ecucoder_cal(APPS1_Voltage);    %��Voltage��Ϊ�궨��

APPS2_Voltage  = [1135,2710];                     %����̤�崫����2�ź� ��λ mV
APPS2_Voltage  = ecucoder_cal(APPS2_Voltage);    %��Voltage��Ϊ�궨��
%% �ƶ�̤��궨
BP_Map = [0,1000];

BP_F_Voltage  = [500,2800];
BP_F_Voltage  = ecucoder_cal(BP_F_Voltage);

BP_R_Voltage  = [510,1200];
BP_R_Voltage  = ecucoder_cal(BP_R_Voltage);
%% β�����ȱ궨
Brk_luminance = 50;
Brk_luminance  = ecucoder_cal(Brk_luminance);

HardBrk_luminance = 150;
HardBrk_luminance  = ecucoder_cal(HardBrk_luminance);
%% ���ٴ������궨
SPD_Coef = 1884/40;                               %����ϵ�� = �����ܳ�/���ֳ���
%% ��λ�ƴ������궨
linear_Map = [0,1000];
linear_Map = ecucoder_cal(linear_Map);

linear_RR_Map = [0,24000];
linear_RR_Map  = ecucoder_cal(linear_RR_Map);

linear_FR_Map = [0,24000];
linear_FR_Map  = ecucoder_cal(linear_FR_Map);

linear_RL_Map = [0,24000];
linear_RL_Map  = ecucoder_cal(linear_RL_Map);

linear_FL_Map = [0,24000];
linear_FL_Map  = ecucoder_cal(linear_FL_Map);
%% ת���λ�ƴ������궨
Angle_Map = [0,1000];
Angle_Map = ecucoder_cal(Angle_Map);

Angle = 0;
Angle = ecucoder_cal(Angle);
%% �����ȹ���궨
Tmanage_Map = [0,100];

Accu_FAN_threshold = [25,30];
Accu_FAN_threshold = ecucoder_cal(Accu_FAN_threshold);

Tail_FAN_threshold = [25,30];
Tail_FAN_threshold = ecucoder_cal(Tail_FAN_threshold);

Pump_threshold = 30;
Pump_threshold = ecucoder_cal(Pump_threshold);

Radiator_FAN_threshold = [30,40];
Radiator_FAN_threshold = ecucoder_cal(Radiator_FAN_threshold);
%% ��ʻ�߼��궨
BP_F_threshold = 10;                                                        %��ѹ̤�崥����ʻ�߼���ֵ unit: �ٷֱ�
BP_F_threshold = ecucoder_cal(BP_F_threshold);

APPS_threshold = 50;                                                         %����̤�崥����ʻ�߼���ֵ unit: �ٷֱ�
APPS_threshold = ecucoder_cal(APPS_threshold);

Beep_Time = 2;                                                              %����������ʱ�� unit: s������1s ���3s��
Beep_Time = ecucoder_cal(Beep_Time);
%% Kemo���������ָ���Ծ�궨
MaxTorqChangePerSec = 25000;                                               
MaxTorqChangePerSec = ecucoder_cal(MaxTorqChangePerSec);

MaxRPMchangePerSec = 20000;
MaxRPMchangePerSec = ecucoder_cal(MaxRPMchangePerSec);
%% Ť��Map�궨

MaxRPM  = 5400;                %���ת��  unit: RPM 
MaxTorq = 180;                 %���Ť��  unit: Nm
MaxPow  = 40;                  %�����  unit: W

%����Mapͼ ��X�᣺ת�٣�Y�᣺����̤�忪�ȣ�Z�᣺Ť�أ�
%--------------------------------------------------%
Motor_RPM_Map = (0:ceil(MaxRPM/100))*100;                                   % X����� ���ת��  unit: RPM

Len = length(Motor_RPM_Map);
Motor_Torq_MAP = zeros(2,Len);
    for i=1:Len-1
        Motor_Torq_MAP (2,i) = min(MaxPow*9548.8/Motor_RPM_Map(i),MaxTorq); %���Ť��
    end
    
surf(Motor_RPM_Map,APPS_Map,Motor_Torq_MAP,'LineStyle',':','FaceColor','interp')
%--------------------------------------------------%
Torq_percentage_Map= Motor_Torq_MAP/MaxTorq*1000;                           %Ť�ذٷֱ�  unit: Nm  % Z����� ���Ť������ٷֱ�
%% ��װģʽ�궨
TEST = 0;
TEST = ecucoder_cal(TEST);

FactoryTestEnable = 0;
FactoryTestEnable = ecucoder_cal(FactoryTestEnable);

BeeperTest   = 0;
BeeperTest   = ecucoder_cal(BeeperTest);

R2D_Light_Test   = 0;
R2D_Light_Test   = ecucoder_cal(R2D_Light_Test);

BMSLedTest   = 0;
BMSLedTest   = ecucoder_cal(BMSLedTest);

IMDLedTest   = 0;
IMDLedTest   = ecucoder_cal(IMDLedTest);

Tail_Light_Test = 0;
Tail_Light_Test = ecucoder_cal(Tail_Light_Test);

DCDC_Relay_Test = 0;
DCDC_Relay_Test = ecucoder_cal(DCDC_Relay_Test);

Accu_FAN_Test = 0;
Accu_FAN_Test = ecucoder_cal(Accu_FAN_Test);

Tail_FAN_Test = 0;
Tail_FAN_Test = ecucoder_cal(Tail_FAN_Test);

Pump_Test = 0;
Pump_Test = ecucoder_cal(Pump_Test);

Radiator_FAN_Test = 0;
Radiator_FAN_Test = ecucoder_cal(Radiator_FAN_Test);