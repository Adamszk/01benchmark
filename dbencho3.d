
import std.stdio;
import std.math;
import std.file;
import std.datetime;
import std.string : format;
import std.stdio, core.stdc.stdlib;
import std.container: Array;


void main( )
{
    double w = 0.999999;
    double answer;
    int upperlimit;
    upperlimit = 10000000;
    int i;
    double scaler;
    scaler = 0.001;
    int element = 0;
    int iteration = 0;
    int iterations = 0;
    int innerloop = 0;
    double sum = 0;
    int array_length = 100000000;
  // Create and open a text file
    File MyFile = File("speedbench-do3.txt", "w"); 
      
    printf("D optimized speed test begins.....\n");
    auto programStartTime = MonoTime.currTime;
//////////////////////////////////////////////////////////////////////// 
    answer=w;
    auto startTime = MonoTime.currTime;
    for ( i=0;i<upperlimit+1;i++)
    answer = sqrt(answer); // algorithm here
    auto endTime = MonoTime.currTime;
    auto duration = endTime - startTime;
    printf("Sqrt  of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
    // Write to the file
    MyFile.writeln("Sqrt ", scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;
    startTime = MonoTime.currTime;
    for ( i=0;i<upperlimit+1;i++)
    answer = sin(answer); // algorithm here
    endTime = MonoTime.currTime;
    duration = endTime - startTime;
    printf("Sin   of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
     // Write to the file
    MyFile.writeln("Sin ",scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;
    startTime = MonoTime.currTime;
    for (i=0;i<upperlimit+1;i++)
    answer = exp(-answer); // algorithm here
    endTime = MonoTime.currTime;
    duration = endTime - startTime;
    printf("Exp   of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
    // Write to the file
    MyFile.writeln("Exp ", scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;  
    startTime = MonoTime.currTime;
    for (i=0;i<upperlimit+1;i++)
    answer = log(1.0+abs(answer)); // algorithm here
    endTime = MonoTime.currTime;
    duration = endTime - startTime;
    printf("Ln    of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
    // Write to the file
    MyFile.writeln("Ln ", scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;
    startTime = MonoTime.currTime;
    for (i=0;i<upperlimit+1;i++)
    answer = cos(answer); // algorithm here
    endTime = MonoTime.currTime;
    duration = endTime - startTime;
    printf("Cos   of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
    // Write to the file
    MyFile.writeln("Cos ", scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;   
    startTime = MonoTime.currTime;
    for (i=0;i<upperlimit+1;i++)
    answer = pow(answer,4); // algorithm here
    endTime = MonoTime.currTime;
    duration = endTime - startTime;
    printf("x^4   of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
     // Write to the file
    MyFile.writeln("x^4 ", scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;   
    startTime = MonoTime.currTime;
    for (i=0;i<upperlimit+1;i++)
    answer = answer*w; // algorithm here
    endTime = MonoTime.currTime;
    duration = endTime - startTime;
    printf("x*x   of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
     // Write to the file
    MyFile.writeln("x*x ", scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;    
    startTime = MonoTime.currTime;
    for (i=0;i<upperlimit+1;i++)
    answer = answer/w; // algorithm here
    endTime = MonoTime.currTime;
    duration = endTime - startTime;
    printf("x/x   of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
     // Write to the file
    MyFile.writeln("x/x ", scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;   
    startTime = MonoTime.currTime;
    for (i=0;i<upperlimit+1;i++)
    answer = answer+w; // algorithm here
    endTime = MonoTime.currTime;
    duration = endTime - startTime;
    printf("x+x   of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
     // Write to the file
    MyFile.writeln("x+x ", scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;   
    startTime = MonoTime.currTime;
    for (i=0;i<upperlimit+1;i++)
    answer = answer-w; // algorithm here
    endTime = MonoTime.currTime;
    duration = endTime - startTime;
    printf("x-x   of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
     // Write to the file
    MyFile.writeln("x-x ", scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    answer=w;      
    startTime = MonoTime.currTime;
    for ( i=0;i<upperlimit+1;i++)
    {answer = sqrt(answer); 
     answer = sin(answer); 
     answer = exp(-answer); 
     answer = log(1.0+fabs(answer)); 
     answer = cos(answer); 
     answer = pow(answer,4); 
     answer = answer*w; 
     answer = answer/w; 
     answer = answer+w; 
     answer = answer-w; }
    endTime = MonoTime.currTime;
    duration = endTime - startTime;

    printf("Loop  of %4f", w);
    printf(" is %+15.4e", answer);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
     // Write to the file
    MyFile.writeln("Loop ",  scaler*duration.total!"msecs");
////////////////////////////////////////////////////////////////////////
    startTime = MonoTime.currTime;
    auto array = new double[array_length];
    iterations = 10;
    for (element = 0; element < array_length; element++)
        array[element] = element;
    for (iteration = 0; iteration < iterations; iteration++)
        for (innerloop = 0; innerloop < 10000000; innerloop++)
            sum += array[(iteration + innerloop) % array_length];
    array=null;
    printf("Array of %d", iterations);
    printf("       is %+15.4e", sum);
    writef(" Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
     // Write to the file
    MyFile.writeln("Array ",  scaler*duration.total!"msecs");
//////////////////////////////////////////////////////////////////////// 
    auto programEndTime = MonoTime.currTime;
    duration = programEndTime - programStartTime;
    printf("IRun                              ");
    writef("   Time = %s", scaler*duration.total!"msecs");
    writefln(" seconds.");
     // Write to the file
    MyFile.writeln("IRun ", scaler*duration.total!"msecs");
    
    // Close the file
    MyFile.close();
    
    printf("Done.\n");
}

