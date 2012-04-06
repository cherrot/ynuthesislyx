function preprint(h, scale, ratio)
%PREPRINT Resize figure and paper for printing.
% h: handle of the figure
% scale: actual figure width = textwidth * scale
% ratio: height = width * ratio. 0: keep original width/height ratio

% define textwidth
A4width = 21; % width of A4 paper, in cm
textwidth = A4width - 6; % width of text area, in cm

% set figure position
set(h, 'Units', 'centimeters');
position = get(h, 'Position');
oldratio = position(4) / position(3);
position(3) = textwidth * scale;
if ratio == 0
    position(4) = position(3) * oldratio;
else
    position(4) = position(3) * ratio;
end
set(h, 'Position', position);

% set paper size
set(h, 'PaperUnits', 'centimeters');
set(h, 'PaperSize', position(3:4));
set(h, 'PaperPosition', [0, 0, position(3:4)]);

end

