% this is not a function or code. This is the .m file that saves the input for 
% gaining rashi chart or any other divisional chart 
% rashi_array accepts the planets in different rashis and prints them in the 
% middle of the rashi
% rashi_colour accepts the border colour for each rashi
% row1 to row4 can be used to give other upagrahas, special lagnas etc etc.
% we can choose colour temperatures from http://www.december.com/html/spec/colorper.html
% TO PRINT THE RASHI OR DIVISIONAL OR ASHTAKAVARGA CHARTS KINDLY DOWNLOAD 
% singlebox.m AND rashi_chart.m FILES
% TO GIVE INPUT TO PRINT RASHIS, DIVISIONAL ETC CHARTS KINDLY CHANGE THE BELOW INPUTS AND 
% RUN THIS JUST BY TYPING THE NAME OF THIS CODE IN THE COMMAND WINDOW 
% ie TYPE input_rashi_chart IN THE COMMAND WINDOW.

rashi_colour = {[0 .93 .93] ,[0 .98 .6], [0 1 1] ,[.2 1 .2] ,[.39 .82 .96] ,[.58 .44 .86] ,[.65 .26 .36] ,[.68 1 .18] ,[.69 .88 .9] ,[.8 .61 .61] ,[.8 .71 .8] ,[.86 .44 .58]};
% for rashi_array and row1 to row5 the input has 12 double codes " " separated by comma ','
% each name of graha or other bodies should be given in each pair of double codes according to their position in 1 to 12 rashis. 
% below rashi example values show Su and Mo in 1st house, Ma in second house, 3rd house empty, 4th house has Ju and so on.
rashi_array = {"Su Mo" ,"(Ma)" ," ","(Me)" ,"Ju" ,"Ve" ,"Sa" ,"Ra" ,"Ke" ," " ," " ," "};

 row1= {"A2 A3","A4","A5","A6","A7"," "," "," ","A8","A9"," "," "};
 row2= {"GL"," ","MD","BL","  ","HL"," ","GL","VGL"," "," ","SL"};
 row3= {" "," ","PP","  ","IL"," ","  ","BB"," "," ","DH","Vy"};
 row4= {"IC","UP"," "," "," "," "," ","KL","MR","AP","YG","PS"};


% we are calling rashi_chart.m file and printing the center box and 12 rashis with planets , upagrahas etc
% while giving large boxsize , kindly reduce the y coordinate in order for the chart 
% to fit in panel and not get cutoff.
% here in the below input 120 is the boxsize, 150 is x coordinate, 10 is y coordinate, 
% "Rashi" is the name of chart, rashi_array gives planets specified
% rashi_colour specifies border colour for the rashis
% row1, row2, row3, row4 are 4 portions of rashi where upagrahas and special lagnas can be given.

rashi_chart(160,150,10,"Rashi",rashi_array,rashi_colour,row1,row2,row3,row4)

