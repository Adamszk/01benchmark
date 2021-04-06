package main

import (
         "fmt" 
         "time" 
         "math"
         "log"
         "os"
        )

func main() {
	
var upperlimit int = 10000000
var x float64 = 0.999999
var result float64
var    element int = 0
var    iteration int = 0
var    iterations int = 0
var    innerloop int = 0
var    sum float64 = 0.0
var    array_length int = 10000000
var    array []float64 = make([]float64, array_length)

// creating a text file
f, err := os.Create("speedbench-goo3.txt")
  if err != nil {
        log.Fatal(err)
    }

    defer f.Close()
   
fmt.Println(" GO optimized speed test begins....")
////////////////////////////////////////////////////////////////////////
    result = x
    programstart := time.Now()	
    start := time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = math.Sqrt(result)
    }
    elapsed := time.Since(start)
      
    fmt.Print("Sqrt  of ", x)
    fmt.Print(" is ")
    fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"Sqrt")
    _, err2 := fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////
    result = x
    start = time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = math.Sin(result)
    }
    elapsed = time.Since(start)
    fmt.Print("Sin   of ", x)
    fmt.Print(" is ")
    fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"Sin")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////
    result = x
    start = time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = math.Exp(-result)
    }
    elapsed = time.Since(start)
    fmt.Print("Exp   of ", x)
    fmt.Print(" is ")
    fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"Exp")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////
    result = x
    start = time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = math.Log(1.0+math.Abs(result))
    }
    elapsed = time.Since(start)
    fmt.Print("Ln    of ", x)
    fmt.Print(" is ")
    fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"Ln")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////
    result = x
    start = time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = math.Cos(result)
    }
    elapsed = time.Since(start)
    fmt.Print("Cos   of ", x)
    fmt.Print(" is ")
     fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"Cos")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////
    result = x
    start = time.Now()
    for i := 1; i <= upperlimit; i++ {
        result = math.Pow(result,4)
    }
    elapsed = time.Since(start)
    fmt.Print("x^4   of ", x)
    fmt.Print(" is ")
     fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"x^4")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////
    result = x
    start = time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = result*x
    }
    elapsed = time.Since(start)
    fmt.Print("x*x   of ", x)
    fmt.Print(" is ")
    fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"x*x")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////
    result = x
    start = time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = result/x
    }
    elapsed = time.Since(start)
    fmt.Print("x/x   of ", x)
    fmt.Print(" is ")
    fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"x/x")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////
    result = x
    start = time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = result+x
    }
    elapsed = time.Since(start)
    fmt.Print("x+x   of ", x)
    fmt.Print(" is ")
    fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"x+x")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////   
    result = x
    start = time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = result-x
    }
    elapsed = time.Since(start)
    fmt.Print("x-x   of ", x)
    fmt.Print(" is ")
    fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"x-x")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }   
////////////////////////////////////////////////////////////////////////
    result = x
    start = time.Now()
    for i := 0; i <= upperlimit; i++ {
        result = math.Sqrt(result) 
        result = math.Sin(result) 
        result = math.Exp(-result) 
        result = math.Log(1.0+math.Abs(result)) 
        result = math.Cos(result) 
        result = math.Pow(result,4)
        result = result*x 
        result = result/x 
        result = result+x 
        result = result-x 
    }
    elapsed = time.Since(start)
    fmt.Print("Loop  of ", x)
    fmt.Print(" is ")
    fmt.Printf("%+5.6e",result)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"Loop")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }
////////////////////////////////////////////////////////////////////////
    start = time.Now()

    iterations = 10
    for element = 0; element < array_length; element++ {
        array[element] = float64(element)
    }
    for iteration = 0; iteration < iterations; iteration++ {
        for innerloop = 0; innerloop < 10000000; innerloop++ {
            sum += array[(iteration + innerloop) % array_length]
        }
    }
    array = nil

    elapsed = time.Since(start)
    fmt.Print("Array of ", iterations)
    fmt.Print("       is ")
    fmt.Printf("%+5.6e",sum)
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"Array")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }

////////////////////////////////////////////////////////////////////////
    elapsed = time.Since(programstart)
    fmt.Print("IRun                              ")
    fmt.Print(" Time = ", elapsed.Seconds())
    fmt.Println(" seconds")
    // writting to the file
    fmt.Fprintf(f,"IRun")
    _, err2 = fmt.Fprintf(f," %v\n",elapsed.Seconds())

    if err2 != nil {
        log.Fatal(err2)
    }

    fmt.Println("done")
  
}

