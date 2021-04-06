
#include <time.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include "math.h"

int main( void )
{

// creating file pointer to work with files
    FILE *fptr;

    // opening file in writing mode
    fptr = fopen("speedbench-co3.txt", "w");


printf("C optimized speed test begins....\n");
///////////////////////////////////////////////////////////////////////
    double w = 0.999999;
    clock_t start, end;
    clock_t programstart, programend;
    double duration;
    double answer=0.0;
    int upperlimit;
    upperlimit = 10000000;
    int i;
    int element = 0;
    int iteration = 0;
    int iterations = 10;
    int innerloop = 0;
    double sum = 0.0;
    int loopsize = 10000000;
    int array_length = loopsize;  
    
////////////////////////////////////////////////////////////////////////    
    answer=w;
    programstart = clock();
    start = clock();
    for ( i = 0;i < upperlimit+1; i++)
    answer = sqrt(answer); // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("Sqrt of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration);
    printf(" seconds.\n");
    //   print to text file
    fprintf(fptr, "%s", "Sqrt");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");
//////////////////////////////////////////////////////////////////////// 
    answer=w;
    start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
    answer = sin(answer); // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;   
    printf("Sin  of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration);
    printf(" seconds.\n");
 //   print to text file
    fprintf(fptr, "%s", "Sin");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");
////////////////////////////////////////////////////////////////////////
    answer=w;
    start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
    answer = exp(-answer); // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("Exp  of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration);
    printf(" seconds.\n");
  //   print to text file
    fprintf(fptr, "%s", "Exp");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
    answer = log(1.0+fabs(answer)); // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("Ln   of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration);
    printf(" seconds.\n");
  //   print to text file
    fprintf(fptr, "%s", "Ln");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");
////////////////////////////////////////////////////////////////////////
    answer=w;
    start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
    answer = cos(answer); // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("Cos  of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration);
    printf(" seconds.\n");  
     //   print to text file
    fprintf(fptr, "%s", "Cos");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");  
////////////////////////////////////////////////////////////////////////      
    answer=w;
    start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
      answer = pow(answer,4); // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("x^4  of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration);  
    printf(" seconds.\n");
     //   print to text file
    fprintf(fptr, "%s", "x^4");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
    answer = answer*w; // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("x*x  of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration);  
    printf(" seconds.\n");
     //   print to text file
    fprintf(fptr, "%s", "x*x");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
    answer = answer/w; // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("x/x  of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration);  
    printf(" seconds.\n");
     //   print to text file
    fprintf(fptr, "%s", "x/x");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
    answer = w+answer; // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("x+x  of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration); 
    printf(" seconds.\n");
     //   print to text file
    fprintf(fptr, "%s", "x+x");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");
////////////////////////////////////////////////////////////////////////    
    answer=w;
    start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
    answer = answer-w; // algorithm here
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("x-x  of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration); 
    printf(" seconds.\n");
     //   print to text file
    fprintf(fptr, "%s", "x-x");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");
////////////////////////////////////////////////////////////////////////
     answer = w;   
     upperlimit = 10000000;
       start = clock();
    for ( i = 0;i < upperlimit+1; ++i)
      {answer = sqrt(answer);
       answer = sin(answer); 
       answer = exp(-answer); 
       answer = log(1.0+fabs(answer));
       answer = cos(answer);
       answer = pow(answer,4);
       answer = answer*w;
       answer = answer/w;
       answer = answer+w;
       answer = answer-w;} 
        
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    
    printf("Loop of %4f", w);
    printf(" is %+12.4e", answer);
    printf(" Time = %10f", duration); 
    printf(" seconds.\n");
    //   print to text file
    fprintf(fptr, "%s", "Loop");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n"); 
////////////////////////////////////////////////////////////////////////
    start = clock();
    double *array = (double*)malloc(array_length * sizeof(double));
    for (element = 0; element < array_length; element++)
        array[element] = element;
    for (iteration = 0; iteration < iterations; iteration++)
        for (innerloop = 0; innerloop < loopsize; innerloop++)
            sum += array[(iteration + innerloop) % array_length];
    free(array);
    array = NULL;
    end = clock();
    duration = ((double) (end - start)) / CLOCKS_PER_SEC;
    printf("Array of    %4d", iterations);
    printf(" is %+12.4e", sum);
    printf(" Time = %10f", duration); 
    printf(" seconds.\n");
     //   print to text file
    fprintf(fptr, "%s", "Array");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n");  

////////////////////////////////////////////////////////////////////////    
    programend = clock();
    duration = ((double) (programend - programstart)) / CLOCKS_PER_SEC;
    
    printf("IRun                            ");
    printf(" Time = %10f", duration); 
    printf(" seconds.\n");
    //   print to text file
    fprintf(fptr, "IRun");
    fprintf(fptr, "%9f", duration);
    fprintf(fptr, "\n"); 
////////////////////////////////////////////////////////////////////////   
    fclose(fptr); 
    printf("Done\n");
   return 0;
}

