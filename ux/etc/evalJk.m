%% Плотность тока Ричардсона-Дэшмена
me = 9.1093897e-31;    % Масса электрона, кг
qe = 1.602177335e-19;  % Заряд электрона, Кл

kk=1.380658e-23;         % Постоянная Больцмана, Дж/К
T=1400;                % Температура, К
h=6.6260755e-34;          % постоянная плнка, Дж*с
phi_wf=1.8;                 % Работа выхода, В

constA_SI = 4*pi*me*kk^2*qe/h^3; %   Универсальная термоэлектронная постоянная, A/м^2/K^2 
JD_Am2 = constA_SI*T^2*exp(-qe*phi_wf/kk/T);
JD_Acm2 = JD_Am2*1e-4
% Анализ параметров катода
r_mm = 0.5;
S_mm2 = (r_mm)^2*pi;
S_cm2 = S_mm2*1e-2

Current=JD_Acm2*S_cm2

Ik = 0.08548 % Требуемый ток, А
Jk_Acm2 = Ik/S_cm2
Jk_Am2 = Jk_Acm2/1E-4
constB_SI = Jk_Am2/T^2/exp(-qe*phi_wf/kk/T);
constB_CGS = constB_SI*1E-4