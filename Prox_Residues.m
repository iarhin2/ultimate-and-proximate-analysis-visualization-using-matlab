% Feedstock names
samples = {'Cowpea Shell','Coconut husk','Corncob'};

%% Proximate analysis data (%)
Moisture = [9.5 12.0 8.0];
Volatile = [69.9 65.0 75.0];
Ash      = [5.6 9.5 3.4];
FixedC   = [15.0 13.5 13.6];

data = [Ash; Moisture; FixedC; Volatile]';

%% Plot grouped bar chart
figure('Color','w');
b = bar(data,'grouped','LineWidth',1);
hold on;

%% Colors
b(1).FaceColor = [0.95 0.75 0.55];
b(2).FaceColor = [0.65 0.85 0.65];
b(3).FaceColor = [0.75 0.70 0.85];
b(4).FaceColor = [0.95 0.95 0.60];

%% Formatting
set(gca,'XTickLabel',samples,'FontSize',11,'FontWeight','bold');
ylabel('Content (%)','FontSize',12,'FontWeight','bold');
xlabel('Residue Samples','FontSize',12,'FontWeight','bold');
ylim([0 85]);
grid off;
box off;

legend({'Ash','Moisture','Fixed Carbon','Volatile Matter'}, ...
       'Location','north','FontSize',10);

%% Value labels
for i = 1:length(b)
    xtips = b(i).XEndPoints;
    ytips = b(i).YEndPoints;
    labels = string(b(i).YData);
    text(xtips, ytips + 1, labels, ...
        'HorizontalAlignment','center','FontSize',9);
end

