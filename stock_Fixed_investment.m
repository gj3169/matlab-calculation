%��ͼģ�ⶨͶ����Ϊ��������Ͷ�Ƿ��ܹ�׬Ǯ
n = 10000;  %��Ͷ����

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