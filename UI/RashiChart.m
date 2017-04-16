%Creating a function with name GUI_Rashi1 and passing the values as the arguments. 
%Boxsize is the side of the Rashi box.
%xsize is the x coordinate position.
%ysize is the y coordinate position.
%Rashi1 is the  planet list in Mesha Rashi.
%Similiar for 12 Rashi.

function GUI_Rashi1 (Boxsize,xsize,ysize,Rashi1, Rashi2, Rashi3, Rashi4, Rashi5, Rashi6, Rashi7, Rashi8, Rashi9, Rashi10, Rashi11, Rashi12)
f=figure
% Giving title as Rashi Chart and their position are [0 0 1 1]
p = uipanel ("title", "Rashi Chart", "position", [0 0 1 1]);
% Name of the  parent handler is p and their style is text. The string is Jataka Details . 
%Position  values such as xsize,Boxsize,ysize are recevied through arguments .  
center =uicontrol ("parent", p, "style", "text","string", "Jataka Details", "position",[xsize+1*Boxsize ysize+1*Boxsize 2*Boxsize 2*Boxsize]); 
% To set the backgroundcolor color as green  for the uicontrol center.
set (center,"backgroundcolor","green");
% setting  the fontsize , Adjusting the size of the font according to the chart size.
set(center, "fontsize",Boxsize/10) 
% Name of the  parent handler is p and their style is text. The string is Rashi1,value os passed to this . 
%Position  values such as xsize,Boxsize,ysize are recevied through arguments .  
Mesha = uicontrol ("parent", p, "style", "text","string", Rashi1,"position",[xsize+1*Boxsize ysize+3*Boxsize Boxsize Boxsize]);
% To set the backgroundcolor color as white  for the uicontrol Mesha.
set (Mesha,"backgroundcolor","white");
% setting  the fontsize , Adjusting the size of the font according to the chart size.
set(Mesha,"fontsize",Boxsize/10);
Vrishba = uicontrol ("parent", p, "style", "text", "string", Rashi2, "position",[xsize+2*Boxsize ysize+3*Boxsize Boxsize Boxsize]);
set (Vrishba,"backgroundcolor","cyan");
set(Vrishba,"fontsize",Boxsize/10);
Mithuna = uicontrol ("parent", p, "style", "text", "string", Rashi3, "position",[xsize+3*Boxsize ysize+3*Boxsize Boxsize Boxsize]);
set (Mithuna,"backgroundcolor","yellow");
set(Mithuna,"fontsize",Boxsize/10);
Karka = uicontrol ("parent", p, "style", "text", "string", Rashi4, "position",[xsize+3*Boxsize ysize+2*Boxsize Boxsize Boxsize]);
set (Karka,"backgroundcolor","white");
set(Karka,"fontsize",Boxsize/10);
Simha = uicontrol ("parent", p, "style", "text", "string", Rashi5, "position",[xsize+3*Boxsize ysize+1*Boxsize Boxsize Boxsize]);
set (Simha,"backgroundcolor","cyan");
set(Simha,"fontsize",Boxsize/10);
Kanya = uicontrol ("parent", p, "style", "text", "string", Rashi6, "position",[xsize+3*Boxsize ysize Boxsize Boxsize]);
set (Kanya,"backgroundcolor","yellow");
set(Kanya,"fontsize",Boxsize/10);
Tula = uicontrol ("parent", p, "style", "text", "string", Rashi7, "position",[xsize+2*Boxsize ysize Boxsize Boxsize]);
set (Tula,"backgroundcolor","white");
set(Tula,"fontsize",Boxsize/10);
Vrischika = uicontrol ("parent", p, "style", "text", "string", Rashi8, "position",[xsize+1*Boxsize ysize Boxsize Boxsize]);
set (Vrischika,"backgroundcolor","cyan");
set(Vrischika,"fontsize",Boxsize/10);
Dhanus = uicontrol ("parent", p, "style", "text", "string", Rashi9, "position",[xsize ysize Boxsize Boxsize]);
set (Dhanus,"backgroundcolor","yellow");
set(Dhanus,"fontsize",Boxsize/10);
Makara = uicontrol ("parent", p, "style", "text", "string", Rashi10, "position",[xsize ysize+1*Boxsize Boxsize Boxsize]);
set (Makara,"backgroundcolor","white");
set(Makara,"fontsize",Boxsize/10);
Kumbha = uicontrol ("parent", p, "style", "text", "string", Rashi11, "position",[xsize ysize+2*Boxsize Boxsize Boxsize]);
set (Kumbha,"backgroundcolor","cyan");
set(Kumbha,"fontsize",Boxsize/10);
Meena = uicontrol ("parent", p, "style", "text", "string", Rashi12, "position",[xsize ysize+3*Boxsize Boxsize Boxsize]);
set (Meena,"backgroundcolor","yellow");
set(Meena,"fontsize",Boxsize/10);
%End of the function.
endfunction
% To run the function  GUI_Rashi1 (100,30,30,"Su Mo Ma \n Me Ju Ve \n Sa Ra Ke","Vrishba","Mithuna","Karka","Simha","Kanya","Tula","Vrischika","Dhanus","Makara","Kumbha","Meena")