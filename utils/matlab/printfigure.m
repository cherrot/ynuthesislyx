function printfigure(h, scale, ratio)
%PRINTFIGURE  Resize and print figure.
% scale: actual figure width = textwidth * scale
% ratio: height = width * ratio. 0: keep original width/height ratio
preprint(h, scale, ratio);
print(h, '-PMetafile to EPS Converter');
end

