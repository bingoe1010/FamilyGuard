%% 由txt的label标注绘制结果到图片上
%
%
%
%
%
function Draw_Res_from_Darknet(pic_pth,label_pth)

    fp = load(label_pth);
    
    [label_num,~]=size(fp);
    
    p = imread(pic_pth);
    imshow(p)
    
    [m,n,~] = size(p);
    
    pic_height = m;
    pic_width = n;
    hold on
    
    Color_Map = ['b','g','r','c','m','y','k'];
    
    obj_num = label_num/8;

% 结构体声明
f0 = 'body';
v0 = zeros(1,5);

f1 = 'head';
v1 = zeros(1,5);

f2 = 'heart';
v2 = zeros(1,5);

f3 = 'r_hand';
v3 = zeros(1,5);

f4 = 'l_hand';
v4 = zeros(1,5);

f5 = 'waist';
v5 = zeros(1,5);

f6 = 'r_foot';
v6 = zeros(1,5);

f7 = 'l_foot';
v7 = zeros(1,5);

person = struct(f0,v0,f1,v1,f2,v2,f3,v3,f4,v4,f5,v5,f6,v6,f7,v7);
    %创建结构体并初始化
    for index = 1:obj_num
       KeyPointsArrary(index).name = ['person_',num2str(index)];
       KeyPointsArrary(index).person   = person;
    end
    
    Collected_Data = fp;
    id_num = Collected_Data(:,1);
    body_index   = find(id_num == 0);
    head_index   = find(id_num == 1);
    heart_index  = find(id_num == 2);
    l_hand_index = find(id_num == 3);
    r_hand_index = find(id_num == 4);
    waist_index  = find(id_num == 5);
    l_foot_index = find(id_num == 6);
    r_foot_index = find(id_num == 7);
    
    human = [head_index';heart_index';l_hand_index';r_hand_index';waist_index';l_foot_index';r_foot_index'];
    
    body_box = zeros(obj_num,5);
  
    %对所有框选物体进行寻找
    for index = 1:obj_num
        
        KeyPointsArrary(index).person.body = Collected_Data(body_index(index),:);
        %框选中心位置
        c_box = Collected_Data(body_index(index),2:3);
        
        %计算个点与当前点的残差，并选取最小的残差标记为当前人的特征
        for index_of_points = 1:7
            %temp_index = [];
            c_resi = zeros(obj_num,1);
            %对每一个点进行残差计算
            for index_of_obj = 1:obj_num
                %获取第 index_of_points类点中的第index_of_obj个点的数据
                c_temp = Collected_Data(human(index_of_points,index_of_obj),2:3);
                %计算残差
                c_resi(index_of_obj) = sum([c_box - c_temp].^2);
            end
            temp_index = find(c_resi == min(c_resi));
            
            %赋值
            switch(index_of_points)
                case 1
                    KeyPointsArrary(index).person.head = Collected_Data(head_index(temp_index),:); 
                case 2
                    KeyPointsArrary(index).person.heart = Collected_Data(heart_index(temp_index),:);
                case 3
                    KeyPointsArrary(index).person.r_hand = Collected_Data(l_hand_index(temp_index),:); 
                case 4
                    KeyPointsArrary(index).person.l_hand = Collected_Data(r_hand_index(temp_index),:); 
                case 5
                    KeyPointsArrary(index).person.waist = Collected_Data(waist_index(temp_index),:); 
                case 6
                    KeyPointsArrary(index).person.r_foot = Collected_Data(l_foot_index(temp_index),:); 
                case 7
                    KeyPointsArrary(index).person.l_foot = Collected_Data(r_foot_index(temp_index),:); 
            end
        end
    end
    
T = zeros(8,5);

for index = 1:obj_num
    T(1,:) = KeyPointsArrary(index).person.body;
    T(2,:) = KeyPointsArrary(index).person.head;
    T(3,:) = KeyPointsArrary(index).person.heart;
    T(4,:) = KeyPointsArrary(index).person.l_hand;
    T(5,:) = KeyPointsArrary(index).person.r_hand;
    T(6,:) = KeyPointsArrary(index).person.waist;
    T(7,:) = KeyPointsArrary(index).person.l_foot;
    T(8,:) = KeyPointsArrary(index).person.r_foot;    
    Draw_sklone(T,[m,n],1); 
end
hold off

end
