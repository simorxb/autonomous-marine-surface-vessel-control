% Access the signals from out.logsout

eta = out.logsout.get('eta').Values.Data;

F1 = out.logsout.get('F1').Values.Data;
t_F1 = out.logsout.get('F1').Values.Time;

F2 = out.logsout.get('F2').Values.Data;
t_F2 = out.logsout.get('F2').Values.Time;

psi = out.logsout.get('psi').Values.Data;
t_psi = out.logsout.get('psi').Values.Time;

u = out.logsout.get('u').Values.Data;
t_u = out.logsout.get('u').Values.Time;

psi_des = out.logsout.get('psi_des').Values.Data;
t_psi_des = out.logsout.get('psi_des').Values.Time;

u_des = out.logsout.get('u_des').Values.Data;
t_u_des = out.logsout.get('u_des').Values.Time;

tau_x = out.logsout.get('tau_x').Values.Data;
t_tau_x = out.logsout.get('tau_x').Values.Time;

tau_n = out.logsout.get('tau_n').Values.Data;
t_tau_n = out.logsout.get('tau_n').Values.Time;

% Create figure
figure;

% Subplot for u
subplot(2, 1, 1);
plot(t_u, u, 'LineWidth', 2);
hold on;
plot(t_u_des, u_des, '--', 'LineWidth', 2);
hold off;
title('Speed control');
xlabel('Time (s)');
ylabel('Speed (m/s)');
legend({'Measurement', 'Desired'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Subplot for psi
subplot(2, 1, 2);
plot(t_psi, psi*180/pi, 'LineWidth', 2);
hold on;
plot(t_psi_des, psi_des*180/pi, '--', 'LineWidth', 2);
hold off;
title('Heading control');
xlabel('Time (s)');
ylabel('Heading (deg)');
legend({'Measurement', 'Desired'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Create figure
figure;

% Subplot for tau_x and tau_n
subplot(2, 1, 1);
plot(t_tau_x, tau_x, 'LineWidth', 2);
hold on;
plot(t_tau_n, tau_n, 'LineWidth', 2);
hold off;
title('Input control vector');
xlabel('Time (s)');
legend({'\tau_x - Surge force (N)', '\tau_n - Yaw moment (Nm)'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Subplot for F1/F2
subplot(2, 1, 2);
plot(t_F1, F1, 'LineWidth', 2);
hold on;
plot(t_F2, F2, 'LineWidth', 2);
hold off;
title('Propeller forces');
xlabel('Time (s)');
ylabel('Force (N)');
legend({'F_1', 'F_2'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Create figure
figure;
% Plot for x, y
plot(eta(:,2), eta(:,1), 'LineWidth', 2);
hold off;
title('Position on x, y plane');
xlabel('y (m)');
ylabel('x (m)');
set(gca, 'FontSize', 12);
grid on;
% Set axes to be equal to ensure the plot is square
axis equal;
