function plot_stern_gerlach(varargin)
%PLOT_STERN_GERLACH Schematic of the Stern-Gerlach Experiment. This function takes
% the measurement outcomes of any analyser experiment.
%
% USAGE:
%   1 analyser
%       plot_stern_gerlach(outcomes)
%   2 analysers
%       plot_stern_gerlach(outcomes1,outcomes2)
%   3 analysers
%       plot_stern_gerlach(outcomes1,outcomes2,outcomes3)
%
% and so on. Basically, you can use this function to compare the
% results of as many Stern-Gerlach analyzers as you like.
   
    nvarargs = length(varargin);
    
    if nvarargs == 0,
      return
    end
  
    figure(1);
    close;
    figure(1);
    hold on;
    %axis([-2, 5, -2, 4]);
    ly=ylabel('Analyser Output');
    lx=xlabel('Sequential Analyzer Count');
    set(gca,'ytick',[])
    set(gca,'xtick',-1:10)
    set([ly,lx],'FontSize',14)
   
    colormap('gray');
    colormap(1-colormap);
    colours = colormap;
    
    for n = 1:(nvarargs),
      outcomes = varargin{n};
      
      if n == 1,
        ntotal = length(outcomes);
     end
      nplus = sum(outcomes>=0);
      nminus = sum(outcomes<0);
      
      plus1x =0.25*[-1, -1, 1, 1] + n;
      plus1y =0.25*[-1,1,1,-1] + n;
      minus1x = plus1x;
      minus1y = plus1y - 2;
     
      % Map number of atoms to colourmap scale
      plus_colour = colours(floor(length(colormap)*nplus/(ntotal + 1)) + 1, :);
      minus_colour = colours(floor(length(colormap)*nminus/(ntotal + 1)) + 1, :);
      
      fill(plus1x, plus1y, plus_colour);
      fill(minus1x, minus1y, minus_colour);
      tx1=text(n-0.15,n,'|+>','Color',[1 0 0]);
      tx2=text(n-0.15,n-2,'|->','Color',[1 0 0]);
      set([tx1,tx2],'FontSize',15-(nvarargs),'FontWeight','bold')
      if n>1 
             plot([-0.25, 0.25]+(n-0.5),[n-1, n],'k-')
             plot([-0.25, 0.25]+(n-0.5), [n-1, n-2],'k-')
      else
        plot([0.25, 0.75],[0, 1],'k-')
        plot([0.25, 0.75], [0, -1],'k-')
      end
      
    end
    
    caxis([0, ntotal]);
    c=colorbar();
    cl=ylabel(c,'Number of Atoms');
    set(cl,'FontSize',14)
    set(gca,'FontSize',12)
end

