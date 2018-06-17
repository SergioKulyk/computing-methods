   procedure Output_Parameters;
   var Nu,Nu_theor,cf_theor : double;
   begin
    dfdy=f[1]/h[1];
    cf_fact=dfdy;
    Nu=-(T[1]-1)/h[1];
    Nu_theor=0.3567;
    Cf_theor=0.9558;
    fprintf(step:6,'  ','ksi=',ksi:11,'  Cf =',cf_fact:11,
    '  Cf/Cf f=',sqrt(2)*cf_fact/Cf_theor:6:4,
    '  Nu/Nu_f=', Nu/(sqrt(2)*Nu_theor):6:4);

   end;
