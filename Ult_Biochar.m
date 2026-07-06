% Feedstock names
samples = {'Cowpea shell Char','Coconut husk Char','Corncob Char'};

% Ultimate analysis data (%)
C = [72.0 68.2 78.0];
H = [2.8 2.3 2.6];
N = [2.2 1.5 1.1];
O = [22.6 27.8 18.0];
S = [0.4 0.2 0.3];

data = [C; H; N; O; S]';

%% Plot grouped bar chart
figure('Color','w');
b = bar(data,'grouped','LineWidth',1);
hold on;

%% Colors
b(1).FaceColor = [0.70 0.80 0.95];   % Carbon
b(2).FaceColor = [0.85 0.65 0.65];   % Hydrogen
b(3).FaceColor = [0.75 0.85 0.75];   % Nitrogen
b(4).FaceColor = [0.95 0.90 0.60];   % Oxygen
b(5).FaceColor = [0.80 0.80 0.80];   % Sulfur

%% Formatting
set(gca,'XTickLabel',samples,'FontSize',11,'FontWeight','bold');
ylabel('Elemental composition (%)','FontSize',12,'FontWeight','bold');
xlabel('Biochar Samples','FontSize',12,'FontWeight','bold');
ylim([0 85]);
grid off;
box off;

legend({'Carbon','Hydrogen','Nitrogen','Oxygen','Sulphur'}, ...
       'Location','north','FontSize',10,'Orientation','horizontal');

%% Value labels
for i = 1:length(b)
    xtips = b(i).XEndPoints;
    ytips = b(i).YEndPoints;
    labels = string(b(i).YData);
    text(xtips, ytips + 0.8, labels, ...
        'HorizontalAlignment','center','FontSize',9);
end


