% this code gives output for a single box with borders and accepts text inside the box
% inputs are size of the outer box ,; x and y are coordinates for starting of boxes ; 
% chart_name is the name of the chart ; colour is the border colour
% row1,row2,row3,row4 divide each box into 4 rows where different bodies like 
% planets,upagrahas,special lagnas etc
% we can choose colour temperatures from http://www.december.com/html/spec/colorper.html
% to directly run this code to get a single box the input is 
% singlebox(150,150,150,"Rashi Chart","blue","Su Mo","Ma","Me","Ju")
% IN ORDER TO PRINT THE RASHI OR DIVISIONAL CHART KINDLY DOWNLOAD rashi_chart.m 
% and input_rashi_chart.m files.
% THIS FILE HAS BEEN USED IN rashi_chart.m file for printing 12 rashi boxes 
% with example values.

function singlebox(outer_boxsize,x,y,chart_name,colour,row1,row2,row3,row4)
  
% border_width gives the width between the outer and innerbox 
% difference_boxsize gives the difference between the outer and inner box sizes
border_width=outer_boxsize*8/150;
difference_boxsize = outer_boxsize*15/150;
  
% generating the outer box.
outer =uicontrol ("position",[x y outer_boxsize outer_boxsize]); 
set (outer,"backgroundcolor",colour);
set (outer,"fontweight","bold");
set(outer, "fontsize",100/7)

% generating the inner box that specifies the chartname.
inner =uicontrol ("style", "text","string",chart_name, "position",[x+border_width y+border_width outer_boxsize-difference_boxsize outer_boxsize-difference_boxsize]); 
 
% we are setting backgroundcolor for rashis as [.82 .98 .93] as an example .. if colours of rashi boxes need to be changed 
%then the colour given for rashi boxes can be set as variable and accepted as input
set(inner,"backgroundcolor",[.82 .98 .93])
% we can choose colour temperatures from http://www.december.com/html/spec/colorper.html
% we can change foregroundcolour too ie colour of the text 
set (inner,"foregroundcolor","red")
 
% we can change the font size of the text in the centre of all the rashis
set (inner, "fontsize",2.8*border_width)
 
% dividing each box into 4 rows to print planets, upagrahas and other special lagnas etc.
rashi_top= uicontrol ("style", "text","string", row1,"position",[x+border_width y+outer_boxsize-2.5*difference_boxsize  outer_boxsize-difference_boxsize outer_boxsize-8*difference_boxsize ]);
set (rashi_top,"horizontalalignment","right")
set(rashi_top,"backgroundcolor",[.82 .98 .93])
set (rashi_top, "fontsize",2.2*border_width)
 
rashi_belowtop = uicontrol ("style", "text","string", row2,"position",[x+border_width y+outer_boxsize-4.2*difference_boxsize  outer_boxsize-difference_boxsize outer_boxsize-8*difference_boxsize ]);
set (rashi_belowtop,"horizontalalignment","left")
set(rashi_belowtop,"backgroundcolor",[.82 .98 .93])
set (rashi_belowtop, "fontsize",2.2*border_width)
 
rashi_belowmiddle = uicontrol ("style", "text","string", row3,"position",[x+border_width y+outer_boxsize-7.5*difference_boxsize  outer_boxsize-difference_boxsize outer_boxsize-8.3*difference_boxsize ]);
set (rashi_belowmiddle,"horizontalalignment","right")
set(rashi_belowmiddle,"backgroundcolor",[.82 .98 .93])
set (rashi_belowmiddle, "fontsize",2.2*border_width)
 
rashi_bottom = uicontrol ("style", "text","string", row4,"position",[x+border_width y+outer_boxsize-9.5*difference_boxsize  outer_boxsize-difference_boxsize outer_boxsize-8*difference_boxsize ]);
set (rashi_bottom,"horizontalalignment","left")
set(rashi_bottom,"backgroundcolor",[.82 .98 .93])
set (rashi_bottom, "fontsize",2.2*border_width)
 
endfunction