%试图模拟定投的行为，看看定投是否能够赚钱
n = 10000;  %定投次数

price = rand(1,n);
price = 0.5 + price;
%plot(price);
A = 500* ones(1,n);
B = A ./price;
shouyi = zeros(1,n);
for i = 1:1:n
    shouyi(1,i) = (sum(B(1:i))*price(1,i)-500*i)/500/i;
end
sum(shouyi)/n