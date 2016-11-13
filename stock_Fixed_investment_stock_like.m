%试图模拟定投的行为，看看定投是否能够赚钱
%行情曲线采用每天涨跌幅限制10%以内
n = 500;  %定投次数
benjin = 300;
cha = rand(1,n)./10;
price = zeros(1,n);
fuhao = zeros(1,n);
price(1) = 1;
for i = 2:n
    mid = (randperm(2)-1.5);
    fuhao(i) = 2*mid(1);
    price(i) = price(i-1)*(1+fuhao(i)*cha(i));
    if price(i) < 0.000001
        price(i) = 0.000001;
    end 
    
end
%price = 0.5 + price;

A = benjin* ones(1,n);
B = A ./price;
shouyi = zeros(1,n);
num = zeros(1,n);
for i = 1:1:n
    shouyi(1,i) = (sum(B(1:i))*price(1,i)-benjin*i)/benjin/i;
    num(i) = i;
end
aver_shouyi = sum(shouyi)/n;
end_shouyi = shouyi(n);
price_shouyi = price(n) - 1;
aver_cha = sum(cha)/n;
aver_fuhao = sum(fuhao)/(n-1);
plot(num,price-1,num, shouyi);