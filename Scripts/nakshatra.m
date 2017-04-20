% This function calculates the nakshatra and pada by accepting as input rashi and kala [degrees] belonging to either rashi chart or any divisional chart
% The purpose of this function is to make it easier for calculating nakshatra and pada for any planet or lagna belonging to any kind of chart.
% input to be given as the followling
% [nak, pada]= nakshatra("Ta",16.719). Here "Ta" is the current Rashi in which the planet is present
function [nak, pada]= nakshatra(rashi_name,kala)
  
  % since name of the rashi is given as input we need to convert it into number for further calculations
  % hence we are using Find_Rasi_number function.
  rashi_value = Find_Rasi_number(rashi_name);
  
  % the function Find_Rasi_number gives output in string format. below we are converting it into integer.
  rashi = str2num(rashi_value)
  
  % calculating the total number of degrees the planet or lagna covered from start of zodiac 
  total_kala = (rashi-1)*30+kala;
  
  % complete zodiac forms 360 degrees and there are 27 nakshatras. So each nakshatra has 360/27 = 13.33 degrees
  % below calculation gives the nakshatra of the planet or lagna
  nak = ceil(total_kala/(360/27))
  
  % x=total_kala/(360/27)
  % each nakshatra has 4 padas. To determine which pada it is in 
  % we need to divide by 4 and use mod 4.
  pada = mod(ceil(total_kala/((360/27)/4)),4)
  
  % y=total_kala/((360/27)/4)
  
  % if it is completely divisible by 4 then mod will return zero when we need 4
  if pada == 0
     pada = 4
  endif
  
  % Assigning list of 27 nakshatras for displaying the particular nakshatra name.
  nakshatras = {"Ashwini","Bharani","Krittika" ,"Rohini","Mrigashira","Ardhra","Punarvasu","Pushya","Aslesha", "Maka","PoorvaPhalguni","Uttaraphalguni","Hasta","Chitra","Swathi","Vishakha","Anuradha","Jyeshta","Moola","Poorvashada","Uttarashada","Shravana","Dhanishta","Shatabhisha","Poorvabhadra","Uttarabhadra","Revathi"};
  nak = nakshatras{nak};
endfunction
  
  
  
  