% Question 1
%% Converting gifs to png images and saving
img1 = imread('cup.gif');
imwrite(img1,"cup_png.png");

img2 = imread('tree.gif');
imwrite(img2,"tree_png.png");

img3 = imread('apple.gif');
imwrite(img3,"apple_png.png");
%% Reading the images 

cup = imread('cup_png.png');
tree = imread('tree_png.png');
apple = imread('apple_png.png');
%% Grayscaling images

bincup = imbinarize(cup,0.5);
bintree = imbinarize(tree,0.5);
binapple = imbinarize(apple,0.5);

%% Skeletonization of the three images

skcup = bwmorph(bincup,'skel',Inf);
figure, imshow(skcup);title('Skeleton Cup')
imwrite(skcup,"skeleton cup.png");

sktree = bwmorph(bintree,'skel',Inf);
figure, imshow(sktree);title('Skeleton Tree')
imwrite(sktree,"skeleton tree.png");

skapple = bwmorph(binapple,'skel',Inf);
figure, imshow(skapple);title('Skeleton Apple')
imwrite(skapple,"skeleton apple.png");


%% Thinning of the images

thincup = bwmorph(bincup,'thin',Inf);
figure, imshow(thincup);title('Thinned Cup')
imwrite(thincup,"thinned cup.png");

thintree = bwmorph(bintree,'thin',Inf);
figure, imshow(thintree);title('Thinned Tree')
imwrite(thintree,"thinned tree.png");

thinapple = bwmorph(binapple,'thin',Inf);
figure, imshow(thinapple);title('Thinned Apple')
imwrite(thinapple,"thinned apple.png");

%Question 2 Morphological Operations to count number of stars
%% reading and binarizing the image  
stars = imread('stars.png');
figure, imshow(stars), title('Original Stars')

binstars = imbinarize(stars,0.5)
figure, imshow(binstars), title('Binarized Stars')
imwrite(binstars,"Binarized stars.png")

%% Counting the number of objects in the binary image

[L,n] = bwlabel(binstars)
fprintf("Number of stars in the given image: %i \n",n);





