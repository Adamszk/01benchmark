//  speed test of math calculations 
// use node.js legacy to compile/run the code

upperlimit = 10000000
w=0.999999
var nano=1000000000
var hrstart = process.hrtime()
var fs = require("fs")
var writeStream = fs.createWriteStream("speedbench-javascripto3.txt")
var element = 0;
var iteration = 0;
var iterations = 0;
var innerloop = 0;
var sum = 0.0;
var array_length = 10000000;
var array = new Array(array_length);
var argc = process.argv.length


console.log('JavaScript optimized speed test begins...');
var programstart = process.hrtime();
var startd = new Date().getTime();
//var hrTime = process.hrtime()



///////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
var start1 = new Date().getTime();
var hrTime = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=Math.sqrt(answer);
  }
var end2 = new Date().getTime(); 
hrend = process.hrtime(hrstart);
console.info('Sqrt  of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='Sqrt ' + (hrend[0] + hrend[1] / nano) + '\n';
writeStream.write(resulttext);

//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=Math.sin(answer);
  }  
hrend = process.hrtime(hrstart);
console.info('Sin   of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='Sin ' + (hrend[0] + hrend[1] / nano) +'\n';
writeStream.write(resulttext);

//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=Math.exp(-answer);
  }  
hrend = process.hrtime(hrstart);
console.info('Exp   of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='Exp ' + (hrend[0] + hrend[1] / nano) +'\n';
writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=Math.log(1.0+Math.abs(answer));
  }  
hrend = process.hrtime(hrstart);
console.info('Ln    of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='Ln ' + (hrend[0] + hrend[1] / nano) +'\n';
writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=Math.cos(answer);
  }  
hrend = process.hrtime(hrstart);
console.info('Cos   of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='Cos ' + (hrend[0] +  hrend[1] / nano) +'\n';
writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=Math.pow(answer,4);
  }  
hrend = process.hrtime(hrstart);
console.info('x^4   of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='x^4 ' + (hrend[0] + hrend[1] / nano) +'\n';
writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=answer*w;
  }  
hrend = process.hrtime(hrstart);
console.info('x*x   of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='x*x ' + (hrend[0] + hrend[1] / nano) +'\n';
writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=answer/w;
  }  
hrend = process.hrtime(hrstart);
console.info('x/x   of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='x/x ' + (hrend[0] + hrend[1] / nano) +'\n';
writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=answer+w;
  }  
hrend = process.hrtime(hrstart);
console.info('x+x   of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='x+x ' + (hrend[0] + hrend[1] / nano) +'\n';
writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=answer-w;
  }  
hrend = process.hrtime(hrstart);
console.info('x-x   of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
resulttext='x-x ' + (hrend[0] + hrend[1] / nano) +'\n';
writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
answer=w;
hrstart = process.hrtime();
for (let step = 0; step < upperlimit+1; step++) {
    answer=Math.sqrt(answer);
    answer=Math.sin(answer);
    answer=Math.exp(-answer);
    answer=Math.log(1.0+Math.abs(answer));
    answer=Math.cos(answer);
    answer=Math.pow(answer,4);
    answer=answer*w;
    answer=answer/w;
    answer=answer+w;
    answer=answer-w;
  }  
  hrend = process.hrtime(hrstart);

  console.info('Loop  of ',w,' is ',answer.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
  resulttext='Loop ' + (hrend[0] + hrend[1] / nano) +'\n';
  writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
    iterations =10 ;
    hrstart = process.hrtime();
for (element = 0; element < array_length; element++)
    array[element] = element;
for (iteration = 0; iteration < iterations; iteration++)
    for (innerloop = 0; innerloop < 10000000; innerloop++)
        sum += array[(iteration + innerloop) % array_length];
array = 0
hrend = process.hrtime(hrstart);

  console.info('Array of ',iterations,'       is ',sum.toExponential(4),' Time = ',hrend[0]+hrend[1] / nano ,'seconds.');
  resulttext='Array ' + (hrend[0] + hrend[1] / nano) +'\n';
  writeStream.write(resulttext);
//////////////////////////////////////////////////////////////////////////////////////////////////
  var programend = process.hrtime(programstart);

  // Now calculate and output the difference
  console.info('IRun                               Time = ',programend[0]+programend[1] / nano,' seconds.'); 
  resulttext='IRun '+(programend[0]+programend[1] / nano) +'\n';
 
  writeStream.write(resulttext);
  writeStream.end();

console.log("Done")
