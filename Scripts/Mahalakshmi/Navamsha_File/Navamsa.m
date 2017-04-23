% I/p rashi position as vector[ Degree, Rasi, Kala, Vikala] as obtained from jhora
% O/p [ Namvamsha_Degree, Navamsha_Rasi, Navamsha_Kala, Navamsha_Vikala, Nakshatra_name]
% To run the file Navamsa (1,"Sg",08,29.49) 
% where 1 is the Degree , "Sg" is the Rasi name , 08 is the Kala , 29.49 is the Vikala.

function Navamsa(Deg, Rasi, Kala, Vikala)

% converting the value of  Rasi name to number .
% calling the function Find_Rasi_number to fetch the corresponding number for
% the particular Rasi which is in string format and converting them to number. 1 is subtracted 
    retRasi = str2num(Find_Rasi_number(Rasi))-1;

    % converting Degree to Vikala .ie . The value of the rasi is multiple by 30 and value of the 
    % degree is added to it .  60 * 60 is multipled to the resultant value to obtain the Vikala.
    RasiToVikala = (retRasi*30+Deg)*60*60;
    
    % converting Kala to Vikala .ie multipling the value of kala in to 60. 
     KalaToVikala = Kala*60;
     
    % Adding RasiToVikala+KalaToVikala+Vikala . ie adding together the values of RasiToVikala, KalaToVikala ,Vikala.
    TotalVikala = RasiToVikala+KalaToVikala+Vikala;

    % 1 Rashi = 30 degree, since it is NAVAMSHA  dividing the Rashi by 9 then 
    % each Rasi in D-9 chart is 3 Degree 20 Kala.
    % dividing Rasi ,3  degree 20 Kala , ie (3*60)+20 = 200Kala .
    % 200Kala * 60 = 12000 Vikala.
    Pada = (TotalVikala / 12000);
    
  
    % Taking the floor value of pada minus pada  * 30 gives the padaRasi position values in the Navamsha Chart .  
    PadaRasi = (Pada-floor(Pada))*30;
    
    % Taking the floor value of padaRasi minus PadaRasi * 60  gives the padaKala position values in the Navamsha Chart .  
    PadaKala = (PadaRasi-floor(PadaRasi))*60;
    
    % Taking the floor value of padaKala minus padaKala * 60 gives the PadaVikala position values in the Navamsha Chart .  
    PadaVikala = (PadaKala-floor(PadaKala))*60;
    
    % To calculate Navamsa Rasi degree travesed.
    % calculated floor value of pada by modulus of 12 and Adding the value of 1  gives the  position values  Navamsha . 
    retPadaRasi = mod(floor(Pada),12)+1;
      
    % The calculated values such as Rasi,Degree,Kala,Vikala are displayed.
    
    retPadaDegs = floor(PadaRasi) 
    RasiToVikala = ((retPadaRasi-1)*30+retPadaDegs)*60*60;
    % The returned pada Rasi is in number. 
    % By calling Find_Rasi function the corresponding name of the rasi is calculated.
    retPadaRasi = Find_Rasi(retPadaRasi)
    retPadaKala = floor(PadaKala)
    retPadaVikala = (PadaVikala)

    % To Find the Nakshatra Degree we are dividing the value of RasiToVikala by 60
    NakshatraDeg=RasiToVikala/60;
    
    % The value recevied from the NakshatraDeg is passed to Get_Nakshatra function
    % to fetch the corresponding Nakshatra name.
    Nakshatra = Get_Nakshatra(NakshatraDeg)
endfunction
%To run the file Navamsa (1,"Sg",08,29.49)

