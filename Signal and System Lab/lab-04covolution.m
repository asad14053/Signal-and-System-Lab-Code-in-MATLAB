close all
clear all;
clc;
n = input('size :');
for i=1:n
    a(i)=input('');
end
fz = input('zero index :');
m = input('size :');
for i=1:m
    b(i)=input('');
end
sz = input('zero :');
tlen = n+m-1;
p=1-fz;
q=1-sz;
%st = -fz-sz+2;
st=p+q;
ed = tlen+st-1;
for i=n+1:tlen
    a(i)=0;
end
for i=m+1:tlen
    b(i)=0;
end
for i=1:tlen
    for j=1:tlen
        x(i,j)=a(i)*b(j);
    end
end
x
for i=1:tlen
    ans(i)=0;
end
for step=1:tlen
    j=1;
    for i=step:-1:1
        ans(step) = ans(step)+x(i,j);
        j=j+1;
    end
end
for i=1:tlen
    fprintf('%d ',ans(i));
end
fprintf('\n');
for i =st:ed
    if(i==0) fprintf('^ ');
    else fprintf('  ');
    end
end
fprintf('\n');
        
