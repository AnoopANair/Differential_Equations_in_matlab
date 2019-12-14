

%% initial values 
% initial y value
y0=1;
% initial time value
t0=0;
% increment value
h=0.1;
% end time 
tend=5;
% total number of steps
N=(tend-t0)/h;
% predefine Y vector dimension
Y=zeros(1,N+1);
%% initalizing the algorithm (euler's explicit method)
% Y(1)= y0, initial Y value
Y(1)=y0;
% time range
T=[t0:h:tend];
% solving the differential equation for each value of T
for i=1:N
   fi= -2*T(i)*Y(i);
   Y(i+1)= Y(i)+fi*h;
end
%% plot the function
plot(T,Y)


