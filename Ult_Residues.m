% Feedstock names
samples = {'Cowpea Shell','Coconut husk','Corncob'};

% Ultimate analysis data (%)
C = [45.7 43.0 47.5];
H = [5.3 5.5 6.2];
N = [1.8 1.2 0.8];
O = [46.9 49.9 45.0];
S = [0.3 0.4 0.5];

% data
data = [C; H; N; O; S]';

% Plot grouped bar chart
figure('Color','w');
b = bar(data,'grouped','LineWidth',1);
hold on;

% Colors
b(1).FaceColor = [0.70 0.80 0.95];   % Carbon
b(2).FaceColor = [0.85 0.65 0.65];   % Hydrogen
b(3).FaceColor = [0.75 0.85 0.75];   % Nitrogen
b(4).FaceColor = [0.95 0.90 0.60];   % Oxygen
b(5).FaceColor = [0.80 0.80 0.80];   % Sulfur

% Axis formatting
set(gca,'XTickLabel',samples,'FontSize',11,'FontWeight','bold');
ylabel('Elemental composition (%)','FontSize',12,'FontWeight','bold');
xlabel('Residue Samples','FontSize',12,'FontWeight','bold');
ylim([0 55]);
grid off;
box off;

% Legend
legend({'Carbon','Hydrogen','Nitrogen','Oxygen','Sulphur'}, ...
       'Location','north','FontSize',10,'Orientation','horizontal');

% value labels
for i = 1:length(b)
    xtips = b(i).XEndPoints;
    ytips = b(i).YEndPoints;
    labels = string(b(i).YData);
    text(xtips, ytips + 0.8, labels, ...
        'HorizontalAlignment','center','FontSize',9);
end


