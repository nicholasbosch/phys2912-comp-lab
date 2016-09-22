function positions = neutron_path(inner_radius, outer_radius)

    positions = [[0, 0]];
    start_position = [0, 0];
    theta = rand() * 2 * pi;
    angle = [cos(theta) sin(theta)];
    velocity = 0.2 * angle;
    position = move_in_vacuum(start_position, velocity, inner_radius);
    
    p = 0.5;
    tau = 1;
    elasticity = 0.95;

    while 1
        if norm(position) < inner_radius - 0.001
            position = move_in_vacuum(position, velocity, inner_radius);
            positions = [positions; [position(1) position(2)]];
            
        elseif norm(position) <= outer_radius
            velocity = scatter_neutron(velocity, elasticity);
            position = move_in_shield(position, velocity, tau);
            positions = [positions; [position(1) position(2)]];
            if absorbed(p) == 1
                break;
            end
        else
            position = position + velocity;
            positions = [positions; [position(1) position(2)]];
            break;
        end 
    end

end