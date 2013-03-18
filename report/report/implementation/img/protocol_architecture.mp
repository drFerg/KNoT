% Metapost TeX macro
% Title: E:\My Dropbox\KNoT\protocol_architecture.dia
% Creator: Dia v0.97.2
% CreationDate: Sun Mar 17 21:31:23 2013
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
  % picture(2.950000,-21.050000)(36.505000,-5.950000)
  x = 1.000000cm; y = -1.000000cm;

  t = 1.000000;

% set_line_color 0.000000, 0.000000, 0.000000
% set_line_color 1.000000, 1.000000, 1.000000
% set_linewidth 0.100000
  path p;
  p = (4.000000x,6.000000y)--(4.000000x,21.000000y)--(21.000000x,21.000000y)--(21.000000x,6.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (4.000000x,6.000000y)--(4.000000x,21.000000y)--(21.000000x,21.000000y)--(21.000000x,6.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_linewidth 0.100000
% set_line_color 1.000000, 1.000000, 1.000000
% fill_polygon
  path p;
  p = (3.000000x,12.000000y)--(5.000000x,12.000000y)--(6.000000x,13.500000y)--(5.000000x,15.000000y)--(3.000000x,15.000000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (3.000000x,12.000000y)--(5.000000x,12.000000y)--(6.000000x,13.500000y)--(5.000000x,15.000000y)--(3.000000x,15.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (3.000000x,12.000000y)--(5.000000x,12.000000y)--(6.000000x,13.500000y)--(5.000000x,15.000000y)--(3.000000x,15.000000y)--cycle
    withpen pencircle scaled 0.1000x;
  path p;
  p = (15.000000x,12.000000y)--(15.000000x,15.000000y)--(19.722500x,15.000000y)--(19.722500x,12.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (15.000000x,12.000000y)--(15.000000x,15.000000y)--(19.722500x,15.000000y)--(19.722500x,12.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Channel} etex scaled 1.64t shifted (17.361250x,13.295000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} table} etex scaled 1.64t shifted (17.361250x,14.095000y);
  path p;
  p = (12.166247x,18.541562y)..(9.083124x,20.083124y)..(6.000000x,18.541562y)..(9.083124x,17.000000y)..cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (12.166247x,18.541562y)..(9.083124x,20.083124y)..(6.000000x,18.541562y)..(9.083124x,17.000000y)..cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Cleanup } etex scaled 1.64t shifted (9.083124x,18.336562y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} timer} etex scaled 1.64t shifted (9.083124x,19.136562y);
  path p;
  p = (20.166247x,18.541562y)..(17.083124x,20.083124y)..(14.000000x,18.541562y)..(17.083124x,17.000000y)..cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (20.166247x,18.541562y)..(17.083124x,20.083124y)..(14.000000x,18.541562y)..(17.083124x,17.000000y)..cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Channel } etex scaled 1.64t shifted (17.083124x,18.336562y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} timers} etex scaled 1.64t shifted (17.083124x,19.136562y);
% set_linewidth 0.100000
%metapost_arc
% center->x = 12.553906% center->y = 8.677883% width = 2.804625% height = 2.804625% angle1 = 229.865622% angle2 = 113.718133% set_line_color 0.000000, 0.000000, 0.000000
  draw (11.650000x,9.750000y)..(13.941854x,8.878090y)..(11.989843x,7.394016y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (11.681951x,7.573947y)--(11.878387x,7.050580y)--(11.956823x,7.318858y)--(12.218506x,7.417076y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (11.681951x,7.573947y)--(11.878387x,7.050580y)--(11.956823x,7.318858y)--(12.218506x,7.417076y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (6.000000x,13.500000y)--(8.875000x,13.500000y)--(8.875000x,9.850000y)--(11.263197x,9.850000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (11.638197x,9.850000y)--(11.138197x,10.100000y)--(11.263197x,9.850000y)--(11.138197x,9.600000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (11.638197x,9.850000y)--(11.138197x,10.100000y)--(11.263197x,9.850000y)--(11.138197x,9.600000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} UDP} etex scaled 1.64t shifted (3.400000x,13.300000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Stack} etex scaled 1.64t shifted (3.400000x,14.100000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Protocol Protothread} etex scaled 1.64t shifted (7.000000x,9.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Receive UDP events} etex scaled 1.20629t shifted (9.400000x,11.400000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (14.000000x,18.541562y)--(13.950000x,18.541562y)--(13.950000x,14.250000y)--(5.986803x,14.250000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (5.611803x,14.250000y)--(6.111803x,14.000000y)--(5.986803x,14.250000y)--(6.111803x,14.500000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (5.611803x,14.250000y)--(6.111803x,14.000000y)--(5.986803x,14.250000y)--(6.111803x,14.500000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (26.000000x,6.000000y)--(26.000000x,21.000000y)--(36.455000x,21.000000y)--(36.455000x,6.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (26.000000x,6.000000y)--(26.000000x,21.000000y)--(36.455000x,21.000000y)--(36.455000x,6.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
%metapost_arc
% center->x = 34.450082% center->y = 8.640307% width = 2.804625% height = 2.804625% angle1 = 229.865622% angle2 = 113.718133% set_line_color 0.000000, 0.000000, 0.000000
  draw (33.546176x,9.712424y)..(35.838030x,8.840514y)..(33.886019x,7.356440y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (33.578127x,7.536371y)--(33.774563x,7.013004y)--(33.852999x,7.281281y)--(34.114682x,7.379500y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (33.578127x,7.536371y)--(33.774563x,7.013004y)--(33.852999x,7.281281y)--(34.114682x,7.379500y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Application Protothread} etex scaled 1.64t shifted (27.472500x,8.905000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (20.166247x,18.541562y)--(24.750000x,18.541562y)--(24.750000x,13.500000y)--(25.463100x,13.500000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (25.838100x,13.500000y)--(25.338100x,13.750000y)--(25.463100x,13.500000y)--(25.338100x,13.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (25.838100x,13.500000y)--(25.338100x,13.750000y)--(25.463100x,13.500000y)--(25.338100x,13.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (13.900000x,8.400000y)--(13.900000x,10.950000y)--(33.600000x,10.950000y)--(33.600000x,10.186803y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (33.600000x,9.811803y)--(33.850000x,10.311803y)--(33.600000x,10.186803y)--(33.350000x,10.311803y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (33.600000x,9.811803y)--(33.850000x,10.311803y)--(33.600000x,10.186803y)--(33.350000x,10.311803y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (35.550000x,9.450000y)--(35.600000x,9.450000y)--(35.600000x,15.150000y)--(21.636803x,15.150000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (21.261803x,15.150000y)--(21.761803x,14.900000y)--(21.636803x,15.150000y)--(21.761803x,15.400000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (21.261803x,15.150000y)--(21.761803x,14.900000y)--(21.636803x,15.150000y)--(21.761803x,15.400000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (17.361250x,15.000000y)--(17.361250x,15.974806y)--(17.083124x,15.974806y)--(17.083124x,16.949611y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (17.322187x,15.974806y)--(17.322187x,15.574806y)--(17.722187x,15.774806y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Post Protocol API events} etex scaled 1.20629t shifted (26.995000x,10.442500y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Call Protocol API commands} etex scaled 1.20629t shifted (27.390000x,14.597500y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Call sensor} etex scaled 1.20629t shifted (21.295000x,17.142500y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} and actuator } etex scaled 1.20629t shifted (21.295000x,17.730933y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} functions} etex scaled 1.20629t shifted (21.295000x,18.319367y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (6.350000x,3.450000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Send Protocol packets} etex scaled 1.20629t shifted (7.695000x,15.142500y);
endfig;
end;
