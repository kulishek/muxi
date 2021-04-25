% ������������� �������� ������� �������
opath = path; % old path
workdir = pwd;
muxiFS = sprintf('%s; ux; ux/display; ux/modify; ux/BC; ux/labels; ux/mesh; render; bin; saves; drivers; drivers/comi; drivers/inr', workdir);
muxiFS = sprintf('%s; debug; temp; TESTBENCH; math; out', muxiFS);
% ��������� ������ � ��������� �������� ������� �� ��������� �������������
subdirs = split(muxiFS); 
% ������ �������������, ���� ��� �� ���������� (���� ��� ������������ ���� folder (7) � ������ �������������)
for i=2:numel(subdirs)
	subdir = cell2mat(subdirs(i));
  if exist(subdir(1:end-1),'dir') ~= 7
		subdir(1:end-1) % ����� ����� ������������� ��� �������
		mkdir(subdir(1:end-1));
	end
end
path(opath, muxiFS); % new path
clear opath;
