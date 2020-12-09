v_forward = 0.7;
v = [0:0.1:3]';
t = [0:0.1:3]';
R_ext = 10;
i = [0];
i_temp = 0;

for x = 1:30
    if(v(x) <= v_forward)
        i_temp = i_temp + 0.001;
        i = [i i_temp];
    else
        i_temp = v(x)/R_ext;
        i = [i i_temp];
    end
end
    i = i';