%% Heuristic suboptimal solution for Boolean LP
rng(0,'v5uniform');
n=100;
m=300;
A=rand(m,n);
b=A*ones(n,1)/2;
c=-rand(n,1);

dlmwrite('A.txt', A, 'delimiter', ',', 'precision', 10)
dlmwrite('c.txt', c, 'delimiter', ',', 'precision', 10)


%% Simple portfolio optimization
n=20;
rng(5,'v5uniform');
pbar = ones(n,1)*.03+[rand(n-1,1); 0]*.12;
rng(5,'v5normal');
S = randn(n,n);
S = S'*S;
S = S/max(abs(diag(S)))*.2;
S(:,n) = zeros(n,1);
S(n,:) = zeros(n,1)';
x_unif = ones(n,1)/n;

dlmwrite('pbar.txt', pbar, 'delimiter', ',', 'precision', 10)
dlmwrite('S.txt', S, 'delimiter', ',', 'precision', 10)



