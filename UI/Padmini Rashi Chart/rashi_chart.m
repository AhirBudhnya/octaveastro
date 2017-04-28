% This code is made to print 12 rashis of a rashi or divisional or Ashtakavarga chart.
% the box size can be increased to use for rashi and divisional charts and
% its size can also be decreased to print ashtakavarga charts with small box size
% as input we are accepting the boxsize ie the size of the middle square of a chart,
% a and b variables are used to accept the coordinates of the box
% and rest are the variables that accept planet names,border colour,other upagrahas 
% and special lagnas in any/all rashis  
% while giving large boxsize , kindly reduce the y coordinate in order for the chart 
% to fit in panel and not get cutoff.
% we can choose colour temperatures from http://www.december.com/html/spec/colorper.html
% in this code we are calling singlebox.m file which prints one rashi box to print 
% the middle box and all 12 rashis
% TO RUN THIS FILE KINDLY DOWNLOAD singlebox.m AND input_rashi_chart.m  files too.
% THE INPUT EXAMPLE IS GIVEN IN input_rashi_chart.m FILE. THE PARAMETERS NEED TO BE 
% CHANGED ACCORDING TO THE REQUIREMENT
% AND TO BE RUN DIRECTLY JUST BY TYPING input_rashi_chart IN THE COMMAND WINDOW. 


function rashi_chart(boxsize,a,b,chartname,rashi_array,rashi_colour,row1,row2,row3,row4)
  
% creating a panel for the rashi charts
p = uipanel("position", [0 -.62 1.7 1.6]);
set(p,"borderwidth",3,"bordertype","etchedout","fontweight","bold","fontsize",15,"foregroundcolor","black","highlightcolor","blue");
set(p,"titleposition","leftbottom","shadowcolor","green");
c=boxsize/2; % c is used as boxsize for rashis which are smaller than the centre box containing the chart name

% calling the function "singlebox" to create the centre box and all the rashis with planets,upagrahas,special lagnas etc.
singlebox(boxsize,a,b,chartname,"green"," "," "," "," ")
singlebox(boxsize/2,a,b+boxsize,rashi_array{1},rashi_colour{1},row1{1},row2{1},row3(1),row4{1})
singlebox(boxsize/2,a+c,b+boxsize,rashi_array{2},rashi_colour{2},row1{2},row2{2},row3{2},row4{2})
singlebox(boxsize/2,a+c*2,b+boxsize,rashi_array{3},rashi_colour{3},row1{3},row2{3},row3{3},row4{3})
singlebox(boxsize/2,a+c*2,b+c,rashi_array{4},rashi_colour{4},row1{4},row2{4},row3{4},row4{4})
singlebox(boxsize/2,a+c*2,b,rashi_array{5},rashi_colour{5},row1{5},row2{5},row3{5},row4{5}) 
singlebox(boxsize/2,a+c*2,b-c,rashi_array{6},rashi_colour{6},row1{6},row2{6},row3{6},row4{6})
singlebox(boxsize/2,a+c,b-c,rashi_array{7},rashi_colour{7},row1{7},row2{7},row3{7},row4{7})
singlebox(boxsize/2,a,b-c,rashi_array{8},rashi_colour{8},row1{8},row2{8},row3{8},row4{8})
singlebox(boxsize/2,a-c,b-c,rashi_array{9},rashi_colour{9},row1{9},row2{9},row3{9},row4{9})
singlebox(boxsize/2,a-c,b,rashi_array{10},rashi_colour{10},row1{10},row2{10},row3{10},row4{10})
singlebox(boxsize/2,a-c,b+c,rashi_array{11},rashi_colour{11},row1{11},row2{11},row3{11},row4{11})
singlebox(boxsize/2,a-c,b+boxsize,rashi_array{12},rashi_colour{12},row1{12},row2{12},row3{12},row4{12})

endfunction