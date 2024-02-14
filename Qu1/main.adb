pragma SPARK_Mode (On);
with AS_IO_Wrapper, Sum_Digits;
use AS_IO_Wrapper, Sum_Digits;

procedure Main is
   input1, input2, output : Single_Number;
   User_Input : String(1 .. 20);
   Last : Integer;
   Temp_Input : Integer;
begin
   AS_Init_Standard_Output;
   AS_Init_Standard_Input;
   loop
      -- Getting inputs (must be between 0 and 9)
      loop
         AS_Put("Enter the first digit of the first number (?## | between 0 and 9): ");
         AS_Get(Temp_Input, "The number needs to be between 0 and 9 (?##): ");
         exit when Temp_Input in 0..9;
      end loop;
      input1.First := Temp_Input;
      
      loop 
         AS_Put("Enter the second digit of the first number (#?# | between 0 and 9): ");
         AS_Get(Temp_Input, "The number needs to be between 0 and 9 (#?#): ");
         exit when Temp_Input in 0..9;
      end loop;
      input1.Second := Temp_Input;
      
      loop 
         AS_Put("Enter the third digit of the first number (##? | between 0 and 9): ");
         AS_Get(Temp_Input, "The number needs to be between 0 and 9 (##?): ");
         exit when Temp_Input in 0..9;
      end loop;
      input1.Third := Temp_Input;
      
      loop
         AS_Put("Enter the first digit of the second number (?## | between 0 and 9): ");
         AS_Get(Temp_Input, "The number needs to be between 0 and 9 (?##): ");
         exit when Temp_Input in 0..9;
      end loop;
      input2.First := Temp_Input;
      
      loop 
         AS_Put("Enter the second digit of the second number (#?# | between 0 and 9): ");
         AS_Get(Temp_Input, "The number needs to be between 0 and 9 (#?#): ");
         exit when Temp_Input in 0..9;
      end loop;
      input2.Second := Temp_Input;
      
      loop 
         AS_Put("Enter the third digit of the second number (##? | between 0 and 9): ");
         AS_Get(Temp_Input, "The number needs to be between 0 and 9 (##?): ");
         exit when Temp_Input in 0..9;
      end loop;
      input2.Third := Temp_Input;
      
      
      -- Calculating and displaying results
      AS_Put("The result is of the function = ");
      output := CalcOutputFunc(input1, input2);
      AS_Put((output.First*100) + (output.Second*10) + (output.Third));
      AS_Put_Line;
      
      AS_Put("The result is of the procedure = ");
      CalcOutputProc(input1, input2, output);
      AS_Put((output.First*100) + (output.Second*10) + (output.Third));
      AS_Put_Line;
      
      
      -- Try again loop
      loop
         AS_Put_Line;
         AS_Put_Line("Try again (y/n)?:");
         AS_Get_Line(User_Input, Last);
         exit when Last > 0;
      end loop;
      
      exit when User_Input(1 .. 1) = "n";
      AS_Put_Line;
   end loop;   
end Main;
