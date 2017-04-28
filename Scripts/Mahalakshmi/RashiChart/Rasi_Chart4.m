  %Creating a function with name Rasi_Chart4 and passing the values as the arguments. 
  % the values are Rashi from 1 to 12 ,each rashi will receive 3 parameters.
  %Boxsize is the side of the Rashi box ie size of the chart.
  %xsize is the x coordinate position ie length.
  %ysize is the y coordinate position ie width.


  % To run the function  Rasi_Chart4 (90,10,10,"Jataka Detail","Mo Gl ","Su"," ","PP","Ma"," "," ","Hl","A11 A6 "," ","Fp"," ","Al","Ra","Ul"," ","(Ju)","A8"," "," ","A9 A4 ","Sl ","As","A3","BB","(Sa)","A10 A5 "," "," ","A7","Gk","Ke"," ","Ve Md ","Me","A2")
    function Rasi_Chart4 (Boxsize,xsize,ysize,CenterName, MeshaU, MeshaM, MeshaL, VrishbaU, VrishbaM, VrishbaL, MithunaU, MithunaM, MithunaL,KarkaU,KarkaM,KarkaL,SimhaU,SimhaM,SimhaL,KanyaU,KanyaM,KanyaL,TulaU,TulaM,TulaL,VrischikaU,VrischikaM,VrischikaL,DhanusU,DhanusM,DhanusL,MakaraU,MakaraM,MakaraL,KumbhaU,KumbhaM,KumbhaL,MeenaU,MeenaM,MeenaL)
    f=figure

  % Giving title as Rashi Chart and their position are [0 0 1 1]
  % Adjusting  the size of the panel according to the chart size
    p = uipanel ("title", "Rashi Chart", "position", [0 0 1 1 ]);
    
  % Setting the border ,bordertype,fontweight,fontsize,colour,titleposition,backgroundcolor for the border
    set(p,"borderwidth",3,"bordertype","etchedout","fontweight","bold","fontsize",15,"foregroundcolor","black","highlightcolor","blue");
    set(p,"titleposition","leftbottom","shadowcolor","green","backgroundcolor",[0.8	1.0	1.0]);


  % Name of the  parent handler is p and their style is text. The string is recevied  through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
   Center =uicontrol ("parent", p, "style", "text","string", CenterName , "position",[xsize+1*Boxsize ysize+1*Boxsize 2*Boxsize 2*Boxsize]); 


  % setting the backgroundcolor color,foregroundcolor, fontweight,verticalalignment,fontsize  for the uicontrol center.
    
    set (Center,"backgroundcolor",[0.8	1.0	1.0],"foregroundcolor","black","fontweight","bold");
    set (Center,"fontweight","bold","verticalalignment","middle");
    set (Center,"fontweight","bold","horizontalalignment","center");
    set(Center, "fontsize",Boxsize/5) 

  % Placing a edit box for appling a border to the Mesha text box control .
  % Positioning them according to coordinates.
    Mesha_border =uicontrol ("parent", p, "style", "edit", "position",[(xsize+1*Boxsize)-1 (ysize+3*Boxsize)-1 Boxsize+2 Boxsize+2]);
    
  % Name of the  parent handler is p and their style is text. The string are MeshaU,MeshaM,MeshaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .  
   
    Mesha_Upper = uicontrol ("parent", p, "style", "text","string", MeshaU,"position",[xsize+1*Boxsize ysize+3*Boxsize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Mesha_Middle = uicontrol ("parent", p, "style", "text","string", MeshaM,"position",[xsize+1*Boxsize ysize+3*Boxsize+(Boxsize/4) Boxsize Boxsize/2]);
    Mesha_Lower = uicontrol ("parent", p, "style", "text","string", MeshaL,"position",[xsize+1*Boxsize ysize+3*Boxsize Boxsize Boxsize/4]);

  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Mesha. 
  % Adjusting them according to the chart size.
  
    set (Mesha_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Mesha_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Mesha_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Mesha_Upper,"fontsize",Boxsize/10);
    set(Mesha_Middle,"fontsize",Boxsize/9);
    set(Mesha_Lower,"fontsize",Boxsize/10);

  % Placing a edit box for appling a border to the Vrishba text box control .
  % Positioning them according to coordinates.
  
    Vrishba_border =uicontrol ("parent", p, "style", "edit", "position",[(xsize+2*Boxsize)-1 (ysize+3*Boxsize)-1 Boxsize+2 Boxsize+2]);
    
  % Name of the  parent handler is p and their style is text. The string are VrishbaU,VrishbaM,VrishbaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
  
    Vrishba_Upper = uicontrol ("parent", p, "style", "text","string", VrishbaU,"position",[xsize+2*Boxsize ysize+3*Boxsize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Vrishba_Middle = uicontrol ("parent", p, "style", "text","string", VrishbaM,"position",[xsize+2*Boxsize ysize+3*Boxsize+(Boxsize/4) Boxsize Boxsize/2]);
    Vrishba_Lower = uicontrol ("parent", p, "style", "text","string", VrishbaL,"position",[xsize+2*Boxsize ysize+3*Boxsize Boxsize Boxsize/4]);

    set (Vrishba_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Vrishba_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Vrishba_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Mesha. 
  % Adjusting them according to the chart size.
    
    set(Vrishba_Upper,"fontsize",Boxsize/10);
    set(Vrishba_Middle,"fontsize",Boxsize/9);
    set(Vrishba_Lower,"fontsize",Boxsize/10);

  % Placing a edit box for appling a border to the Mithuna text box control .
  % Positioning them according to coordinates.
    Mithuna_border =uicontrol ("parent", p, "style", "edit", "position",[(xsize+3*Boxsize)-1 (ysize+3*Boxsize)-1 Boxsize+2 Boxsize+2]);
  
  % Name of the  parent handler is p and their style is text. The string are MithunaU,MithunaM,MithunaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
  
    Mithuna_Upper = uicontrol ("parent", p, "style", "text","string", MithunaU,"position",[xsize+3*Boxsize ysize+3*Boxsize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Mithuna_Middle = uicontrol ("parent", p, "style", "text","string", MithunaM,"position",[xsize+3*Boxsize ysize+3*Boxsize+(Boxsize/4) Boxsize Boxsize/2]);
    Mithuna_Lower = uicontrol ("parent", p, "style", "text","string", MithunaL,"position",[xsize+3*Boxsize ysize+3*Boxsize Boxsize Boxsize/4]);

    set (Mithuna_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Mithuna_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Mithuna_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Mesha. 
  % Adjusting them according to the chart size.
    
    set(Mithuna_Upper,"fontsize",Boxsize/10);
    set(Mithuna_Middle,"fontsize",Boxsize/9);
    set(Mithuna_Lower,"fontsize",Boxsize/10);
    
  % Placing a edit box for appling a border to the Karka text box control .
  % Positioning them according to coordinates.
  
    Karka_border =uicontrol ("parent", p, "style", "edit", "position",[(xsize+3*Boxsize)-1 (ysize+2*Boxsize)-1 Boxsize+2 Boxsize+2]);
    
  % Name of the  parent handler is p and their style is text. The string are KarkaU,KarkaM,KarkaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
  
    Karka_Upper = uicontrol ("parent", p, "style", "text","string", KarkaU,"position",[xsize+3*Boxsize ysize+2*Boxsize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Karka_Middle = uicontrol ("parent", p, "style", "text","string", KarkaM,"position",[xsize+3*Boxsize ysize+2*Boxsize+(Boxsize/4) Boxsize Boxsize/2]);
    Karka_Lower = uicontrol ("parent", p, "style", "text","string", KarkaL,"position",[xsize+3*Boxsize ysize+2*Boxsize Boxsize Boxsize/4]);
    
  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Karka. 
  % Adjusting them according to the chart size.
    set (Karka_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Karka_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Karka_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Karka_Upper,"fontsize",Boxsize/10);
    set(Karka_Middle,"fontsize",Boxsize/9);
    set(Karka_Lower,"fontsize",Boxsize/10);
    
  % Placing a edit box for appling a border to the Simha text box control .
  % Positioning them according to coordinates.
  
    Simha_border =uicontrol ("parent", p, "style", "edit","position",[(xsize+3*Boxsize)-1 (ysize+1*Boxsize)-1 Boxsize+2 Boxsize+2]);
    
  % Name of the  parent handler is p and their style is text. The string are SimhaU,SimhaM,SimhaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
  
    Simha_Upper = uicontrol ("parent", p, "style", "text","string", SimhaU,"position",[xsize+3*Boxsize ysize+1*Boxsize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Simha_Middle = uicontrol ("parent", p, "style", "text","string", SimhaM,"position",[xsize+3*Boxsize ysize+1*Boxsize+(Boxsize/4) Boxsize Boxsize/2]);
    Simha_Lower = uicontrol ("parent", p, "style", "text","string", SimhaL,"position",[xsize+3*Boxsize ysize+1*Boxsize Boxsize Boxsize/4]);
    
  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Simha. 
  % Adjusting them according to the chart size.

    set (Simha_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Simha_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Simha_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Simha_Upper,"fontsize",Boxsize/10);
    set(Simha_Middle,"fontsize",Boxsize/9);
    set(Simha_Lower,"fontsize",Boxsize/10);
    
  % Placing a edit box for appling a border to the Kanya text box control .
  % Positioning them according to coordinates.
    Kanya_border =uicontrol ("parent", p, "style", "edit", "position",[(xsize+3*Boxsize)-1 ysize-1 Boxsize+2 Boxsize+2]);
  
  % Name of the  parent handler is p and their style is text. The string are KanyaU,KanyaM,KanyaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
  
    Kanya_Upper = uicontrol ("parent", p, "style", "text","string", KanyaU,"position",[xsize+3*Boxsize ysize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Kanya_Middle = uicontrol ("parent", p, "style", "text","string", KanyaM,"position",[xsize+3*Boxsize ysize+(Boxsize/4) Boxsize Boxsize/2]);
    Kanya_Lower = uicontrol ("parent", p, "style", "text","string", KanyaL,"position",[xsize+3*Boxsize ysize Boxsize Boxsize/4]);
    
  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Kanya. 
  % Adjusting them according to the chart size.

    set (Kanya_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Kanya_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Kanya_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Kanya_Upper,"fontsize",Boxsize/10);
    set(Kanya_Middle,"fontsize",Boxsize/9);
    set(Kanya_Lower,"fontsize",Boxsize/10);

  % Placing a edit box for appling a border to the Tula text box control .
  % Positioning them according to coordinates.
    Tula_border =uicontrol ("parent", p, "style", "edit", "position",[(xsize+2*Boxsize)-1 ysize-1 Boxsize+2 Boxsize+2]);
    
  % Name of the  parent handler is p and their style is text. The string are TulaU,TulaM,TulaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
  
    Tula_Upper = uicontrol ("parent", p, "style", "text","string", TulaU,"position",[xsize+2*Boxsize ysize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Tula_Middle = uicontrol ("parent", p, "style", "text","string", TulaM,"position",[xsize+2*Boxsize ysize+(Boxsize/4) Boxsize Boxsize/2]);
    Tula_Lower = uicontrol ("parent", p, "style", "text","string", TulaL,"position",[xsize+2*Boxsize ysize Boxsize Boxsize/4]);

  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Tula. 
  % Adjusting them according to the chart size.
    set (Tula_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Tula_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Tula_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Tula_Upper,"fontsize",Boxsize/10);
    set(Tula_Middle,"fontsize",Boxsize/9);
    set(Tula_Lower,"fontsize",Boxsize/10);

  % Placing a edit box for appling a border to the Vrischika text box control .
  % Positioning them according to coordinates.
  
    Vrischika_border =uicontrol ("parent", p, "style", "edit", "position",[(xsize+1*Boxsize)-1 ysize-1 Boxsize+2 Boxsize+2]);
  
  % Name of the  parent handler is p and their style is text. The string are VrischikaU,VrischikaM,VrischikaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
  
    Vrischika_Upper = uicontrol ("parent", p, "style", "text","string", VrischikaU,"position",[xsize+1*Boxsize ysize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Vrischika_Middle = uicontrol ("parent", p, "style", "text","string", VrischikaM,"position",[xsize+1*Boxsize ysize+(Boxsize/4) Boxsize Boxsize/2]);
    Vrischika_Lower = uicontrol ("parent", p, "style", "text","string", VrischikaL,"position",[xsize+1*Boxsize ysize Boxsize Boxsize/4]);

  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Vrischika. 
  % Adjusting them according to the chart size.
    set (Vrischika_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Vrischika_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Vrischika_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Vrischika_Upper,"fontsize",Boxsize/10);
    set(Vrischika_Middle,"fontsize",Boxsize/9);
    set(Vrischika_Lower,"fontsize",Boxsize/10);
    
  % Placing a edit box for appling a border to the Dhanus text box control .
  % Positioning them according to coordinates.
    Dhanus_border =uicontrol ("parent", p, "style", "edit","position",[xsize-1 ysize-1 Boxsize+2 Boxsize+2]);
    
  % Name of the  parent handler is p and their style is text. The string are DhanusU,DhanusM,DhanusL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
  
    Dhanus_Upper = uicontrol ("parent", p, "style", "text","string", DhanusU,"position",[xsize ysize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Dhanus_Middle = uicontrol ("parent", p, "style", "text","string", DhanusM,"position",[xsize ysize+(Boxsize/4) Boxsize Boxsize/2]);
    Dhanus_Lower = uicontrol ("parent", p, "style", "text","string", DhanusL,"position",[xsize ysize  Boxsize Boxsize/4]);
     
  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Dhanus. 
  % Adjusting them according to the chart size.

    set (Dhanus_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Dhanus_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Dhanus_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Dhanus_Upper,"fontsize",Boxsize/10);
    set(Dhanus_Middle,"fontsize",Boxsize/9);
    set(Dhanus_Lower,"fontsize",Boxsize/10);
    
    
  % Placing a edit box for appling a border to the Makara text box control .
  % Positioning them according to coordinates.
    Makara_border =uicontrol ("parent", p, "style", "edit", "position",[xsize-1 (ysize+1*Boxsize)-1 Boxsize+2 Boxsize+2]);
  
  % Name of the  parent handler is p and their style is text. The string are MakaraU,MakaraM,MakaraL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
    Makara_Upper = uicontrol ("parent", p, "style", "text","string", MakaraU,"position",[xsize ysize+1*Boxsize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Makara_Middle = uicontrol ("parent", p, "style", "text","string", MakaraM,"position",[xsize ysize+1*Boxsize+(Boxsize/4) Boxsize Boxsize/2]);
    Makara_Lower = uicontrol ("parent", p, "style", "text","string", MakaraL,"position",[xsize ysize+1*Boxsize Boxsize Boxsize/4]);
  
  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Makara. 
  % Adjusting them according to the chart size.
    set (Makara_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Makara_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Makara_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Makara_Upper,"fontsize",Boxsize/10);
    set(Makara_Middle,"fontsize",Boxsize/9);
    set(Makara_Lower,"fontsize",Boxsize/10);

  % Placing a edit box for appling a border to the Kumbha text box control .
  % Positioning them according to coordinates.
  
    Kumbha_border =uicontrol ("parent", p, "style", "edit","position",[xsize-1 (ysize+2*Boxsize)-1 Boxsize+2 Boxsize+2]);
    
  % Name of the  parent handler is p and their style is text. The string are KumbhaU,KumbhaM,KumbhaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .
  
    Kumbha_Upper = uicontrol ("parent", p, "style", "text","string", KumbhaU,"position",[xsize ysize+2*Boxsize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Kumbha_Middle = uicontrol ("parent", p, "style", "text","string", KumbhaM,"position",[xsize ysize+2*Boxsize+(Boxsize/4) Boxsize Boxsize/2]);
    Kumbha_Lower = uicontrol ("parent", p, "style", "text","string", KumbhaL,"position",[xsize ysize+2*Boxsize Boxsize Boxsize/4]);

  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Kumbha. 
  % Adjusting them according to the chart size.
    set (Kumbha_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Kumbha_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Kumbha_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Kumbha_Upper,"fontsize",Boxsize/10);
    set(Kumbha_Middle,"fontsize",Boxsize/9);
    set(Kumbha_Lower,"fontsize",Boxsize/10);
    
  % Placing a edit box for appling a border to the Meena text box control .
  % Positioning them according to coordinates.
    Meena_border =uicontrol ("parent", p, "style", "edit", "position",[ xsize-1 (ysize+3*Boxsize)-1 Boxsize+2 Boxsize+2]);
    
  % Name of the  parent handler is p and their style is text. The string are MeenaU,MeenaM,MeenaL value are passed to this through arguments . 
  % Position  values such as xsize,Boxsize,ysize are recevied through arguments .    
  
    Meena_Upper = uicontrol ("parent", p, "style", "text","string", MeenaU,"position",[xsize  ysize+3*Boxsize+(Boxsize/4+Boxsize/2) Boxsize Boxsize/4]);
    Meena_Middle = uicontrol ("parent", p, "style", "text","string", MeenaM,"position",[xsize ysize+3*Boxsize+(Boxsize/4) Boxsize Boxsize/2]);
    Meena_Lower = uicontrol ("parent", p, "style", "text","string", MeenaL,"position",[xsize ysize+3*Boxsize Boxsize Boxsize/4]);
  % To set the backgroundcolor color,foregroundcolor,horizontalalignment,fontsize for the uicontrol Meena. 
  % Adjusting them according to the chart size.
    set (Meena_Upper,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[0.9 0 0],"horizontalalignment","right");
    set (Meena_Middle,"backgroundcolor",[0.2 0.8 1]);
    set (Meena_Lower,"backgroundcolor",[0.2 0.8 1],"foregroundcolor",[1 1 0.3],"fontweight","bold","horizontalalignment","left");
    
    set(Meena_Upper,"fontsize",Boxsize/10);
    set(Meena_Middle,"fontsize",Boxsize/9);
    set(Meena_Lower,"fontsize",Boxsize/10);
  % End of the function.
    endfunction
  % To run the function  Rashi_Chart3 (90,10,10,"Natal Chart","Mo Gl","Su"," ","PP","Ma"," "," ","Hl","A11 A6 "," ","Fp"," ","Al","Ra","Ul"," ","(Ju)","A8"," "," ","A9 A4","Sl ","As","A3","BB","(Sa)","A10 A5"," "," ","A7","Gk","Ke"," ","Ve Md ","Me","A2")