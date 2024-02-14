pragma SPARK_Mode;

package body Find_GCD is

   procedure CalcGCDProc (a, b : in Positive_Number;
                          output : out Positive_Number; 
                          ra, rb, sa, sb : out Integer) is
      r, s : Integer;
   begin
      r := a;
      s := b;
      ra := 1;
      sb := 1;
      sa := 0;
      rb := 0;
      loop pragma Loop_Invariant ((a = r * ra + s * sa) and (b = r * rb + s* sb));
         if r /= s then
            if r > s then
               r := r-s;
               sa := ra + sa;
               sb := rb + sb;
            else
               s := s-r;
               ra := ra + sa;
               rb := rb + sb;
            end if;
         end if;
         exit when r = s;
      end loop;   
      output := r;
   end CalcGCDProc;
   

end Find_GCD;
