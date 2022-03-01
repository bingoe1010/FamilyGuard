%% 连接两个点
%
%
%
%
%
function Link(point_A,point_B,c)

    S_x = point_A(1);
    E_x = point_B(1);
    S_y = point_A(2);
    E_y = point_B(2);
    
    X_Mark = [S_x,E_x];
    Y_Mark = [S_y,E_y];
    line(X_Mark,Y_Mark,'color',c,'LineWidth',2);
end