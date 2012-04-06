function batch_eps2pdf
%BATCH_EPS2PDF Converter all eps files to pdf format by calling 'epstopdf'
files = dir('*.eps');
for ii = 1:length(files)
    cmd = ['epstopdf ' files(ii).name];
    disp(cmd);
    system(cmd);
end
end

