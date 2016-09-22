function position = move_in_shield(position,velocity,tau)
	% Change position based on current velocity inside the shield
	dbar = norm(velocity)*tau;
	t =  dbar*-log(rand(1))/norm(velocity);
	position = position + t*velocity;
end