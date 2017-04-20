% for jhora position 25Ge 11' 28.02" = 25Ge 11.468" [ 28.02 seconds converted to minutes and added to 11 minutes gives 11.468 minutes.
% input to call this function is vector2vikala("Ta",25,11.468)
% gemini is 3rd house , first argument is "Ta" ie taurus (number of houses passed )
% 25 degrees in gemini , is second argument as number
% 11.468 is passed as 3rd argument for minutes or vikala
% This function will convert each argument into vikala and sum them.
function conv_vikala= vector2vikala(rashi_name,kala,vikala)
  
  % calling the function Find_Rasi_number for converting the input rashi name into number.
  rashi_value = Find_Rasi_number(rashi_name);
  % changing the returned rashi number from string to number.
  rashi = str2num(rashi_value);

  % 1 rashi=30 kalas    1 kaala= 60 vikala
  % so rashi , kala are converted to vikala and added
  conv_vikala = ((rashi*30)+kala)*60+vikala;
 
endfunction