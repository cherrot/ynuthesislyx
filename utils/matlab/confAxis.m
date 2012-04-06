function confAxis(h)
% Set axis properties
load PLOT_OPTS;
set(h, 'FontSize', PLOT_OPTS.FS, 'FontName', PLOT_OPTS.FT);
set(h,'Layer','top');
end
