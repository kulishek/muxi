function addPointsNext(number)
% ���������� ����� � ������
% ���� ������� �������� ��������������
	global Cart;
	global ConStruct;

	if numel(Cart)> 1
		fprintf('Only one point should be selected!\n');
		return
	end

	PointId = Cart;

	ConStructHead = ConStruct(1:PointId);
	ConStructTail = ConStruct(PointId+1:end);

	for i = 1:numel(ConStructTail)
		%�������� ������� ��������� ����� �� ���������� ����������� �����
		ConStructTail(i).id = ConStructTail(i).id+number;
    end
    NewPoints = [];
	NewPoints = evalNewPointsData(ConStructHead(end), ConStructTail(1), number);

	ConStruct = [ConStructHead NewPoints ConStructTail];

	refreshView(); % ��������� ���
end

function NewPoints = evalNewPointsData(HeadLast, TailFirst, number)
	global ConStruct;

	% ����� ����� � ���, ����� �� ������ ��������� � �������� ����� ��� ������������� linspace
	if HeadLast.Z~=TailFirst.Z
		tempZR(:, 1) = linspace(HeadLast.Z, TailFirst.Z, number+2);
		newZR(:, 1) = tempZR(2:end-1, 1);
	else
		newZR(:, 1) = HeadLast.Z*ones(number, 1);
	end

	if HeadLast.R~=TailFirst.R
		tempZR(:, 2) = linspace(HeadLast.R, TailFirst.R, number+2);
		newZR(:, 2) = tempZR(2:end-1, 2);
	else
		newZR(:, 2) = HeadLast.R*ones(number, 1);
	end

	if HeadLast.Voltage~=TailFirst.Voltage
		tempVoltage = linspace(HeadLast.Voltage, TailFirst.Voltage, number+2);
		newVoltage = tempVoltage(2:end-1, 2);
		tempPhi = linspace(HeadLast.Phi, TailFirst.Phi, number+2);
		newPhi(:, 2) = tempPhi(2:end-1, 2);
	else
		newVoltage = HeadLast.Voltage*ones(number, 1);
		newPhi = HeadLast.Phi*ones(number, 1);
	end

	NewPoints = [];
	for i = 1:number
		NPoint.id = HeadLast.id + i;
		NPoint.Voltage = newVoltage(i);
		NPoint.Phi = newPhi(i);
		
		NPoint.prev = NPoint.id - 1;
		% ����� ����� �� ����� ����� �� ������� HeadLast-TailFirst

		NPoint.next = NPoint.id + 1;

		NPoint.Z = newZR(i, 1);
	
		NPoint.R = newZR(i, 2);

		NewPoints = [NewPoints NPoint];
	end

end