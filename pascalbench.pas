program SpeedBench;

 uses sysutils, DateUtils, math;
 
 type
    vector = array of double;
 var
    element : longint;
    iteration : longint;
    iterations : longint;
    innerloop : longint;
    sum : double;
    array_length : longint;
    my_array : vector; 
    answer, w, duration1:Double;
    upperlimit: longint;
    i:longint;
    F: TextFile;
    FromTime, ToTime: TDateTime;
    ProgramStart, ProgramEnd: TDateTime;
 
begin

   // opening a file
   Assign(F, 'speedbench-pascal.txt');
   Rewrite(F);

 
    w:= 0.999999;
    upperlimit:=10000000;
    element := 0;
    iteration := 0;
    iterations := 0;
    innerloop := 0;
    sum := 0.0;
    array_length := 10000000;
    setlength(my_array, array_length);
    
    
    
    writeln('Pascal speed test begins....');
    ProgramStart := Now;
    ////////////////////////////////////////////////////////////////////
    answer:=w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:=sqrt(answer);  
    end;        
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);    
    write ('Sqrt  of ',w:4:7);
    Write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln(' seconds. ');
    // writing to the text file
    writeln (F,'Sqrt ',duration1:4:4);
    ////////////////////////////////////////////////////////////////////    
    answer:=w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:=sin(answer);  
    end;   
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);     
    write ('Sin   of ',w:4:7);
    Write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln(' seconds. ');
    // writing to the text file
    writeln (F,'Sin ',duration1:4:4);
    ////////////////////////////////////////////////////////////////////
    answer:=w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:= exp(-answer);  
    end;   
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);   
    write ('Exp   of ',w:4:7);
    write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln(' seconds. ');
    // writing to the text file
    writeln (F,'Exp ',duration1:4:4);
    ////////////////////////////////////////////////////////////////////
    answer:=w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:=ln(1.0+abs(answer));  
    end;   
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);    
    write ('Ln    of ',w:4:7);
    write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln(' seconds. ');
    // writing to the text file
    writeln (F,'Ln ',duration1:4:4);
    ////////////////////////////////////////////////////////////////////  
    answer:=w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:=cos(answer);  
    end;   
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime); 
    write ('Cos   of ',w:4:7);
    Write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln(' seconds. ');
    // writing to the text file
    writeln (F,'Cos ',duration1:4:4);

    ////////////////////////////////////////////////////////////////////
    answer:=w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:= answer**4;  
    end;   
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);     
    write ('x^4   of ',w:4:7);
    Write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln(' seconds. ');
    // writing to the text file
    writeln (F,'x^4 ',duration1:4:4); 
    ////////////////////////////////////////////////////////////////////    
    answer:=w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:= answer*w;  
    end;   
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);    
    write ('x*x   of ',w:4:7);
    Write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln(' seconds. ');
    // writing to the text file
    writeln (F,'x*x ',duration1:4:4);

    ////////////////////////////////////////////////////////////////////  
    answer:=w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:= answer/w;  
    end;   
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);    
    write ('x/x   of ',w:4:7);
    Write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln (' seconds. ');
    // writing to the text file
    writeln (F,'x/x ',duration1:4:4);

    ////////////////////////////////////////////////////////////////////
    answer:=w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:= answer+w;  
    end;   
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);    
    write ('x+x   of ',w:4:7);
    Write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln (' seconds. ');
    // writing to the text file
    writeln (F,'x+x ',duration1:4:4);

    ////////////////////////////////////////////////////////////////////
    answer:=w;
    FromTime := Now;      
    for i:= 0 to upperlimit do 
    begin
    answer:= answer-w;  
    end;   
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);    
    write ('x-x   of ',w:4:7);
    Write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln(' seconds. ');
    // writing to the text file
    writeln (F,'x-x ',duration1:4:4);

    ////////////////////////////////////////////////////////////////////
    answer:= w;
    FromTime := Now;
    for i:= 0 to upperlimit do 
    begin
    answer:=sqrt(answer);  
   
    answer:=sin(answer);  
 
    answer:= exp(-answer);  

    answer:=ln(1.0+abs(answer));  

    answer:=cos(answer);  

    answer:= answer**4;  

    answer:= answer*w;  

    answer:= answer/w;  

    answer:= answer+w;  

    answer:= answer-w;  
    end;   
    
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);  
    write ('Loop  of ',w:4:7);
    Write(Format(' is %*.*e', [15, 4, answer]));
    write (' Time = ',duration1:4:4);
    writeln (' seconds. ');
    writeln (F,'Loop ',duration1:4:4);
    ////////////////////////////////////////////////////////////////////
    FromTime := Now; 
    iterations := 10;
    for element := 0 to array_length-1 do
        my_array[element] := element;
    for iteration := 0 to iterations-1 do
        for innerloop := 0 to 10000000-1 do
            sum := sum + my_array[(iteration + innerloop) mod array_length];
    my_array := nil;
    ToTime := Now;
    duration1 := SecondSpan(ToTime,FromTime);  
    write ('Array of ',iterations);
    Write(Format('        is %*.*e', [15, 4, sum]));
    write (' Time = ',duration1:4:4);
    writeln (' seconds. ');
    writeln (F,'Array ',duration1:4:4);
    //////////////////////////////////////////////////////////////////// 
     
    ProgramEnd := Now;
    duration1 := SecondSpan(ProgramEnd,ProgramStart);  
    write ('IRun                    ');
    write ('              Time = ',duration1:4:4);
    writeln (' seconds. ');
     // writing to the text file
    writeln (F,'IRrun ',duration1:4:4);
         
    // closing a text file
    Close(F);
      
     writeln('Done'); 
end.
