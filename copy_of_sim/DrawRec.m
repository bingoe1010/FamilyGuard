%% 绘制矩形
%
%
%
%
%
function [nor_cx,nor_cy,nor_w,nor_h] = DrawRec(P,dis,Mark,Text)
    %左上角的点
    A = P(1:2);
    %右下角的点
    B = P(3:4);
    
    
    x1 = A(1);
    y1 = A(2);
    x2 = B(1);
    y2 = B(2);
    
    w = abs(x2 - x1);
    h = abs(y2 - y1);
    
    sx = x1;
    sy = y1;
    
    center_x = (x1 + x2)/2;
    center_y = (y1 + y2)/2;
    
    center = [center_x,center_y];
    
    if Mark == 1
        Mark_key_point(A-dis);
        Mark_key_point(B+dis); 
    elseif Mark == 2
        Mark_key_point(center);
    end

    if Text == 1
      text(x1,y1,'P_1',"FontSize",15);
      text(x2,y2,'P_2',"FontSize",15);
    elseif Text == 2
      text(center_x,center_y,'C_p',"FontSize",15);
    end

    
    rectangle('Position', [sx - dis,sy - dis,w + 2*dis,h + 2*dis],'EdgeColor','r');
    
        nor_cx = center_x;
        nor_cy = center_y;
        nor_w = w + 2*dis;
        nor_h = h + 2*dis;
        
end