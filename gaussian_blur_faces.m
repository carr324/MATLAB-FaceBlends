%% Face stimulus generation and blurring script
% Evan W. Carr, December 2016 (Columbia Business School)

%% START WITH 1-FACE IMAGES:
baseDir = 'C:\Users\Downloads';     % REPLACE WITH WORKING DIRECTORY
dir_1face = [baseDir filesep() '1-face'];
cd(dir_1face);

for faceImg = 1:32     % 32 different 1-face images
    
    faceImgPath = [dir_1face filesep() 'setup images' filesep() num2str(faceImg) '-smooth-crop.jpg'];
    
    [pathStr, faceName, faceExt] = fileparts(faceImgPath);
    
    faceIndex = strsplit(faceName, '-');
    faceSaveName = [char(faceIndex(1)) '-final.jpg'];

    faceImgBlur1 = imread(faceImgPath);
    faceImgBlur2 = imgaussfilt(faceImgBlur1, 2);
    
    % Resize the image before saving:
    [height, width, dim] = size(faceImgBlur2);
    faceImgBlur2 = imresize(faceImgBlur2, [height/2, width/2]);
    
    imwrite(faceImgBlur2, faceSaveName);

end

%% DO SIMILAR LOOP FOR 2-FACE IMAGES (ADAPT BLUR TO 1/2 SD OF 1-FACE IMAGES):
dir_2face = [baseDir filesep() '2-face'];
cd(dir_2face);

for faceImg = 1:2:32     % 16 different 2-face images
    
    faceImgPath = [dir_2face filesep() 'setup images' filesep() ...
        num2str(faceImg) '_' ...
        num2str(faceImg + 1) ...
        '-crop.jpg'];
    
    [pathStr, faceName, faceExt] = fileparts(faceImgPath);
    
    faceIndex = strsplit(faceName, '-');
    faceSaveName = [char(faceIndex(1)) '-final.jpg'];
    
    faceImgBlur1 = imread(faceImgPath);
    faceImgBlur2 = imgaussfilt(faceImgBlur1, 1);
    
    % Resize the image before saving:
    [height, width, dim] = size(faceImgBlur2);
    faceImgBlur2 = imresize(faceImgBlur2, [height/2, width/2]);
    
    imwrite(faceImgBlur2, faceSaveName);

end


%% DO SIMILAR LOOP FOR 4-FACE IMAGES (ADAPT BLUR TO 1/2 SD OF 2-FACE IMAGES):
dir_4face = [baseDir filesep() '4-face'];
cd(dir_4face);

for faceImg = 1:4:32     % 8 different 4-face images
    
    faceImgPath = [dir_4face filesep() 'setup images' filesep() ...
        num2str(faceImg) '_' ...
        num2str(faceImg + 1) '_' ...
        num2str(faceImg + 2) '_' ...
        num2str(faceImg + 3) ...
        '-crop.jpg'];
    
    [pathStr, faceName, faceExt] = fileparts(faceImgPath);
    
    faceIndex = strsplit(faceName, '-');
    faceSaveName = [char(faceIndex(1)) '-final.jpg'];
    
    faceImgBlur1 = imread(faceImgPath);
    faceImgBlur2 = imgaussfilt(faceImgBlur1, .5);
    
    % Resize the image before saving:
    [height, width, dim] = size(faceImgBlur2);
    faceImgBlur2 = imresize(faceImgBlur2, [height/2, width/2]);
    
    imwrite(faceImgBlur2, faceSaveName);

end

%% DO SIMILAR LOOP FOR 8-FACE IMAGES (ADAPT BLUR TO 1/2 SD OF 4-FACE IMAGES):
dir_8face = [baseDir filesep() '8-face'];
cd(dir_8face);

for faceImg = 1:8:32     % 4 different 8-face images
    
    faceImgPath = [dir_8face filesep() 'setup images' filesep() ...
        num2str(faceImg) '_' ...
        num2str(faceImg + 1) '_' ...
        num2str(faceImg + 2) '_' ...
        num2str(faceImg + 3) '_' ...
        num2str(faceImg + 4) '_' ...
        num2str(faceImg + 5) '_' ...
        num2str(faceImg + 6) '_' ...
        num2str(faceImg + 7) ...
        '-crop.jpg'];
    
    [pathStr, faceName, faceExt] = fileparts(faceImgPath);
    
    faceIndex = strsplit(faceName, '-');
    faceSaveName = [char(faceIndex(1)) '-final.jpg'];
    
    faceImgBlur1 = imread(faceImgPath);
    faceImgBlur2 = imgaussfilt(faceImgBlur1, .25);
    
    % Resize the image before saving:
    [height, width, dim] = size(faceImgBlur2);
    faceImgBlur2 = imresize(faceImgBlur2, [height/2, width/2]);
    
    imwrite(faceImgBlur2, faceSaveName);

end
