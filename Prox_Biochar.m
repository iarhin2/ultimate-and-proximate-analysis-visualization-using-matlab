% Feedstock names
samples = {'Cowpea Shell Char','Coconut husk Char','Corncob Char'};

% Proximate analysis data (%)
Moisture = [4.0 5.2 3.0];
Volatile = [22.5 19.8 17.6];
Ash      = [11.5 19.3 8.4];
FixedC   = [62.0 55.7 71.0];

% datae
data = [Ash; Moisture; FixedC; Volatile]';

% Plot grouped bar chart
figure('Color','w');
b = bar(data,'grouped','LineWidth',1);
hold on;

% Colors
b(1).FaceColor = [0.95 0.75 0.55];   % Ash
b(2).FaceColor = [0.65 0.85 0.65];   % Moisture
b(3).FaceColor = [0.75 0.70 0.85];   % Fixed Carbon
b(4).FaceColor = [0.95 0.95 0.60];   % Volatile Matter

%% Axis formatting
set(gca,'XTickLabel',samples,'FontSize',11,'FontWeight','bold');
ylabel('Content (%)','FontSize',12,'FontWeight','bold');
xlabel('Biochar Samples','FontSize',12,'FontWeight','bold');
ylim([0 80]);
grid off;
box off;

% Legend
legend({'Ash','Moisture','Fixed Carbon','Volatile Matter'}, ...
       'Location','north','FontSize',10);

% value labels
for i = 1:length(b)
    xtips = b(i).XEndPoints;
    ytips = b(i).YEndPoints;
    labels = string(b(i).YData);
    text(xtips, ytips + 1, labels, ...
        'HorizontalAlignment','center','FontSize',9);
end

