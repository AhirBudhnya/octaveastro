%output is to find the particular number for the Rasi Name. Eg. if 1 is given then the output will be "Ar"
%input is recieved from the Navamsa file to find the name of the particular rashi ny specifing its number.
function [rashiname] = Find_Rasi(x)
rashi = x;
switch  rashi

case  { 1 }

%printf( "Rasi is Aries \n");
  rashiname = "Ar";
 
case { 2 }
  %printf( " Rasi is Taurus\n");
  rashiname =" Ta";
case { 3 }
  %printf( " Rasi is Gemini\n");
  rashiname = "Ge";
case 4
  %printf( " Rasi is Cancer\n");
  rashiname =" Cn";
case 5
  rashiname = "Le";
  %printf( " Rasi is Leo\n");
case 6
  rashiname = " Vi";
  %printf( " Rasi is Virgo\n");
case 7
  rashiname = " Li";
  %printf( " Rasi is Libra\n");
case 8
  %printf( " Rasi is Scorpio\n");
  rashiname = "Sc";

case 9
rashiname = "Sg";
%printf( " Rasi is Sagittarius\n");
case 10
rashiname = "Cp";
%printf( " Rasi is Capricorn\n");
case 11
rashiname = "Aq";
%printf( " Rasi is Aquarius\n");
case 12
rashiname = " Pi";
%printf( " Rasi is Pisces\n");
endswitch
endfunction