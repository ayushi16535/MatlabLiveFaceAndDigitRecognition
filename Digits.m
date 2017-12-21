% Identifying numeric digits from 0 to 9
% 'My_numeric_data' is the folder containg the data 
trainingImages = imageDatastore('My_numeric_data',...   %imageDatastore stores all images in the folder with folder name as their label
    'IncludeSubfolders',true,...
    'LabelSource','foldernames');

%loading alexnet
net = alexnet;
% 'fc7' layer is used to extract feature of trainingImages
layer = 'fc7';
trainingFeatures = activations(net,trainingImages,layer);  %extraction of features of trainingImages

trainingLabels = trainingImages.Labels;     %storing the label of trainingImages

% training the SVM classifier with the extracted trainingFeatures and their respective trainingLabels 
classifier = fitcecoc(trainingFeatures,trainingLabels);

%predicting digits using webcam
camera = webcam;    %initializing camera
while true
    im = snapshot(camera);       % Take a picture
    image(im);                   % Show the picture
    im = imresize(im,[227 227]); % Resize the im for alexnet
    imfeature = activations(net,im,layer);  %extract the features of im
    label =  predict(classifier,imfeature);    % predict the label of picture 'im'
    title(char(label));          % Show the class label
    drawnow
end




