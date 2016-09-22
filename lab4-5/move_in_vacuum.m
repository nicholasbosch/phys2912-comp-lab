function x = move_in_vacuum(o, v, r)
	% Move from the inside of the sphere to the inner surface of the shield with radius r
    t = (-(dot(v,o))+sqrt(dot(v,(o))^2-norm(v).^2*(norm(o).^2-r^2)))/norm(v)^2;
	x = o + t*v;
end