-- this code to test without optimization flag -O3

with Ada.Text_IO;  use Ada.Text_IO;
with Ada.Calendar; use Ada.Calendar;
with Ada.Numerics; use Ada.Numerics;
with Ada.Unchecked_Deallocation;
with Ada.Numerics.Generic_Elementary_Functions;


procedure adabench is

  
  type Real is digits 15;

  package REF is new Ada.Numerics.Generic_Elementary_Functions (Real);

  use REF;
   



   timescale          : constant String := " seconds";  
   space              : constant String := "                         "; 
   F                  : File_Type;
   upperLimit         : integer;
   X                  : Real;
   startTime, endTime : Time;
   milliS             : Duration;
   answer             : Real;
   scaler             : integer;
   ProgramStartTime   : Time;
   ProgramEndTime     : Time;
   element            : Integer;
   iteration          : Integer;
   iterations         : Integer;
   innerloop          : Integer;
   sum                : Standard.Long_Float;
   newsum             : Float;
   loopsize           : Integer:= 10000000;
   array_length       : Integer:= loopsize;

 
   
   type vector is array (0..array_length) of Standard.Long_Float;
   type vector_access is access vector;
   procedure free_vector is new Ada.Unchecked_Deallocation
        (Object => vector, Name => vector_access);
        test_array : vector_access := new vector;

 -- programming starts here

begin  
    scaler      := 1;
    upperLimit  := 10000000; -- 10,000,000
    X           := 0.999999;
    loopsize    := 10000000;
    array_length:= loopsize;
    element     := 0;
    iteration   := 0;
    iterations  := 10;
    innerloop   := 0;
    sum         := 0.0;
    
------------------------------------------------------------------------    
    Create (F, Out_File, "speedbench-ada.txt");-- create a text file
------------------------------------------------------------------------    
    Put_Line ("Ada speed test starts.....");
    ProgramStartTime := Clock;
------------------------------------------------------------------------   
    answer:=X; 
    startTime := Clock;

    for i in 0..upperLimit loop    
      answer:= Sqrt (answer);
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;    
    Put_Line ("Sqrt  of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale );
    -- print result to text file
    Put_Line (F, "Sqrt" & "" & Duration'Image(milliS));
------------------------------------------------------------------------
   answer:=X; 
    startTime := Clock;
    for i in 0..upperLimit loop    
      answer:= Sin (answer);
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("Sin   of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);
    -- print result to text file
    Put_Line (F,"Sin" & "" & Duration'Image(milliS));
------------------------------------------------------------------------            
   answer:=X; 
    startTime := Clock;
    for i in 0..upperLimit loop    
      answer:= Exp (-answer);
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("Exp   of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);
    -- print result to text file        
    Put_Line (F,"Exp" & "" & Duration'Image(milliS));
------------------------------------------------------------------------
   answer:=X; 
    startTime := Clock;
    for i in 0..upperLimit loop    
      answer:= Log (1.0 + Abs (answer) );
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("Ln    of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);
    -- print result to text file    
    Put_Line (F,"Ln" & "" & Duration'Image(milliS));
------------------------------------------------------------------------    
   answer:=X; 
    startTime := Clock;
    for i in 0..upperLimit loop    
      answer:= Cos (answer);
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("Cos   of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);
    -- print result to text file    
    Put_Line (F,"Cos" & "" & Duration'Image(milliS));
------------------------------------------------------------------------            
   answer:=X; 
    startTime := Clock;
    for i in 0..upperLimit loop    
      answer:= answer**4;
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("x^4   of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);
 -- print result to text file   
    Put_Line (F,"x^4" & "" & Duration'Image(milliS));
------------------------------------------------------------------------            
    answer:=X;
    startTime := Clock;
    for i in 0..upperLimit loop    
      answer:= answer*X;
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("x*x   of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);
    -- print result to text file   
    Put_Line (F,"x*x" & "" & Duration'Image(milliS));
------------------------------------------------------------------------             
   answer:=X; 
    startTime := Clock;
    for i in 0..upperLimit loop    
      answer:= answer/X;
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("x/x   of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);
    -- print result to text file    
    Put_Line (F,"x/x" & "" & Duration'Image(milliS));
------------------------------------------------------------------------
   answer:=X; 
    startTime := Clock;
    for i in 0..upperLimit loop    
      answer:= answer+X;
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("x+x   of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);
    -- print result to text file   
    Put_Line (F,"x+x" & "" & Duration'Image(milliS));
------------------------------------------------------------------------
   answer:=X; 
    startTime := Clock;
    for i in 0..upperLimit loop    
      answer:= answer-X;
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("x-x   of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);
    -- print result to text file    
    Put_Line (F,"x-x" & "" & Duration'Image(milliS)); 
    ------------------------------------------------------------------------            
    answer:=X;
    startTime := Clock;
    for i in 0..upperLimit loop 
      answer:= Sqrt (answer);
      answer:= Sin (answer);
      answer:= Exp (-answer);  
      answer:= Log (1.0+ abs (answer) ); 
      answer:= Cos (answer);
      answer:= answer**4;
      answer:= X*answer;
      answer:= answer/X;
      answer:= X+answer;
      answer:= answer-X;
    end loop; 
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;

    Put_Line ("Loop  of " & Real'Image (X)
            & " is" & Real'Image (answer) 
            & " Time=" & Duration'Image(milliS) & timescale);  
    -- print result to text file    
    Put_Line (F,"Loop" & "" & Duration'Image(milliS)); 
------------------------------------------------------------------------
    startTime := Clock;
    while element < array_length loop
        test_array(element) := Standard.Long_Float(element);
        element := element + 1;
    end loop;
    while iteration < iterations loop
     innerloop := 0;
     while innerloop < loopsize loop
      sum := sum + test_array((iteration + innerloop) mod array_length);
      innerloop := innerloop + 1;
     end loop;
    iteration := iteration + 1;
    end loop;        
    free_vector(test_array);       
    endTime := Clock;
    milliS := (endTime - startTime) * scaler;
    newsum:=Float(sum);
    Put_Line ("Array of " & Integer'Image (iterations)
            & "                   is " & Float'Image(newsum)
            & "         Time=" & Duration'Image(milliS) & timescale);  
    -- print result to text file    
    Put_Line (F,"Array" & "" & Duration'Image(milliS));
------------------------------------------------------------------------

 ProgramEndTime := Clock;
    milliS := (ProgramEndTime - ProgramStartTime) * scaler;

    Put_Line ("IRun "& space & space & "Time=" 
    & Duration'Image(milliS) & timescale);  
    -- print result to text file    
    Put_Line (F,"IRun" & "" & Duration'Image(milliS));
 -----------------------------------------------------------------------
   --closing text file
   Close (F);
 Put_Line ("Done");
end adabench;
