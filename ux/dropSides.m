function dropSides(SideIds)
% удаление сегментов из корзины
	global SCart;
	global Sides;

	for i = SideIds
		if ~ismember(i, [Sides.id])
			fprintf('Side #%d does not exist!\n',i);
			continue
		end
		if ~ismember(i, SCart)
			fprintf('Side #%d is not in the SCart!\n', i);
		end
		id = find(SCart==i);
		SCart(id)=[];
		if ~ismember(Sides(i).next, SCart)
			dropPoints(Sides(i).next);
		end
		if ~ismember(Sides(i).prev, SCart)
			dropPoints(Sides(i).id);
		end
	end
	
	refreshView(); % Обновляем вид
end
