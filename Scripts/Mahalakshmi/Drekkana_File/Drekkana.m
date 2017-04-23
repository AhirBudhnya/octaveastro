% I/p Rasi position as vector[Degree, Rasi, Kala, Vikala] as obtained from jhora
% I/p To run this function , Please enter Drekkana (1,"Sg",08,29.49) 
% where  1 is the input for Degree, "Sg" is the Rasi, 08 is the Kala and 29.89 is the Vikala.
% O/p  is the [Drekkana_Degree, Drekkana_Rasi, Drekkana_Kala , Drekkana_Vikala, Nakshatra]

  function Drekkana(Deg,Rasi, Kala, Vikala)
  
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
    
    % 1 Rasi = 30 degree, since it is Drekkana  dividing the Rasi by 3 then
    % each Rasi in D-3 chart is 10 Degree.
    % dividing Rasi by ,10  degree , ie (10*60) = 600Kala .
    % 600Kala * 60 = 36000 Vikala.
    Pada = (TotalVikala / 36000);
    
    % Taking the floor value of pada minus pada  * 30 gives the padaRasi position values in the Drekkana Chart .  
    PadaRasi = (Pada-floor(Pada))*30;
    
    % Taking the floor value of padaRasi minus PadaRasi * 60  gives the padaKala position values in the Drekkana Chart .  
    PadaKala = (PadaRasi-floor(PadaRasi))*60;
    
    % Taking the floor value of padaKala minus padaKala * 60 gives the PadaVikala position values in the Drekkana Chart .  
    PadaVikala = (PadaKala-floor(PadaKala))*60;

    % To calculate Drekkana Rasi degree travesed.
    % calculated floor value of pada by modulus of 3 and Adding the value of 1  gives the  position values  Drekkana . 
    Drekkana_Part= mod(floor(Pada),3)+1;

  
        % If  a point lies between 0 to 10 degree in Rasi chart  then it  will be in same Rasi in Drekkana Chart
        if (Drekkana_Part==1)
        %retPadaRasi = mod(Rasi_Sign,12)
        retPadaRasi = retRasi;
        
        
        % If  a point lies between 10 to 20 degree in Rasi chart  then it  will be in fifth Rasi in Drekkana Chart
        elseif(Drekkana_Part==2)
        %retPadaRasi = mod(Rasi_Sign+4,12)
        retPadaRasi = retRasi+4;
        
        
        else
        % If  a point lies between 20 to 30 degree in Rasi chart  then it will be in ninth Rasi in Drekkana Chart
        %retPadaRasi = mod(Rasi_Sign+8,12)
        retPadaRasi = retRasi+8;
        endif
        
    
    % The calculated values such as Rasi,Degree,Kala,Vikala are displayed.
    
    retPadaRasi = mod(retPadaRasi,12);
    retPadaDegs = floor(PadaRasi)
    RasiToVikala = (retPadaRasi*30+retPadaDegs)*60*60;

    % The returned pada Rasi is in number. 
    % By calling Find_Rasi function the corresponding name of the rasi is calculated.
    retPadaRasi = Find_Rasi(retPadaRasi+1)
    retPadaKala = floor(PadaKala)
    retPadaVikala = floor(PadaVikala)

    % To Find the Nakshatra Degree we are dividing the value of RasiToVikala by 60
    NakshatraDeg=RasiToVikala/60;
    
    % The value recevied from the NakshatraDeg is passed to Get_Nakshatra function
    % to fetch the corresponding Nakshatra name.
    Nakshatra = Get_Nakshatra(NakshatraDeg)
    
  endfunction
%Input to be given Drekkana(234,24,59.67)