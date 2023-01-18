function [N,M,Im] = Load8bitStream(Filename)

fid = fopen(Filename);
N = fread(fid,1,'uint16');
M = fread(fid,1,'uint16');
Im = uint8(fread(fid,"uint8"));
fclose(fid);


end