import math
import time
import sys

element = 0
iteration = 0
innerloop = 0
total = float(0.0)
array_length = 10000000
array = [i for i in range(array_length)]

upperrange = 10000000
w = float(0.999999)  

f = open("speedbench-pythono3.txt", "w")
#-----------------------------------------------------------------------
print"Python optimized speed test begins..."  
#-----------------------------------------------------------------------
pstart = time.clock()
answer=w
t0 = time.clock()
for x in range(0, upperrange):
	answer = math.sqrt(answer)
timer1=time.clock() - t0
print"Sqrt  of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("Sqrt %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
answer=w 
t0 = time.clock()
for x in range(0, upperrange):
	answer = float(math.sin(answer))
timer1=time.clock() - t0
print"Sin   of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("Sin %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
answer=w  
t0 = time.clock()
for x in range(0, upperrange):
	answer = math.exp(-answer)
timer1=time.clock() - t0
print"Exp   of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("Exp %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
answer=w
t0 = time.clock()
for x in range(0, upperrange):
	answer = math.log(1+abs(answer))
timer1=time.clock() - t0
print"Ln    of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("Ln %5f" %(timer1)) 
f.write("\n") 
#-----------------------------------------------------------------------
answer=w
t0 = time.clock()
for x in range(0, upperrange):
	answer = math.cos(answer)
timer1=time.clock() - t0
print"Cos   of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("Cos %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
answer=w
t0 = time.clock()
for x in range(0, upperrange):
	answer =answer** 4
timer1=time.clock() - t0
print"x^4   of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("x^4 %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
answer=w
t0 = time.clock()
for x in range(0, upperrange):
	answer = answer*w
timer1=time.clock() - t0
print"x*x   of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("x*x %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
answer=w
t0 = time.clock()
for x in range(0, upperrange):
	answer =  answer/w
timer1=time.clock() - t0
print"x/x   of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("x/x %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
answer=w  
t0 = time.clock()
for x in range(0, upperrange):
	answer = answer+w
timer1=time.clock() - t0
print"x+x   of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("x+x %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
answer=w
t0 = time.clock()
for x in range(0, upperrange):
	answer = answer-w
timer1=time.clock() - t0
print"x-x   of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("x-x %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
answer = w
t0 = time.clock()
for x in range(0, upperrange):
	answer = math.sqrt(answer)

	answer = math.sin(answer) 

	answer = math.exp(-answer) 

	answer = math.log(1+abs(answer)) 

	answer = math.cos(answer) 

	answer = answer ** 4 

	answer = answer*w 

	answer = answer/w 

	answer = answer+w 

	answer = answer-w 
timer1=time.clock() - t0
print"Loop  of %5f is %+11.6e Time = %5f seconds." %(w,answer,timer1)
f.write("Loop %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
iterations=10
t0 = time.clock()
while iteration < iterations:
    innerloop = 0
    while innerloop < 10000000:
        total += array[(iteration + innerloop) % array_length];
        innerloop += 1
    iteration += 1
del array
timer1=time.clock() - t0
print"Array of %d       is %+11.6e Time = %5f seconds." %(iterations,total,timer1)
f.write("Array %5f" %(timer1))
f.write("\n") 
#-----------------------------------------------------------------------
timer1=time.clock() - pstart
print"IRun                               Time = %5f seconds." %(timer1)
f.write("IRun %5f" %(timer1))
f.write("\n") 
print"Done"

f.close()



