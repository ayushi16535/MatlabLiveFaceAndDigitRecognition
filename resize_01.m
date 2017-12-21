% alexnet trains only on specific size of image i.e. 227X227X3 , so we need
% to resize our data using this code

dc = dir('D:\Downloads\VLSI_PROJECT\My_numeric_data\9\*.jpg');
for i = 1:12
    
filename=dc(i).name;
im = imread(filename);
k=imresize(im,[227,227]);
imwrite(k,filename,'jpg');
end
