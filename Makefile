all:\
standard-ada\
optimized-ada\
standard-c\
optimized-c\
standard-cpp\
optimized-cpp\
standard-go\
optimized-go\
standard-pascal\
optimized-pascal\
standard-javascript\
optimized-javascript\
standard-python\
optimized-python\
standard-d\
optimized-d\
standard-octave\
optimized-octave\
standard-fortran\
optimized-fortran\
run_test\
clean

standard-ada: adabench.adb
	gnatmake adabench.adb 
	
optimized-ada: adabencho3.adb 	
	gnatmake -O3 adabencho3.adb 
	
standard-c: cbench.c 
	gcc -o cbench cbench.c -lm 
	
optimized-c: cbencho3.c 
	gcc -O3 -o cbencho3 cbencho3.c -lm	
	
standard-cpp: cppbench.cpp 
	g++ -Wall -o cppbench cppbench.cpp 
	
optimized-cpp: cppbencho3.cpp
	g++ -Wall -O3 -o cppbencho3 cppbencho3.cpp  	

standard-go: gobench.go 
	go build -gcflags '-N -l' -o gobench gobench.go
	
optimized-go: gobencho3.go 
	go build -o gobencho3 gobencho3.go	
	
standard-pascal: pascalbench.pas 
	fpc pascalbench.pas
	
optimized-pascal: pascalbencho3.pas 
	fpc -O3 pascalbencho3.pas
	
standard-javascript: javascriptbench.js 
	
optimized-javascript: javascriptbencho3.js 
	
standard-python: pythonbench.py 
	python -m py_compile pythonbench.py
	
optimized-python: pythonbencho3.py 
	python -m compileall -q -f -d py_compile pythonbencho3.py	

standard-d: dbench.d 
	dmd -w -ofdbench dbench.d 
	
optimized-d: dbencho3.d 
	dmd -w -O -ofdbencho3 dbencho3.d 
	
standard-octave: octavebench.m
	
optimized-octave: octavebencho3.m

standard-fortran: fortranbench.f90
	gfortran -Wall -o fortranbench fortranbench.f90 
	
optimized-fortran: fortranbencho3.f90
	gfortran -Ofast -Wall -o fortranbencho3 fortranbencho3.f90 
	
clean:
	rm -f adabench adabench.ali
	rm -f *.o 
	rm -f adabencho3 adabencho3.ali
	rm -f *.o 
	rm -f cbench 
	rm -f *.o 
	rm -f cbencho3 
	rm -f *.o 
	rm -f cppbench 
	rm -f *.o 
	rm -f cppbencho3 
	rm -f *.o 
	rm -f gobench 
	rm -f *.o 
	rm -f gobencho3 
	rm -f *.o 
	rm -f pascalbench 
	rm -f *.o 
	rm -f pascalbencho3 
	rm -f *.o 
	rm -f javascriptbench
	rm -f *.o 
	rm -f javascriptbencho3 
	rm -f *.o 
	rm -f pythonbench
	rm -f *.pyc 
	rm -f pythonbencho3 
	rm -f *.pyc 
	rm -f dbench 
	rm -f *.o 
	rm -f dbencho3 
	rm -f *.o 
	rm -f fortranbench 
	rm -f *.o 
	rm -f fortranbencho3 
	rm -f *.o 
	
run_test: all
	echo -n > output_file.txt
	time -ao output_file.txt -f "Ada %e" ./adabench 
	time -ao output_file.txt -f "C %e" ./cbench 
	time -ao output_file.txt -f "C++ %e" ./cppbench 
	time -ao output_file.txt -f "GO %e" ./gobench 
	time -ao output_file.txt -f "Pascal %e" ./pascalbench 
	time -ao output_file.txt -f "Javascript %e" node --no-opt --optimize_for_size javascriptbench.js
	time -ao output_file.txt -f "Python %e" python pythonbench.pyc 
	time -ao output_file.txt -f "D %e" ./dbench 
	time -ao output_file.txt -f "Octave %e" octave octavebench.m
	time -ao output_file.txt -f "Fortran %e" ./fortranbench 
	time -ao output_file.txt -f "Ada-O3 %e" ./adabencho3
	time -ao output_file.txt -f "C-O3 %e" ./cbencho3
	time -ao output_file.txt -f "C++-O3 %e" ./cppbencho3
	time -ao output_file.txt -f "GO-O3 %e" ./gobencho3
	time -ao output_file.txt -f "Pascal-O3 %e" ./pascalbencho3
	time -ao output_file.txt -f "Javascript-O3 %e" node javascriptbencho3.js
	time -ao output_file.txt -f "Python-O3 %e" python pythonbencho3.pyc
	time -ao output_file.txt -f "D-O3 %e" ./dbencho3
	time -ao output_file.txt -f "Octave-O3 %e" octave octavebencho3.m
	time -ao output_file.txt -f "Fortran-O3 %e" ./fortranbencho3 
	echo -n > codesize.txt
	stat -c %s "adabench" --printf='Ada %s\n' >> codesize.txt
	stat -c %s "cbench" --printf='C %s\n' >> codesize.txt
	stat -c %s "cppbench" --printf='C++ %s\n' >> codesize.txt
	stat -c %s "gobench" --printf='GO %s\n' >> codesize.txt
	stat -c %s "pascalbench" --printf='Pascal %s\n' >> codesize.txt
	stat -c %s "javascriptbench.js" --printf='Javascript %s\n' >> codesize.txt
	stat -c %s "pythonbench.pyc" --printf='Python %s\n' >> codesize.txt
	stat -c %s "dbench" --printf='D %s\n' >> codesize.txt
	stat -c %s "octavebench.m" --printf='Octave %s\n' >> codesize.txt
	stat -c %s "fortranbench" --printf='Fortran %s\n' >> codesize.txt
	stat -c %s "adabencho3" --printf='Ada-O3 %s\n' >> codesize.txt
	stat -c %s "cbencho3" --printf='C-O3 %s\n' >> codesize.txt
	stat -c %s "cppbencho3" --printf='C++-O3 %s\n' >> codesize.txt
	stat -c %s "gobencho3" --printf='GO-O3 %s\n' >> codesize.txt
	stat -c %s "pascalbencho3" --printf='Pascal-O3 %s\n' >> codesize.txt
	stat -c %s "javascriptbencho3.js" --printf='Javascript-O3 %s\n' >> codesize.txt
	stat -c %s "pythonbencho3.pyc" --printf='Python-O3 %s\n' >> codesize.txt
	stat -c %s "dbencho3" --printf='D-O3 %s\n' >> codesize.txt
	stat -c %s "octavebencho3.m" --printf='Octave-O3 %s\n' >> codesize.txt
	stat -c %s "fortranbencho3" --printf='Fortran-O3 %s\n' >> codesize.txt
