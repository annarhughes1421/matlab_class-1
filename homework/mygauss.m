%% Script used to test multGauss.m funtion. 

% define the domain
x = 0:0.1:20; 

% define the input matrices with column 1 containing amplitudes, column 2 the
%sigmas (width), and column 3 the positions (locations) for each of the
%four respective gaussians.
m_1 = [0.1, 0.5, 2;0.5, 1, 4;1, 2, 6;2, 3, 8]; %matrix specifed 
m_2 = [1, 0.5, 2;2, 1, 4;3, 2, 6;4, 3, 8]; %other to test
m_3 = [1, 1, 0.5;2, 2, 1;3, 3, 2;4, 4, 3]; %other to test
m_5 = [1, 4, 2;4,0.5,8];

% plots using multGauss
figure(1)
% overlay plot with all 4 different gaussian sums
plot(x,multGauss(m_1,x),x,multGauss(m_2,x),x,multGauss(m_3,x),x,gaussmf(x,[4,2]),x,gaussmf(x,[0.5,8])*4)
ylabel('Sum');

figure(2)
% overlay plot with all 4 different gaussian sums
plot(x,gaussmf(x,[4,2]),x,gaussmf(x,[0.5,8])*4,x,multGauss(m_5,x))
ylabel('Sum');

%% other to test with not 3 columns
m_4 = [3,4;5,6;1,2]
multGauss(m_4,x)
