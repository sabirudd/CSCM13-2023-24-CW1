pragma SPARK_Mode;


package Sum_Digits is 
   
   subtype Single_Digit is Integer range 0 .. 9;
   
   type Single_Number is 
      record
         First : Single_Digit;
         Second : Single_Digit;
         Third : Single_Digit;
      end record;
   
   procedure CalcOutputProc (input1, input2 : in Single_Number;
                             output : out Single_Number) with
     Depends => (output => (input1, input2)),
     Pre => (input1.First >= 0 and input1.First <=9) and
            (input1.Second >= 0 and input1.Second <=9) and
            (input1.Third >= 0 and input1.Third <=9) and
            (input2.First >= 0 and input2.First <=9) and
            (input2.Second >= 0 and input2.Second <=9) and
            (input2.Third >= 0 and input2.Third <=9),
     Post => ((output.First*100 + output.Second*10 + output.Third = 
                input1.First*100 + input1.Second*10 + input1.Third +
                input2.First*100 + input2.Second*10 + input2.Third)
              or
                (output.First*100 + output.Second*10 + output.Third = 
                input1.First*100 + input1.Second*10 + input1.Third +
                input2.First*100 + input2.Second*10 + input2.Third - 1000));
   
   function CalcOutputFunc (input1, input2 : Single_Number) return Single_Number with
     Pre => (input1.First >= 0 and input1.First <=9) and
            (input1.Second >= 0 and input1.Second <=9) and
            (input1.Third >= 0 and input1.Third <=9) and
            (input2.First >= 0 and input2.First <=9) and
            (input2.Second >= 0 and input2.Second <=9) and
            (input2.Third >= 0 and input2.Third <=9),
     Post => ((CalcOutputFunc'Result.First*100 + CalcOutputFunc'Result.Second*10 + CalcOutputFunc'Result.Third = 
                input1.First*100 + input1.Second*10 + input1.Third +
                input2.First*100 + input2.Second*10 + input2.Third)
              or
                (CalcOutputFunc'Result.First*100 + CalcOutputFunc'Result.Second*10 + CalcOutputFunc'Result.Third = 
                input1.First*100 + input1.Second*10 + input1.Third +
                input2.First*100 + input2.Second*10 + input2.Third - 1000));
   
end Sum_Digits;
