
x = zeros(1,20); x(1) = 1; u = zeros(1,20);
y = zeros(1,20);


a1 = -0.8;
N = length(x);
y(1) = x(1);% First sample, assuming x(0) = 0
for n=2:N % remaining samples
    y(n) = x(n) - a1*y(n-1);
end

b0 = 0.5; b1 = 0.5;
K = length(x);
u(1) = b0*x(1); % First sample, assuming x(0) = 0
for k=2:K % Remaining samples
    u(k) = b0*x(k) + b1*x(k-1);
end


l = linspace(0,20,20);
figure(1);
clf; hold on;
stem(l,x,'ko');
stem(l,y,'ro');
axis([-1 20 -1.5 1.5]);
box on;
xlabel('n'); ylabel('y[n]');
legend({'insignal', 'utsignal'})