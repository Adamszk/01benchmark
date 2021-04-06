#include <stdio.h>
#include <math.h>
#include <ctime>
#include <limits>
#include <iomanip>
#include <iostream>
#include <fstream>
#include <cstdlib>
using namespace std;

////////////////////////////////////////////////////////////////////////

int main( )
{
    double w = 0.999999;
    std::clock_t start;
    double duration;
    double answer;
    int upperlimit;
    upperlimit = 10000000;
    int i;
    std::clock_t programstart;
    int element = 0;
    int iteration = 0;
    int iterations = 0;
    int innerloop = 0;
    double sum = 0;
    int array_length = 100000000;
    
    
    
  // Create and open a text file
  ofstream MyFile("speedbench-cppo3.txt");  
  
//////////////////////////////////////////////////////////////////////// 
   
    printf("C++ optimized speed test begins.....\n");
    answer=w;
    programstart = std::clock();
    start = std::clock();
    for ( i=0;i<upperlimit+1;i++)
    answer = sqrt(answer); // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("Sqrt of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
    // Write to the file
    MyFile << setprecision (4) << fixed;
    MyFile << "Sqrt "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////
    answer=w;
    start = std::clock();
    for (int i=0;i<upperlimit+1;i++)
    answer = sin(answer); // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("Sin  of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
     // Write to the file
    MyFile << "Sin "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////
    answer=w;
    start = std::clock();
    for (int i=0;i<upperlimit+1;i++)
    answer = exp(-answer); // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("Exp  of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
     // Write to the file
    MyFile << "Exp "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
//////////////////////////////////////////////////////////////////////// 
    answer=w;
    start = std::clock();
    for (int i=0;i<upperlimit+1;i++)
    answer = log(1.0+abs(answer)); // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("Ln   of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
    // Write to the file
    MyFile << "Ln "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////
    answer=w;
    start = std::clock();
    for (int i=0;i<upperlimit+1;i++)
    answer = cos(answer); // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("Cos  of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
    // Write to the file
    MyFile << "Cos "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = std::clock();
    for (int i=0;i<upperlimit+1;i++)
    answer = pow(answer,4); // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("x^4  of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
     // Write to the file
    MyFile << "x^4 "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = std::clock();
    for (int i=0;i<upperlimit+1;i++)
    answer = answer*w; // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("x*x  of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
     // Write to the file
    MyFile << "x*x "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = std::clock();
    for (int i=0;i<upperlimit+1;i++)
    answer = answer/w; // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("x/x  of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
     // Write to the file
    MyFile << "x/x "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = std::clock();
    for (int i=0;i<upperlimit+1;i++)
    answer = answer + w; // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("x+x  of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
     // Write to the file
    MyFile << "x+x "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = std::clock();
    for (int i=0;i<upperlimit+1;i++)
    answer = answer - w; // algorithm here
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("x-x  of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
     // Write to the file
    MyFile << "x-x "<< setw(5) << setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////    
    
    upperlimit = 10000000;
    answer = w;
    start = std::clock();
    for ( i=0;i<upperlimit+1;i++)
    {answer = sqrt(answer); 
     answer = sin(answer); 
     answer = exp(-answer); 
     answer = log(1.0+abs(answer)); 
     answer = cos(answer); 
     answer = pow(answer,4); 
     answer = answer*w; 
     answer = answer/w; 
     answer = answer+w; 
     answer = answer-w; }
     duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;

    printf("Loop of %4f", w);
    printf(" is %11.4e", answer);
    printf("   Time = %10f seconds. \n", duration);
     // Write to the file 
    MyFile << "Loop "<< setw(6)<< setprecision(6) << duration;
    MyFile << "\n";
////////////////////////////////////////////////////////////////////////
    start = std::clock();
    double *array = new double[array_length];
    iterations=10;
    for (element = 0; element < array_length; element++)
        array[element] = element;
    for (iteration = 0; iteration < iterations; iteration++)
        for (innerloop = 0; innerloop < 10000000; innerloop++)
            sum += array[(iteration + innerloop) % array_length];
    delete array;
    array = NULL;
    duration = ( std::clock() - start ) / (double) CLOCKS_PER_SEC;
    printf("Array of %d", iterations);
    printf("      is %11.4e ",sum);
    printf("  Time = %10f seconds. \n", duration);
     // Write to the file 
    MyFile << "Array "<< setw(6)<< setprecision(6) << duration;
    MyFile << "\n";

////////////////////////////////////////////////////////////////////////
    duration = ( std::clock() - programstart) / (double) CLOCKS_PER_SEC;
    printf("IRun                         ");
    printf("     Time = %10f seconds. \n", duration);
     // Write to the file 
    MyFile << "IRun "<< setw(6) << setprecision(6) <<  duration;
    MyFile << "\n";
    // Close the file
    MyFile.close();
    
   printf("Done.\n");
}

