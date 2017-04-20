% This function calculates the drekkana rashi, kala, vikala, nakshatra, pada for a given lagna or plane
% Input to be given is   
% here "Ta" is the completed rashi completed by the planet, 25 is the number of degrees covered in the present rashi, 
% 11.468 is minutes 
% Output is [drek_rashi, drek_kala,drek_vikala,drek_nakshatra,drek_pada] 
% The way to call the function is 
% [drek_rashi, drek_kala,drek_vikala,drek_nakshatra,drek_pada] = drekkana("Ta",25,11.468) 
function [drek_rashi, drek_kala,drek_vikala,drek_nakshatra,drek_pada] = drekkana(rashi_name,kala,vikala)
  
  % calculation of total number of vikalas of the planet or lagna using vector2vikala.m function.
  total_vikala = vector2vikala(rashi_name,kala,vikala)
  
  % since name of the rashi is given as input we need to convert it into number for further calculations
  % hence we are using Find_Rasi_number function.
  rashi_value=Find_Rasi_number(rashi_name);
  
  % the function Find_Rasi_number gives output in string format. below we are converting it into integer.
  rashi = str2num(rashi_value);
  
  % we are adding +1 to the input rashi to get the current placement of the planet.
  rashi_place = rashi+1;
  
  % each rashi is 1800 vikalas
  % pending degrees in rashi in vikala
  pending_vikala = mod(total_vikala,1800);
  
  % we are assigning the names for the divisions of each rashi specific to drekkana. 
  rashis={"Ar" ,"Ta", "Ge" ,"Cn", "Le", "Vi" ,"Li" ,"Sc" ,"Sg" ,"Cp" ,"Aq" ,"Pi"};
  rashis1st = { 1,2,3,4,5,6,7,8,9,10,11,12};
  %rashis2nd = {"Le",	"Vi", "Li",	"Sc", "Sg", "Cp",	"Aq","Pi","Ar", "Ta", "Ge","Cn"};
  rashis2nd = { 5,6,7,8,9,10,11,12,1,2,3,4};
  %rashis3rd = {"Sg",	"Cp",	"Aq",	"Pi",	"Ar","Ta","Ge",	"Cn",	"Le","Vi","Li","Sc"};
  rashis3rd = { 9,10,11,12,1,2,3,4,5,6,7,8 };
  
  % even if all rashis are divided by 3 equal parts in drekkana the rashis assigned to then are in a different format
  % this if condition represents the same.  
  if pending_vikala <= 600
      
    ret = rashis1st{rashi_place} 
      
  elseif (pending_vikala>600&& pending_vikala<=1200)
      
    ret = rashis2nd{rashi_place}
      
  elseif (pending_vikala>1200&& pending_vikala<=1800)
      
    ret = rashis3rd{rashi_place}
      
  endif
  
  % returning the rashi of the planet in drekkana.
  drekkana_rashi = rashis { ret }
  
% calculating the covered vikalas by planet in its present rashi
  
  pending_vikala = mod(total_vikala,600);
  
% converting this pending vikala into rashi kala vikala format to show in navamsha chart
  
% 1 vikala = 1/60 kalas so to convert pending_vikala to kala we divide by 60
  
  % pending_kala is the value to be taken for calculating nakshatra
  pending_kala = pending_vikala/20;
  
  drek_rashi = ret;
  
  % pending kala whole number is kala and decimal portion has to be converted to vikala by *60
  
  % whole number portion
  drek_kala = floor(pending_kala);
  
  %Get decimal portion and multiply by 60 
  drek_vikala = (pending_kala - drek_kala)*60;
  
  % Get nakshatra and pada of this derkana rashi
  [drek_nakshatra, drek_pada] = nakshatra(drekkana_rashi, pending_kala)
  
  endfunction
  
    
    
