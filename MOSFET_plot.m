%% Kör skriptet med "Run" eller F5

close all % stänger alla öppna figurer
clear all % tar bort alla definierade variabler
clc       % rensar "Command Window"


%% Första mätningen - bekanta er med transistorn

Vds = [1];
Ids = [1];

figure(1)
plot(Vds,Ids,'*')
xlabel('V_d_s (V)')
ylabel('I_d_s (A)')
title('Utgångskarakteristik för V_g_s = xx V')

%% Samla in mätdata till projektet - UTGÅNGSKARAKTERISTIK

% Vgs = 1.5V

Vds15 = [0.05 0.07 0.1 0.13 0.16 0.18 0.2 0.23 0.25 0.3 0.35 0.4 1 2 4 6];
Ids15 = [0.034 0.044 0.057 0.068 0.076 0.080 0.083 0.086 0.088 0.091 0.092 0.093 0.096 0.097 0.099 0.100]*1e-3;

% Vgs = 3V

Vds3 = [0.05 0.07 0.1 0.14 0.18 0.23 0.28 0.35 0.42 0.50 0.55 0.60 0.65 0.70 0.80 0.9 1 1.15 1.30 2 4 6];
Ids3 = [0.141 0.194 0.270 0.371 0.468 0.582 0.692 0.833 0.964 1.100 1.173 0.124 1.306 1.363 1.460 1.535 1.590 1.645 1.676 1.778 1.822 1.846]*1e-3;

% Vgs = 4.5V

Vds45 = [0.05 0.07 0.1 0.13 0.16 0.20 0.25 0.30 0.35 0.40 0.45 0.50 0.60 0.7 0.8 0.9 1 1.1 1.2 1.30 1.4 1.5 1.6 1.7 1.8 1.9 2.0 4 6];
Ids45 = [0.214 0.294 0.414 0.534 0.651 0.806 0.996 1.180 1.360 1.536 1.707 1.872 2.190 2.490 2.771 3.030 3.271 3.492 3.693 3.872 4.033 4.174 4.296 4.400 4.489 4.557 4.615 4.894 4.956]*1e-3;

figure(2)
plot(Vds15,Ids15,'*')
hold on
plot(Vds3,Ids3,'*r')
plot(Vds45,Ids45,'*k')
xlabel('V_d_s (V)')
ylabel('I_d_s (A)')
legend('V_g_s = 1.5V','V_g_s = 3V','V_g_s = 4.5V','Location','NorthEast')
title('Utgångskarakteristik med gatespänningen som parameter')
xlim([0 10])
ylim([0 6e-3])

%% Samla in mätdata till projektet - ÖVERFÖRINGSKARAKTERISTIK


% Vds = 0.05V

Vgs005 = [0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 3.2 3.4 3.6];
Ids005 = [0 0 0 0 0 0.02 0.011 0.028 0.042 0.062 0.075 0.091 0.105 0.121 0.133 0.143 0.154 0.164 0.175]*1e-3;

% Vds = 0.1V

Vgs01 = [0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 3.2 3.4 3.6];
Ids01 = [0 0 0 0 0 0.002 0.016 0.043 0.072 0.112 0.137 0.176 0.198 0.225 0.251 0.277 0.301 0.313 0.340]*1e-3;

% Vds = 10V

Vgs10 = [0 0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 3.2 3.4 3.6];
Ids10 = [0 0 0 0 0 0.001 0.024 0.077 0.150 0.293 0.479 0.721 0.922 1.187 1.467 1.855 2.229 2.555 3.042]*1e-3;

figure(3)
plot(Vgs005,Ids005,'*')
hold on
plot(Vgs01,Ids01,'*r')
plot(Vgs10,Ids10,'*k')
xlabel('V_g_s (V)')
ylabel('I_d_s (A)')
legend('V_d_s = 0.05V','V_d_s = 0.1V','V_d_s = 10V','Location','NorthEast')
title('Överföringskarakteristik med drainspänningen som parameter')
xlim([0 5])
ylim([0 6e-3])

%% Samla in mätdata till projektet - SUBTRÖSKELOMRÅDET

Vgssub = [0.5 0.6 0.7 0.8 0.9 1.0 1.1 1.2 1.3 1.4 1.5];
Idssub = [0.0015 0.0039 0.0265 0.1175 0.2555 2.9 9.1 24.8 64.9 101.1 105]*1e-6;

figure(4)
semilogy(Vgs10,Ids10,'b*')
hold on
semilogy(Vgssub,Idssub,'r*')
xlabel('V_g_s (V)')
ylabel('I_d_s (A)')
xlim([0 5])
ylim([1e-15 1e-2])
legend('Stark inversion V_d_s = 10V','Subströskelområdet V_d_s = 10V','Location','SouthEast')
title('Subtröskelkarakteristik vid V_d_s = 10V för MOSFET')


