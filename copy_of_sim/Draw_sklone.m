%% 绘制骨架
%
%
%
%
%
function Draw_sklone(A,Size,mark)
    hold on
   light_skelenton = [
                [0,1];
                [1, 2];
                [1, 3];
                [1, 4];
                [4, 5];
                [4, 6];
                ] + 1 + 1;
   
   light_points = [0,1,2,3,4,5,6] + 2;
    
   light_keypoint_name = {'0 - head', '1 - neck', '2 - l hand', '3 - r hand', '4 - waist', ...
                '5 - l foot', '6 - r foot'};
   
   Body = A(1,2:5);
   Head = A(2,2:5);
   
   pic_width = Size(2);
   pic_height = Size(1);
   
   %人体框信息转换
   real_body_p1_x = (Body(1) - 0.5*Body(3))*pic_width;
   real_body_p2_x = (Body(1) + 0.5*Body(3))*pic_width;
   
   real_body_p1_y = (Body(2) - 0.5*Body(4))*pic_height;
   real_body_p2_y = (Body(2) + 0.5*Body(4))*pic_height;
   
   real_head_p1_x = (Head(1) - 0.5*Head(3))*pic_width;
   real_head_p2_x = (Head(1) + 0.5*Head(3))*pic_width;
   
   real_head_p1_y = (Head(2) - 0.5*Head(4))*pic_height;
   real_head_p2_y = (Head(2) + 0.5*Head(4))*pic_height; 
   
   REAL_BODY_MARK = [real_body_p1_x,real_body_p1_y,real_body_p2_x,real_body_p2_y];
   
   REAL_HEAD_MARK = [real_head_p1_x,real_head_p1_y,real_head_p2_x,real_head_p2_y];
   
    %标记人体框
    DrawRec(REAL_BODY_MARK,0,1,2);
    
    %标记头部框
    DrawRec(REAL_HEAD_MARK,0,1,2);   
    
   Color_Map = ['b','g','r','c','m','y','k'];
    
   [row,~] = size(light_skelenton);
   
   for index = 1:(row + 1)
       REAL_Mark_x = A(light_points(index),2)*pic_width;
       REAL_Mark_y = A(light_points(index),3)*pic_height;
       Pmark = [REAL_Mark_x,REAL_Mark_y];
       
       Mark_key_point(Pmark);
       
       if mark == 0
           tag = num2str(light_points(index) - 1);
       elseif mark == 1
           tag = string(light_keypoint_name(index));
       end

        text(Pmark(1),Pmark(2),tag,"FontSize",25);
   end
   
   for index = 1:row
       P_1_temp = A(light_skelenton(index,1),2:3);
       P_2_temp = A(light_skelenton(index,2),2:3);
       
       REAL_Mark_1_x = P_1_temp(1)*pic_width;
       REAL_Mark_1_y = P_1_temp(2)*pic_height;
       P_1 = [REAL_Mark_1_x,REAL_Mark_1_y];
       
       REAL_Mark_2_x = P_2_temp(1)*pic_width;
       REAL_Mark_2_y = P_2_temp(2)*pic_height;
       P_2 = [REAL_Mark_2_x,REAL_Mark_2_y];  
       
       Link(P_1,P_2,Color_Map(mod(index,5)+1));
   end
   
   hold off
end