% input to be given as this example [nav_rashi,nav_kala,nav_vikala]=navamsha("Ta",25,11.468) 
% here "Ta" is the rashi completed by planet , 25 is the number of degrees covered in the present rashi
% and 11.468 is minutes or vikalas it has passed in the current rashi. .

function [nav_rashi,nav_kala,nav_vikala,nav_nakshatra,nav_pada]=navamsha(rashi_name,kala,vikala)
  
  % calculation of total number of vikalas of the planet or lagna using vector2vikala.m function.
  total_vikala = vector2vikala(rashi_name,kala,vikala)
  
  % since name of the rashi is given as input we need to convert it into number for further calculations
  % hence we are using Find_Rasi_number function.
  rashi_value=Find_Rasi_number(rashi_name);
  
  % the function Find_Rasi_number gives output in string format. below we are converting it into integer.
  rashi = str2num(rashi_value);
  
  % we calculate total kalas of the planet or lagna
  total_kalas =rashi*30+kala;
  
  % for navamsha each rashi is divided into 9 equal parts. so 30 degrees [ in each rashi] is divied by 9.
  % so each navamsha is 3.33 degrees or 3.33 kalas
  % to get planet's position in kalas in navamsha we divide total kalas by 3.333 
  y=total_kalas/3.333;
  
  % 12 rashis keep repeating, mod(y,12) will tell which rashi planet is in.
  navamsha_rashi=ceil(mod(y,12));
  
  % Assigning the names of each rashis and returning the particular rashi of the planet in navamsha.
  rashis={"Ar" ,"Ta", "Ge" ,"Cn", "Le", "Vi" ,"Li" ,"Sc" ,"Sg" ,"Cp" ,"Aq" ,"Pi"};
  ret = rashis{navamsha_rashi}
  
  % calculating the covered vikalas by planet in its present rashi
  % one rashi is 1800 vikalas . 1800/9 is 200 vikalas for navamsha.
  pending_vikala = mod(total_vikala,200);
  
  % converting this pending vikala into rashi kala vikala format to show in navamsha chart
  % 30degrees[or kalas] = 200 vikalas, 1 vikala = 3/20 kalas. To calculate calas we multiply vikalas with 3/20
  pending_kala = pending_vikala*3/20 ; % pending_kala is the value to be taken for calculating nakshatra
  
  % returning the rashi, kala, vikala of the planet or lagna in navamsha
  nav_rashi = navamsha_rashi;
  nav_kala = floor(pending_kala);
  nav_vikala = (pending_kala - nav_kala)*60;
  
  % we are calling the function "nakshatra_new" to calculate and return the nakshatra and pada of the planet or lagna.
  
  [nav_nakshatra, nav_pada] = nakshatra(ret, pending_kala)
  
endfunction

  
  