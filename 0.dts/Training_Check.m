% @Author: 谢冰
%
% @Description:
%
% @Mail:binxie@stu.xidian.edu.cn
%
clearvars
clc

cd('E:\3.WorkSpace\Matlab_workspace\Hispark');



%读取所有的原始图片数据
uf_training_image = dir('E:\3.WorkSpace\Matlab_workspace\Hispark\training_dataset\*.jpg');
uf_training_text  = dir('E:\3.WorkSpace\Matlab_workspace\Hispark\training_dataset\*.txt');


num_traning_img = length(uf_training_image);
num_traning_txt = length(uf_training_text);


training_floder = 'E:\3.WorkSpace\Matlab_workspace\Hispark\training_dataset\';



for index = 1:num_traning_img
    
    pic_name = uf_training_image(index).name;
    
    
    dot = strfind(pic_name,'.');
    imname = pic_name(1:dot-1);
    
    label_name = strcat(imname, '.txt');
    
    pic_pth = [training_floder,pic_name];
    label_pth = [training_floder,label_name];
    
    Draw_Res_from_Darknet(pic_pth,label_pth);
    
    %keyvalue = input('1--->delete && 2--->next:\n');
    
    keyvalue = input('');
    
    if(keyvalue == 1)
        %disp('========Delete========');
        delete(pic_pth)
        delete(label_pth)
        close all;
    elseif(keyvalue == 2)
        %disp('--------Continue--------');
        close all;
    else
        delete(pic_pth)
        delete(label_pth)
        %disp('>>>>>>>>>Default<<<<<<<<<');
        close all;  
    end

end

disp('Finish');