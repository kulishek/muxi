% ����������� �������� ����
function refreshView()
	global ConStruct;
	global Cart;
	global GA;	
	
	cla(); % ������� ���
	drawVoid(); % ������ ������
	drawCathode(); % ������ �����
 	showBC(); % ���������� ��������� �������
	drawPoints(); % ������ ��� �����
	if ~isempty(Cart)
		highlightCart(); % ������������ ��������� �����
	end
	showPointIDs(); % ������� ������ �����

	xlim(GA.XLim);
	ylim(GA.YLim);
	daspect(GA.DataAspectRatio);
end