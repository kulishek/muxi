function pickPoints(PointIds)
% ���������� ����� � �������
	global Cart;
	global ConStruct;

	for i = PointIds
		if ~ismember(i, [ConStruct.id])
			fprintf('Point #%d does not exist!\n',i);
			continue
		end
		if ~ismember(i, Cart)
			Cart = [Cart i];
		else
			fprintf('Point #%d is already in the Cart!\n', i);
		end
	end

	refreshView(); % ��������� ���
end

