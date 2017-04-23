%Input is to get the name of the Nakshatra by calling this function.
%This file is called from the Navamsa file to get the particular Nakshatra Name
% To run the fuction Get_Nakshatra( 1600 )
%output will return the name of the particular Nakshatra name.
  function [Nakshatra_Name] = Get_Nakshatra(x)

  % Nakshatra are divided at the interval of 800.
  % There are total of 27 Nakshatra.

    if ((x>=0) && (x<=800))
    Nakshatra_Name= "Ashvini";

    elseif ((x>=800) && (x<=1600))
    Nakshatra_Name= "Bharani";

    elseif ((x>=1600) && (x<=2400))
    Nakshatra_Name= "Krittika";

    elseif ((x>=2400) && (x<=3600))
    Nakshatra_Name= "Rohini";

    elseif ((x>=3600) && (x<=4000))
    Nakshatra_Name= "Mrigashirsha";

    elseif ((x>=4000) && (x<=4800))
    Nakshatra_Name= "Ardra";

    elseif ((x>=4800) && (x<=5600))
    Nakshatra_Name= "Punarvasu";

    elseif ((x>=5600) && (x<=6400))
    Nakshatra_Name= "Pushya";

    elseif ((x>=6400) && (x<=7200))
    Nakshatra_Name= "Ashlesha";

    elseif ((x>=7200) && (x<=8000))
    Nakshatra_Name= "Magha";

    elseif ((x>=8000) && (x<=8800))
    Nakshatra_Name= "Purva Phalguni";

    elseif ((x>=8800) && (x<=9600))
    Nakshatra_Name= "Uttara Phalguni";

    elseif ((x>=9600) && (x<=10400))
    Nakshatra_Name= "Hasta";

    elseif ((x>=10400) && (x<=11200))
    Nakshatra_Name= "Chitra";

    elseif ((x>=11200) && (x<=12000))
    Nakshatra_Name= "Swati	";

    elseif ((x>=12000) && (x<=12800))
    Nakshatra_Name= "Vishakha";

    elseif ((x>=12800) && (x<=13600))
    Nakshatra_Name= "Anuradha";

    elseif ((x>=13600) && (x<=14400))
    Nakshatra_Name= "Jyeshtha";

    elseif ((x>=14400) && (x<=15200))
    Nakshatra_Name= "Mula";

    elseif ((x>=15200) && (x<=16000))
    Nakshatra_Name= "Purva Ashadha";

    elseif ((x>=16000) && (x<=16800))
    Nakshatra_Name= "Uttara Ashadha";
  
    elseif ((x>=16800) && (x<=17600))
    Nakshatra_Name= "Shravana";

    elseif ((x>=17600) && (x<=18400))
    Nakshatra_Name= "Dhanishtha";

    elseif ((x>=18400) && (x<=19200))
    Nakshatra_Name= "Shatabhisha";

    elseif ((x>=19200) && (x<=20000))
    Nakshatra_Name= "Purva Bhadrapada";

    elseif ((x>=20000) && (x<=20800))
    Nakshatra_Name= "Uttara Bhadrapada";

    elseif ((x>=20800) && (x<=21600))
    Nakshatra_Name= "Revati";

    endif
    
endfunction