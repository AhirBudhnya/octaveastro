% This function calculates the dwadashamsha rashi, kala, vikala, nakshatra, pada for a given lagna or plane
% Input to be given is   
% here "Ta" is the completed rashi completed by the planet, 25 is the number of degrees covered in the present rashi, 
% 11.468 is minutes 
% Output is [dwa_rashi, dwa_kala,dwa_vikala,dwa_nakshatra,dwa_pada] 
% The way to call the function is 
% [dwa_rashi, dwa_kala,dwa_vikala,dwa_nakshatra,dwa_pada] = dwadashamsha("Ta",25,11.468) 
function [dwa_rashi, dwa_kala,dwa_vikala,dwa_nakshatra,dwa_pada] = dwadashamsha(rashi_name,kala,vikala)
  
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
  
  % we are assigning the names for the divisions of each rashi specific to dwadashamsha. 
  rashis={"Ar" ,"Ta", "Ge" ,"Cn", "Le", "Vi" ,"Li" ,"Sc" ,"Sg" ,"Cp" ,"Aq" ,"Pi"};
  rashis1st = { 1,2,3,4,5,6,7,8,9,10,11,12};
  rashis2nd = { 2,3,4,5,6,7,8,9,10,11,12,1};
  rashis3rd = { 3,4,5,6,7,8,9,10,11,12,1,2};
  rashis4th = { 4,5,6,7,8,9,10,11,12,1,2,3};
  rashis5th = { 5,6,7,8,9,10,11,12,1,2,3,4};
  rashis6th = { 6,7,8,9,10,11,12,1,2,3,4,5};
  rashis7th = { 7,8,9,10,11,12,1,2,3,4,5,6};
  rashis8th = { 8,9,10,11,12,1,2,3,4,5,6,7};
  rashis9th = { 9,10,11,12,1,2,3,4,5,6,7,8};
  rashis10th ={ 10,11,12,1,2,3,4,5,6,7,8,9};
  rashis11th ={ 11,12,1,2,3,4,5,6,7,8,9,10};
  rashis12th ={ 12,1,2,3,4,5,6,7,8,9,10,11};
  
  % even if all rashis are divided by 12 equal parts in dwadashamsha the rashis assigned to them are in a different format
  % this if condition represents the same.  
  
  if pending_vikala <= 150
    ret = rashis1st{rashi_place}
    
  elseif (pending_vikala >150 && pending_vikala <= 300)
    ret = rashis2nd{rashi_place}
    
  elseif (pending_vikala >300 && pending_vikala <= 450)
    ret = rashis3rd{rashi_place}

  elseif (pending_vikala >450 && pending_vikala <= 600)
    ret = rashis4th{rashi_place}

  elseif (pending_vikala >600 && pending_vikala <= 750)
    ret = rashis5th{rashi_place}

  elseif (pending_vikala >750 && pending_vikala <= 900)
    ret = rashis6th{rashi_place}

  elseif (pending_vikala >900 && pending_vikala <= 1050)
    ret = rashis7th{rashi_place}

  elseif (pending_vikala >1050 && pending_vikala <= 1200)
    ret = rashis8th{rashi_place}

  elseif (pending_vikala >1200 && pending_vikala <= 1350)
    ret = rashis9th{rashi_place}
  
  elseif (pending_vikala >1350 && pending_vikala <= 1500)
    ret = rashis10th{rashi_place}

  elseif (pending_vikala >1500 && pending_vikala <= 1650)
    ret = rashis11th{rashi_place}

  elseif (pending_vikala >1650 && pending_vikala <= 1800)
    ret = rashis12th{rashi_place}

  endif
  
  % returning the rashi of the planet in dwadashamsha.
  dwadashamsha_rashi = rashis { ret }
  
  % calculating the covered vikalas by planet in its present rashi
  pending_vikala = mod(total_vikala,150);
  
  % converting this pending vikala into rashi kala vikala format to show in dwadashamsha chart
  % 1 vikala = 1/60 kalas so to convert pending_vikala to kala we divide by 60
  % pending_kala is the value to be taken for calculating nakshatra

  pending_kala = pending_vikala/5;
  dwa_rashi = ret
  
  % pending kala whole number is kala and decimal portion has to be converted to vikala by *60
  
  % whole number portion
  dwa_kala = floor(pending_kala)
  
  %Get decimal portion and multiply by 60 
  dwa_vikala = (pending_kala - dwa_kala)*60
  
  % Get nakshatra and pada of this dwadashamsha rashi
  [dwa_nakshatra, dwa_pada] = nakshatra(dwadashamsha_rashi, pending_kala)
  
  endfunction





    
    




    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


      


