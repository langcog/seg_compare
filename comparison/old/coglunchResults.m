fcorrs = [corrs(:,6) corrs];
fcorrs(:,7) = [];
short_model_names = {'GGJ2006','TPs','MIs',...
  'Swingley2005','SRN','PARSER'};
short_expts = {'sent. length','exposure','vocab. size'};

figure(4); 
clf;
set(gcf,'position',[0 0 500 700])
%imagesc(fcorrs(1:2,:)');
axis([0 3 0 7])
axis ij
set(gca,'FontSize',26)
set(gca,'XTick',[1 2 3],'XTickLabel',short_expts);
set(gca,'YTick',[1 2 3 4 5 6],'YTickLabel',short_model_names);

colormap(bone)

hold on;
for i = 1:2
  for j = 1:6
   %if corrs(i,j) > 0
      h = text(i-.2,j,num2str(fcorrs(i,j),'%2.2f'),'FontSize',30,'Color',[0 0 0]);
   %else
   %   h = text(i-.2,j,num2str(fcorrs(i,j),'%2.2f'),'FontSize',30,'Color',[1 1 1]);
   %end
    
    % bold the best one
%     if corrs(i,j) == max(corrs(i,:))
%       set(h,'FontWeight','Bold');
%       q = rectangle('Curvature',[1 1],'Position',[j-.25 i-.25 .5 .5],'EdgeColor',[1 1 1],'LineWidth',2);
%     end
  end
end

colormap('jet')