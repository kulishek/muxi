function undoLastCommand()
global ModelStateCounter;

if ModelStateCounter>1
	restoreCheckpoint(ModelStateCounter-1); % ��������������� ������ �� ���������
	fprintf("Last command undone!\n"); % ����������� ������������ � �������!
else
	fprintf("Initial state reached. Nothing to undo!\n"); % �������������, ��� ������ ��� ������ ���
end

end
