function initDummy()
global POINTS
global SIDES
global CATS
global LABELS
global BC

Zcat = CATS.Zc; % ���������� ��������� ������ (������ ������, ���� ���������)
Rmax = CATS.Rc; % ������ ������ (���������� ���������� ������ ��������)
Rs = CATS.Rs; % ������ ����� ������
Zmax = floor(2*CATS.Rc); % ��� �� ����� ����� ����� ����� � ��������

alpha2 = asind(Rmax/Rs);
dzN = Rs*cosd(alpha2); % ���������� �� z2 (��������� ������) �� ������ �����
Zc1 = Zcat + dzN - Rs;

% ���������� ���������� ����� �������
ZR(:, 1) = [Zc1, Zcat, Zmax, Zmax];
ZR(:, 2) = [0.0, Rmax, Rmax, 0.0];
ZRpts = numel(ZR(:, 1)); % ���������� ����� � ������� (��� �� ���������� ���������)

% �������������� ������
for i = 1:ZRpts
	% ������������� �����
	p.id = i; % ����� �����
	
	p.prev = p.id - 1;
	if p.prev < 1
		p.prev = ZRpts;
	end
	
	p.next = p.id + 1;
	if p.next > ZRpts
		p.next = 1;
	end
	
	p.Z = ZR(i, 1);
	p.R = ZR(i, 2);
	
	POINTS = [POINTS p];
	
	% ������������� ���������
	s.id = i; % ����� ��������
	s.SP = i; % ��������� ����� �������� (Start point)
	s.EP = i+1; % �������� ����� �������� (End point)
	s.CURV = 0; % ���������� ��� �������� - ������� ������ (�������� ����� ����)
	if s.EP > ZRpts
		s.EP = 1; % �������� ������
	end
	s.prev = s.id - 1;
	if s.prev < 1
		s.prev = ZRpts;
	end
	s.next = s.id + 1;
	if s.next > ZRpts
		s.next = 1;
	end
	SIDES = [SIDES s];
	
end

SIDES([1]).CURV=1/Rs;
SIDES([3]).CURV=0;
SIDES([2]).CURV=0;
SIDES([4]).CURV=0;
% ������ ����� ������
LABELS(1).id = 'cat';
LABELS(1).sides = [1];

% ������������� ������� ��������� �� ������
BC(1).sides = 1;
BC(1).bcType = 1;
BC(1).bcValue = 0;