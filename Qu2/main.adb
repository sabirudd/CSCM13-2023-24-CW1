pragma SPARK_Mode (On);
with AS_IO_Wrapper, Find_GCD;
use AS_IO_Wrapper, Find_GCD;

procedure Main is
   input1, input2, output : Positive_Number;
   ra, rb, sa, sb : Integer;
   User_Input : String(1 .. 20);
   Last : Integer;
   Temp_Input : Integer;
begin
   loop
      loop
         AS_Put("Enter the first number (must be positive): ");   
         AS_Get(Temp_Input, "Enter the first number (must be positive): ");
         exit when Temp_Input in 1 .. Integer'Last;
      end loop;
      input1 := Temp_Input;
      
      
      loop
         AS_Put("Enter the second number (must be positive): ");   
         AS_Get(Temp_Input, "Enter the second number (must be positive): ");
         exit when Temp_Input in 1 .. Integer'Last;
      end loop;
      input2 := Temp_Input;
      
      CalcGCDProc(input1, input2, output, ra, rb, sa, sb);
      
      AS_Put("Result = ");
      AS_Put(output);
      AS_Put_Line;
      
      AS_Put("ra = ");
      AS_Put(ra);
      AS_Put_Line;
      
      AS_Put("rb = ");
      AS_Put(rb);
      AS_Put_Line;
      
      AS_Put("sa = ");
      AS_Put(sa);
      AS_Put_Line;
      
      AS_Put("sb = ");
      AS_Put(sb);      
      AS_Put_Line;
      
      loop
         AS_Put("Try again (y/n)?:");
         AS_Get_Line(User_Input, Last);
         AS_Put_Line;
         exit when Last > 0;
      end loop;
      
      exit when User_Input(1 .. 1) = "n";
      AS_Put_Line;
   end loop;   
   
end Main;
