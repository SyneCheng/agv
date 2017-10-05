% % % ENSE 623 Project - AGV System Simulation
% % % 
% % % Master Code

clc
clear


% Delivery Node

lambda_D = 200;         % Delivery Node arrival rate

mean_load_DS = 10;      % 10 units
agv_speed = 5.4;        % based on Otto (km/hr)
n_DS = 1;               % No. of AGVs 
d_DS = 0.040;           % distance between D and S = 40m = 0.04km

mu_DS = mean_load_DS*n_DS/((2*d_DS/agv_speed)+(2/60))

rho_DS = lambda_D/mu_DS % Delivery Node utilization

% Storage Node

lambda_S = mu_DS        % Storage Node arrival rate

mean_load_SM = 10;      % 10 units
agv_speed = 5.4;        % based on Otto (km/hr)
n_SM = 1;               % No. of AGVs 
d_SM = 0.030;           % distance between D and S = 30m = 0.03km

mu_SM = mean_load_SM*n_SM/((2*d_SM/agv_speed)+2/60)

rho_SM = lambda_S/mu_SM     % Storage Node utilization

% Manufacturing Node

lambda_M = mu_SM        % Manufacturing Node arrival rate
mu_M = 300;             % Assumed Manufacturing rate = 1000 units/hr

rho_M = lambda_M/mu_M   % Manufacturing Node utilization

W_M = rho_M/(mu_M-lambda_M)*60  % Wait time (hours/unit)

% Manufacturing Transportation Node

lambda_MB = mu_M        
mean_load_MB = 10;      % 10 units
agv_speed = 5.4;        % based on Otto (km/hr)
n_MB = 1;               % No. of AGVs 
d_MB = 0.030;           % distance between D and S = 200m = 0.200km

mu_MB = mean_load_MB*n_MB/((2*d_MB/agv_speed)+2/60)

rho_MB = lambda_MB/mu_MB

%new comment


