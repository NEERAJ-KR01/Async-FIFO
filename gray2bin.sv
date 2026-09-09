module gray2bin #(parameter W=3)
             (  input [W:0]gray_in,
               output bin_out);
     function [W :0] gray2bin;
         input[W:0]gray;
         gray2bin[W] = gray[W];
   begin
   integer i;
      for(i=2; i>=0; i=i-1)
         gray2bin[i] = gray2bin[i+1]^gray[i];
   end         
       endfunction
  assign bin_out =gray2bin(gray_in);
endmodule
