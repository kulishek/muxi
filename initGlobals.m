global COLORS;
  COLORS.Void = [220, 220, 220]/255;
  COLORS.PointIDs = [220, 220, 220]/255;
  COLORS.POINTS = [25, 100, 150]/255;
  COLORS.SIDES = [0.00, 0.45, 0.74];
  COLORS.Picked = [255, 134, 13]/255;
  COLORS.EMITTER = [242, 20, 140]/255;
  COLORS.Mesh = [140 140 130]/255;

global PCART;
  PCART = []; % �������� ��� �����
  
global SCART;
  SCART = []; % �������� ��� ��������� (������)

global POINTS;
  POINTS = []; % ������ ConStruct ����� ���������� POINTS

global SIDES;
  SIDES = [];
  % SIDES.id = []; % ����� �������
  % SIDES.SP = []; % ����� ��������� �����
  % SIDES.EP = []; % ����� �������� �����
  % SIDES.CURV = []; % �������� ��������
  % SIDES.prev = []; % ����� ����������� ��������
  % SIDES.next = []; % ����� ���������� ��������

global LABELS;
	LABELS = [];
	% LABELS.id = 'lname'; % ������ ��������, ���������������� ������ ������
	% LABELS.sides = [1 2]; % ������ ���������, �� ������� ����� �������� �����

global BC; % Boundary Conditions
  BC = [];
  % BC.sides = [int]; % ������ ������
  % BC.bcType = int(1|2); % ��� ���������� �������
  % BC.bcValue = double(value); % �������� ���������� �������


global RGVP;
  RGVP = []; % ��� ������� ��������� ����� ��� �������� �������
             % Region visualization points

global CATS;
  CATS = [];
  % CATS.Zc = []; % Z-���������� �������� ����� ���� ������
  % CATS.Rc = []; % R-���������� �������� ����� ���� ������ (��� ������)
  % CATS.Rs = []; % ������ ����� ������
  % CATS.Zs = []; % Z-���������� �����������
  % CATS.TN = []; % ���������� ����������
  % CATS.SD = []; % �������� ������ (Sampling Distane)

global ZONES;
  ZONES = [];
  % ZONES.Z = [0.9, 2, 8]; % Z-����������, �������������� ���� � ���������� ����� �� Z (�������� 30 ����)
  % ZONES.R = [0, 4.3]; % R-����������, �������������� ���� � ���������� ����� �� R (�������� 30 ����)
  % ZONES.ZN = [110, 60]; % ���������� ����� �� Z (�������� 15 ����)
  % ZONES.RN = [430]; % ���������� ����� �� R (�������� 15 ����)

%global vCFIPTS; % ��������� � ������� ������ �������
%  vCFIPTS = [];
%  % vCFIPTS.Voltage = [];
%  % vCFIPTS.numPTS = [];

%global CFIPTS; % ����� �������, � ������� ���������� ���������
%  CFIPTS = [];
%  % CFIPTS.FI = [];
%  % CFIPTS.numPTS = [];


%% ���������� ���������� ���������� ������������ ���������
% ---------------------------------------
global GA; % ���������� ��� ���������

