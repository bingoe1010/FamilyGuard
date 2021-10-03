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

uf_validation_image = dir('E:\3.WorkSpace\Matlab_workspace\Hispark\validation_dataset\*.jpg');
uf_validation_text  = dir('E:\3.WorkSpace\Matlab_workspace\Hispark\validation_dataset\*.txt');


num_validation_img = length(uf_validation_image);
num_validation_txt = length(uf_validation_text);

validation_floder = 'E:\3.WorkSpace\Matlab_workspace\Hispark\validation_dataset\';

for index = 1:num_validation_img
    pic_name = uf_validation_image(index).name;
    
    
    dot = strfind(pic_name,'.');
    imname = pic_name(1:dot-1);
    
    label_name = strcat(imname, '.txt');
    
    pic_pth = [validation_floder,pic_name];
    label_pth = [validation_floder,label_name];
    
    Draw_Res_from_Darknet(pic_pth,label_pth);
    
    keyvalue = input('1--->delete && 2--->next:\n');
    
    if(keyvalue == 1)
        delete(pic_pth)
        delete(label_pth)
        close all;
    elseif(keyvalue == 2)
        close all;
    end

end

disp('Finish');