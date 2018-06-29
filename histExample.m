close all
clear all

% Make some fake gaussian data
vals = randn(1,1000)*100;

% Plot a histogram with no output arguments 
figure;
histogram(vals);

% Compare to older hist command:
figure;
hist(vals);

%%
% Histogram with predefined number of bins
figure;
histogram(vals,100);

figure;
histogram(vals,200);

%%
% histogram with custom EDGES, notice the last and first bins
figure;
histogram(vals,[-200:10:200]);

% Compare to the original functionality of hist which gives CENTERS
figure;
hist(vals,[-200:10:200]);
%%
% Notice no figure, gives bin locations
[N,x] = hist(vals,[-200:10:200]);

% If you wanted to be able to work with the figure you would need a bar
% plot before, but this isn't needed anymore!
figure;
H = bar(x,N);

%%

% Notice figure;
myHist = histogram(vals,[-200:10:200]);
myHist
myHist.Values
myHist.morebins();
myHist.fewerbins();

myHist.Normalization = 'pdf'
myHist.Normalization = 'count'

size(myHist.BinEdges)
size(myHist.Values)
BinCenters=(myHist.BinEdges(2:end)+myHist.BinEdges(1:end-1))/2;

hold on;
plot( BinCenters, myHist.Values, 'r-x', 'lineWidth', 2 );

myHist.FaceColor = 'k'
myHist.EdgeColor = 'r'
