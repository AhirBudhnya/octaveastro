%Output is to find the number for the particular  ie . If input is  "Ar" then the return value will be 1
%Input is to enter the Rasi name  ie "Ar" or "Me"
%To run the function Find_Rasi_number("Ar")
function [rashinumber] = Find_Rasi_number(x)
rashi = x;
switch  rashi
case  { "Ar","Me" }
 
  rashinumber = "1";
case { "Ta","Ri" }
 
  rashinumber =" 2";
case { "Ge","Mi"}
 
  rashinumber = "3";
 case {"Cn","Kn"}
 
  rashinumber =" 4";
case {"Le","Si"}
 
  rashinumber = "5";
case {"Vi","Ka"}
 
  rashinumber = " 6";
case {"Li","Th"}
 
  rashinumber = " 7";
case {"Sc","Vr"}
 
  rashinumber = "8";
case {"Sg","Dh"}
 
  rashinumber = "9";
case {"Cp","Ma"}
 
  rashinumber = "10";
case {"Aq","Ku"}
 
  rashinumber = "11";
case {"Pi","Mn"}
 
  rashinumber = " 12";
  
endswitch
endfunction