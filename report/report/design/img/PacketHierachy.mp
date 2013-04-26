% Metapost TeX macro
% Title: E:\My Dropbox\KNoT\PacketHierachy.dia
% Creator: Dia v0.97.2
% CreationDate: Fri Mar 22 12:43:29 2013
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
  % picture(5.600000,-22.005000)(26.987500,-6.850000)
  x = 1.000000cm; y = -1.000000cm;

  t = 1.000000;

% set_line_color 0.000000, 0.000000, 0.000000
% set_line_color 1.000000, 1.000000, 1.000000
% set_linewidth 0.100000
  path p;
  p = (5.650000x,6.900000y)--(5.650000x,8.300000y)--(11.925000x,8.300000y)--(11.925000x,6.900000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.650000x,6.900000y)--(5.650000x,8.300000y)--(11.925000x,8.300000y)--(11.925000x,6.900000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{b}{n} IoT Header} etex scaled 2.05t shifted (8.787500x,7.850000y);
  path p;
  p = (5.650000x,8.300000y)--(5.650000x,14.100000y)--(11.925000x,14.100000y)--(11.925000x,8.300000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.650000x,8.300000y)--(5.650000x,14.100000y)--(11.925000x,14.100000y)--(11.925000x,8.300000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +SeqNo} etex scaled 1.84t shifted (5.800000x,9.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Src Channel} etex scaled 1.84t shifted (5.800000x,9.800000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Dst Channel} etex scaled 1.84t shifted (5.800000x,10.600000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Command} etex scaled 1.84t shifted (5.800000x,11.400000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Checksum} etex scaled 1.84t shifted (5.800000x,12.200000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Payload Length} etex scaled 1.84t shifted (5.800000x,13.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Payload} etex scaled 1.84t shifted (5.800000x,13.800000y);
% set_linewidth 0.100000
  path p;
  p = (13.800000x,10.850000y)--(13.800000x,12.250000y)--(17.455000x,12.250000y)--(17.455000x,10.850000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (13.800000x,10.850000y)--(13.800000x,12.250000y)--(17.455000x,12.250000y)--(17.455000x,10.850000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Payload} etex scaled 2.05t shifted (15.627500x,11.800000y);
  path p;
  p = (13.800000x,12.250000y)--(13.800000x,12.650000y)--(17.455000x,12.650000y)--(17.455000x,12.250000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (13.800000x,12.250000y)--(13.800000x,12.650000y)--(17.455000x,12.650000y)--(17.455000x,12.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (16.250000x,15.250000y)--(16.250000x,16.650000y)--(20.427500x,16.650000y)--(20.427500x,15.250000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (16.250000x,15.250000y)--(16.250000x,16.650000y)--(20.427500x,16.650000y)--(20.427500x,15.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{b}{n} Connect} etex scaled 2.05t shifted (18.338750x,16.200000y);
  path p;
  p = (16.250000x,16.650000y)--(16.250000x,18.450000y)--(20.427500x,18.450000y)--(20.427500x,16.650000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (16.250000x,16.650000y)--(16.250000x,18.450000y)--(20.427500x,18.450000y)--(20.427500x,16.650000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Rate} etex scaled 1.84t shifted (16.400000x,17.350000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Name} etex scaled 1.84t shifted (16.400000x,18.150000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (11.925000x,13.600000y)--(12.862500x,13.600000y)--(12.862500x,11.550000y)--(13.800000x,11.550000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (13.062500x,12.575000y)--(13.062500x,12.175000y)--(13.462500x,12.375000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (9.195000x,15.405000y)--(9.195000x,16.805000y)--(12.405000x,16.805000y)--(12.405000x,15.405000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (9.195000x,15.405000y)--(9.195000x,16.805000y)--(12.405000x,16.805000y)--(12.405000x,15.405000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{b}{n} Query} etex scaled 2.05t shifted (10.800000x,16.355000y);
  path p;
  p = (9.195000x,16.805000y)--(9.195000x,17.805000y)--(12.405000x,17.805000y)--(12.405000x,16.805000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (9.195000x,16.805000y)--(9.195000x,17.805000y)--(12.405000x,17.805000y)--(12.405000x,16.805000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Name} etex scaled 1.84t shifted (9.345000x,17.505000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (15.627500x,13.561803y)--(15.627500x,14.324799y)--(18.338750x,14.324799y)--(18.338750x,15.199597y)
    withpen pencircle scaled 0.1000x;
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (15.627500x,13.561803y)--(15.627500x,14.427500y)--(10.800000x,14.427500y)--(10.800000x,15.405000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (9.995000x,18.255000y)--(9.995000x,19.655000y)--(15.687500x,19.655000y)--(15.687500x,18.255000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (9.995000x,18.255000y)--(9.995000x,19.655000y)--(15.687500x,19.655000y)--(15.687500x,18.255000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{b}{n} Query Resp} etex scaled 2.05t shifted (12.841250x,19.205000y);
  path p;
  p = (9.995000x,19.655000y)--(9.995000x,21.455000y)--(15.687500x,21.455000y)--(15.687500x,19.655000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (9.995000x,19.655000y)--(9.995000x,21.455000y)--(15.687500x,21.455000y)--(15.687500x,19.655000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Name} etex scaled 1.84t shifted (10.145000x,20.355000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Rate} etex scaled 1.84t shifted (10.145000x,21.155000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (15.627500x,13.561803y)--(15.627500x,15.852500y)--(12.841250x,15.852500y)--(12.841250x,18.255000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (17.795000x,18.755000y)--(17.795000x,20.155000y)--(24.077500x,20.155000y)--(24.077500x,18.755000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (17.795000x,18.755000y)--(17.795000x,20.155000y)--(24.077500x,20.155000y)--(24.077500x,18.755000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{b}{n} Connect ACK} etex scaled 2.05t shifted (20.936250x,19.705000y);
  path p;
  p = (17.795000x,20.155000y)--(17.795000x,21.955000y)--(24.077500x,21.955000y)--(24.077500x,20.155000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (17.795000x,20.155000y)--(17.795000x,21.955000y)--(24.077500x,21.955000y)--(24.077500x,20.155000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Accept} etex scaled 1.84t shifted (17.945000x,20.855000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Name} etex scaled 1.84t shifted (17.945000x,21.655000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (15.627500x,13.561803y)--(15.627500x,14.300000y)--(20.936250x,14.300000y)--(20.936250x,18.755000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (22.095000x,14.955000y)--(22.095000x,16.355000y)--(26.937500x,16.355000y)--(26.937500x,14.955000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.095000x,14.955000y)--(22.095000x,16.355000y)--(26.937500x,16.355000y)--(26.937500x,14.955000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{b}{n} Response} etex scaled 2.05t shifted (24.516250x,15.905000y);
  path p;
  p = (22.095000x,16.355000y)--(22.095000x,18.155000y)--(26.937500x,18.155000y)--(26.937500x,16.355000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (22.095000x,16.355000y)--(22.095000x,18.155000y)--(26.937500x,18.155000y)--(26.937500x,16.355000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Data} etex scaled 1.84t shifted (22.245000x,17.055000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{cmtt}{m}{n} +Name} etex scaled 1.84t shifted (22.245000x,17.855000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (15.627500x,13.561803y)--(15.627500x,14.300000y)--(24.516250x,14.300000y)--(24.516250x,14.955000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (16.027500x,13.561803y)--(15.627500x,12.761803y)--(15.227500x,13.561803y)--cycle
    withpen pencircle scaled 0.1000x;
endfig;
end;
