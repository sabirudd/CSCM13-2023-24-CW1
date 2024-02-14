pragma SPARK_Mode;

package Find_GCD is
   
   subtype Positive_Number is Integer range 1 .. Integer'Last;

   procedure CalcGCDProc (a, b : in Positive_Number;
                          output : out Positive_Number;
                          ra, rb, sa, sb : out Integer) with
     Depends => ((output, ra, rb, sa, sb) => (a, b)),
     Pre => (a >= 1 and a <= Integer'Last) and
            (a >= 1 and a <= Integer'Last),
     Post => a = output * (ra + sa) and 
             b = output * (rb + sb);
   

end find_gcd;
