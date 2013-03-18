% Metapost TeX macro
% Title: E:\My Dropbox\KNoT\System architecture.dia
% Creator: Dia v0.97.2
% CreationDate: Sun Mar 17 18:47:42 2013
% For: Fergul


beginfig(1);
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex
% Define macro for horizontal centering.
vardef hcentered primary P =
  P shifted -(xpart center P, 0)
enddef;
% Define macro for right justification.
vardef rjust primary P =
  P shifted -(xpart (lrcorner P - llcorner P), 0)
enddef;
  % picture(1.000000,-18.050000)(18.740000,2.050000)
  x = 1.000000cm; y = -1.000000cm;

  t = 1.000000;

% set_line_color 0.000000, 0.000000, 0.000000
% set_line_color 1.000000, 1.000000, 1.000000
% set_linewidth 0.100000
  path p;
  p = (2.000000x,14.000000y)--(2.000000x,18.000000y)--(13.000000x,18.000000y)--(13.000000x,14.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.000000x,14.000000y)--(2.000000x,18.000000y)--(13.000000x,18.000000y)--(13.000000x,14.000000y)--cycle
    withpen pencircle scaled 0.1000x;
  path p;
  p = (2.000000x,13.000000y)--(2.000000x,14.000000y)--(6.050000x,14.000000y)--(6.050000x,13.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (2.000000x,13.000000y)--(2.000000x,14.000000y)--(6.050000x,14.000000y)--(6.050000x,13.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} Contiki OS} etex scaled 1.84t shifted (2.100000x,13.750000y);
  path p;
  p = (5.000000x,7.000000y)--(5.000000x,9.700000y)--(12.150000x,9.700000y)--(12.150000x,7.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,7.000000y)--(5.000000x,9.700000y)--(12.150000x,9.700000y)--(12.150000x,7.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Protocol} etex scaled 1.64t shifted (8.575000x,8.545000y);
  path p;
  p = (5.000000x,15.000000y)--(5.000000x,17.000000y)--(12.100000x,17.000000y)--(12.100000x,15.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,15.000000y)--(5.000000x,17.000000y)--(12.100000x,17.000000y)--(12.100000x,15.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Network stack} etex scaled 1.64t shifted (8.550000x,16.195000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (6.775000x,15.000000y)--(6.786352x,10.186802y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (6.787236x,9.811803y)--(7.036056x,10.312391y)--(6.786352x,10.186802y)--(6.536058x,10.311212y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (6.787236x,9.811803y)--(7.036056x,10.312391y)--(6.786352x,10.186802y)--(6.536058x,10.311212y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Network event} etex scaled 1.64t shifted (1.000000x,11.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} (Packet received)} etex scaled 1.64t shifted (1.000000x,11.800000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (10.362500x,9.700000y)--(10.328444x,14.513209y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (10.325791x,14.888199y)--(10.079335x,14.386443y)--(10.328444x,14.513209y)--(10.579322x,14.389981y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (10.325791x,14.888199y)--(10.079335x,14.386443y)--(10.328444x,14.513209y)--(10.579322x,14.389981y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Network command} etex scaled 1.64t shifted (11.000000x,11.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} (Send packet)} etex scaled 1.64t shifted (11.000000x,11.800000y);
  path p;
  p = (5.000000x,-2.000000y)--(5.000000x,0.700000y)--(12.150000x,0.700000y)--(12.150000x,-2.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,-2.000000y)--(5.000000x,0.700000y)--(12.150000x,0.700000y)--(12.150000x,-2.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Application} etex scaled 1.64t shifted (8.575000x,-0.455000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} API event} etex scaled 1.64t shifted (1.000000x,2.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} (Sensor data, etc)} etex scaled 1.64t shifted (1.000000x,2.800000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (6.787500x,4.000000y)--(6.787500x,1.186803y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (6.787500x,0.811803y)--(7.037500x,1.311803y)--(6.787500x,1.186803y)--(6.537500x,1.311803y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (6.787500x,0.811803y)--(7.037500x,1.311803y)--(6.787500x,1.186803y)--(6.537500x,1.311803y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (10.362500x,0.700000y)--(10.362500x,3.513197y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (10.362500x,3.888197y)--(10.112500x,3.388197y)--(10.362500x,3.513197y)--(10.612500x,3.388197y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (10.362500x,3.888197y)--(10.112500x,3.388197y)--(10.362500x,3.513197y)--(10.612500x,3.388197y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} API command} etex scaled 1.64t shifted (11.000000x,2.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} (Discover, Connect, etc)} etex scaled 1.64t shifted (11.000000x,2.800000y);
  path p;
  p = (5.000000x,4.000000y)--(5.000000x,5.900000y)--(12.150000x,5.900000y)--(12.150000x,4.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.000000x,4.000000y)--(5.000000x,5.900000y)--(12.150000x,5.900000y)--(12.150000x,4.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Protocol API} etex scaled 1.64t shifted (8.575000x,5.145000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (6.787500x,7.000000y)--(6.787500x,6.386803y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (6.787500x,6.011803y)--(7.037500x,6.511803y)--(6.787500x,6.386803y)--(6.537500x,6.511803y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (6.787500x,6.011803y)--(7.037500x,6.511803y)--(6.787500x,6.386803y)--(6.537500x,6.511803y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (10.362500x,5.900000y)--(10.362500x,6.513197y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (10.362500x,6.888197y)--(10.112500x,6.388197y)--(10.362500x,6.513197y)--(10.612500x,6.388197y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (10.362500x,6.888197y)--(10.112500x,6.388197y)--(10.362500x,6.513197y)--(10.612500x,6.388197y)--cycle
    withpen pencircle scaled 0.1000x;
endfig;
end;
