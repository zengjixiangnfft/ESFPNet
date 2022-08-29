selpath = uigetdir('../Endoscope-WL/TrainDataset/','Select a folder to rescale images');

imgFiles = dir([selpath '/*.png']);
imgNUM = length(imgFiles);

for i = 1:imgNUM
    
    name =  imgFiles(i).name;
    im = imread([selpath '/' name]);
    
    im = im*255;
    imwrite(im,[selpath '/' name]);
    
end