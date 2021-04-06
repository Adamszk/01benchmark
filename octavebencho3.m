clear all;
z=0.999999;
x=0.999999;
upperlimit=10000000; % originally 10000000
y=zeros(1,1);
element = 0;
iteration = 0;
iterations = 10;
innerloop = 0;
array_length = 10000000;
maxi=10000000;
suma = 0.0;
array = [];
array = zeros(1, array_length);
filename = "speedbench-octaveo3.txt";
fid = fopen (filename, "w");
fprintf('GNU Octave optimized speed test begins........\n');
pstart = tic;
% ------------------------------------------------------------------------------
y=x;
tic;
for i=0:upperlimit
y=sqrt(y);
endfor
timer=toc;
fprintf('Sqrt  of %0.7f is %+0.3e Time = %0.3f seconds.\n',x,y,timer);
fprintf(fid,'Sqrt %0.3f\n',timer);
%-------------------------------------------------------------------------------
y=x;
tic;
for i=0:upperlimit
y=sin(y);
endfor
timer=toc;
fprintf('Sin   of %0.7f is %+0.3e Time = %0.3f seconds.\n',x,y,timer);
fprintf(fid,'Sin %0.3f\n',timer);
%-------------------------------------------------------------------------------
y=x;
tic;
for i=0:upperlimit
y=exp(-y);
endfor
timer=toc;
fprintf('Exp   of %0.7f is %+0.3e Time = %0.3f seconds.\n',x,y,timer);
fprintf(fid,'Exp %0.3f\n',timer);
%-------------------------------------------------------------------------------
y=x;
tic;
for i=0:upperlimit
y=log(1.0+abs(y));
endfor
timer=toc; 
fprintf('Ln    of %0.7f is %+0.3e Time = %0.3f seconds.\n',x,y,timer);
fprintf(fid,'Ln %0.3f\n', timer);
%-------------------------------------------------------------------------------
y=x;
tic;
for i=0:upperlimit
y=cos(y);
endfor
timer=toc;
fprintf('Cos   of %0.7f is %+0.3e Time = %0.3f seconds.\n',x,y,timer);
fprintf(fid,'Cos %0.3f\n',timer);
%-------------------------------------------------------------------------------
clear y;

y=x;
tic;
for i=0:upperlimit
y=y^4;
endfor
timer=toc;
fprintf('x^4   of %0.7f is %+0.3e Time = %0.3f seconds.\n',x,y,timer);
fprintf(fid,'x^4 %0.3f\n',timer);
%-------------------------------------------------------------------------------
tic                                         % vectorized function x*x
p = repmat(z, 1, upperlimit);
p(1) = z;
p = cumprod(p);
timer=toc;
fprintf('x*x   of %0.7f is %+0.3e Time = %0.3f seconds.\n',z,p(upperlimit),timer);
fprintf(fid,'x*x %0.3f\n',timer);
clear p;
%-------------------------------------------------------------------------------
tic                                         % vectorized function x/x
p = repmat(1/z, 1, upperlimit);
p(1) = 1/z;
p = cumprod(p);
timer=toc;
fprintf('x/x   of %0.7f is %+0.3e Time = %0.3f seconds.\n',z,p(upperlimit),timer);
fprintf(fid,'x/x %0.3f\n',timer);
%-------------------------------------------------------------------------------
answer=(1:upperlimit+2);                   % vectorized function x+x
answer(:)=0;
v=(1:upperlimit+2);
v(:)=z;
v(1)=z;
tic;
answer=sum(v);
timer=toc;
fprintf('x+x   of %0.7f is %+0.3e Time = %0.3f seconds.\n',z,answer,timer);
fprintf(fid,'x+x %0.3f\n',timer);
clear answer;
clear v;
%-------------------------------------------------------------------------------
z=0.999999;                                 % vectorized function x-x
tic;
answer=(1:upperlimit);
answer(:)=0;
u=(1:upperlimit);
u(:)=-z;
u(1)=-z;
answer=sum(u);
timer=toc;
fprintf('x-x   of %0.7f is %+0.3e Time = %0.3f seconds.\n',x,answer,timer);
fprintf(fid,'x-x %0.3f\n',timer);
clear answer;
clear u;
%-------------------------------------------------------------------------------
y=x;
tic;
for i=0:upperlimit
y=sqrt(y);

y=sin(y);

y=exp(-y);

y=log(1.0+abs(y));

y=cos(y);

y=y^4;

y=y*x;

y=y/x;

y=y+x;

y=y-x;
endfor
timer=toc;
fprintf('Loop  of %0.7f is %+0.3e Time = %0.3f seconds.\n',x,y,timer);
fprintf(fid,'Loop %0.3f\n',timer);
%-------------------------------------------------------------------------------
tic
array=(0:array_length-1);
iteration=(0:iterations-1);
innerloop=(0:maxi-1);
suma=sum(array(1+reshape((mod(iteration'+innerloop,array_length))',1,[])));
clear array;
timer=toc;
fprintf('Array of %d        is %+0.3e Time = %0.3f seconds.\n',iterations,suma,timer);
fprintf(fid,'Array %0.3f\n',timer);
%-------------------------------------------------------------------------------
timer=toc(pstart);
fprintf('IRun                             Time = %0.3f seconds.\n',timer);
fprintf(fid,'IRun %0.3f\n',timer);
fclose (fid);
fprintf('Done')
