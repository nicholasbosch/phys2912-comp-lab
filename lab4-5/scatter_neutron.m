function scattVel = scatter_neutron(velocity, elasticity)
    theta = rand()*2*pi;
    scattVel = elasticity * norm(velocity) * [cos(theta) sin(theta)];
end