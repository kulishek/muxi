global COLORS;
  COLORS.Void = [220, 220, 220]/255;
  COLORS.PointIDs = [220, 220, 220]/255;
  COLORS.POINTS = [25, 100, 150]/255;
  COLORS.SIDES = [0.00, 0.45, 0.74];
  COLORS.Picked = [255, 134, 13]/255;
  COLORS.EMITTER = [242, 20, 140]/255;
  COLORS.Mesh = [140 140 130]/255;

global PCART;
  PCART = []; % Корзинка для точек
  
global SCART;
  SCART = []; % Корзинка для сегментов (сторон)

global POINTS;
  POINTS = []; % Теперь ConStruct будет называться POINTS

global SIDES;
  SIDES = [];
  % SIDES.id = []; % номер стороны
  % SIDES.SP = []; % номер начальной точки
  % SIDES.EP = []; % номер конечной точки
  % SIDES.CURV = []; % кривизна сегмента
  % SIDES.prev = []; % номер предыдущего сегмента
  % SIDES.next = []; % номер следующего сегмента

global LABELS;
	LABELS = [];
	% LABELS.id = 'lname'; % строка символов, идентифицирующая группу сторон
	% LABELS.sides = [1 2]; % номера сегментов, на которые будет повешена метка

global BC; % Boundary Conditions
  BC = [];
  % BC.sides = [int]; % номера сторон
  % BC.bcType = int(1|2); % тип граничного условия
  % BC.bcValue = double(value); % значение граничного условия


global RGVP;
  RGVP = []; % Это матрица координат точек для закраски контура
             % Region visualization points

global CATS;
  CATS = [];
  % CATS.Zc = []; % Z-координата конечной точки дуги катода
  % CATS.Rc = []; % R-координата конечной точки дуги катода (его радиус)
  % CATS.Rs = []; % Радиус сферы катода
  % CATS.Zs = []; % Z-координата центрасферы
  % CATS.TN = []; % Количество траекторий
  % CATS.SD = []; % Параметр Чайлда (Sampling Distane)

global ZONES;
  ZONES = [];
  % ZONES.Z = [0.9, 2, 8]; % Z-координаты, ограничивающие зоны с постоянным шагом по Z (максимум 30 штук)
  % ZONES.R = [0, 4.3]; % R-координаты, ограничивающие зоны с постоянным шагом по R (максимум 30 штук)
  % ZONES.ZN = [110, 60]; % количество шагов по Z (максимум 15 штук)
  % ZONES.RN = [430]; % количество шагов по R (максимум 15 штук)

%global vCFIPTS; % Потенциал в угловых точках контура
%  vCFIPTS = [];
%  % vCFIPTS.Voltage = [];
%  % vCFIPTS.numPTS = [];

%global CFIPTS; % Точки контура, в которых установлен потенциал
%  CFIPTS = [];
%  % CFIPTS.FI = [];
%  % CFIPTS.numPTS = [];


%% Определяем глобальную переменную графического контекста
% ---------------------------------------
global GA; % Глобальные оси координат

