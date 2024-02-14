pragma SPARK_Mode;

package body Sum_Digits is
   -- d1* 100 + d2*10 + d3
   
   -- Procedure Implementation --
   procedure CalcOutputProc (input1, input2 : in Single_Number; 
                               output : out Single_Number) is
      temp1, temp2, temp3 : Integer;
      carry2, carry3 : Integer;
   begin   
      temp3 := input1.Third + input2.Third;
      if temp3 < 10 then 
         output.Third := temp3;
         carry3 := 0;
      else 
         output.Third := temp3 - 10;
         carry3 := 1;
      end if;
      
      temp2 := input1.Second + input2.Second + carry3;
      if temp2 < 10 then 
         output.Second := temp2;
         carry2 := 0;
      else 
         output.Second := temp2 - 10;
         carry2 := 1;
      end if; 
      
      temp1 := input1.First + input2.First + carry2;
      if temp1 < 10 then 
         output.First := temp1;
      else 
         output.First := temp1 - 10;
      end if;   
   end CalcOutputProc;
   
   
   -- Function Implementation --
   function CalcOutputFunc (input1, input2 : Single_Number) return Single_Number is
      temp1, temp2, temp3 : Integer;
      carry2, carry3 : Integer;
      output : Single_Number;
   begin   
      temp3 := input1.Third + input2.Third;
      if temp3 < 10 then 
         output.Third := temp3;
         carry3 := 0;
      else 
         output.Third := temp3 - 10;
         carry3 := 1;
      end if;
      
      temp2 := input1.Second + input2.Second + carry3;
      if temp2 < 10 then 
         output.Second := temp2;
         carry2 := 0;
      else 
         output.Second := temp2 - 10;
         carry2 := 1;
      end if; 
      
      temp1 := input1.First + input2.First + carry2;
      if temp1 < 10 then 
         output.First := temp1;
      else 
         output.First := temp1 - 10;
      end if;      
      return output;
   end CalcOutputFunc;

end Sum_Digits;
