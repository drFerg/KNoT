% Metapost TeX macro
% Title: E:\My Dropbox\KNoT\Sensor state machine.dia
% Creator: Dia v0.97.2
% CreationDate: Thu Mar 14 20:40:49 2013
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
  % picture(24.614434,-27.816091)(45.036766,-17.376856)
  x = 0.624811cm; y = -0.624811cm;

  t = 0.624811;

% set_line_color 0.000000, 0.000000, 0.000000
% set_line_color 1.000000, 1.000000, 1.000000
% set_linewidth 0.100000
  path p;
  p = (57.253110x,38.766800y)--(57.253110x,40.566800y)--(60.703110x,40.566800y)--(60.703110x,38.766800y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 57.253110% center->y = 39.266800% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (57.253110x,38.766800y)..(56.899557x,38.913247y)..(56.753110x,39.266800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 60.703110% center->y = 39.266800% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (61.203110x,39.266800y)..(61.056663x,38.913247y)..(60.703110x,38.766800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (56.753110x,39.266800y)--(56.753110x,40.066800y)--(61.203110x,40.066800y)--(61.203110x,39.266800y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 57.253110% center->y = 40.066800% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (56.753110x,40.066800y)..(56.899557x,40.420353y)..(57.253110x,40.566800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 60.703110% center->y = 40.066800% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (60.703110x,40.566800y)..(61.056663x,40.420353y)..(61.203110x,40.066800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (57.253110x,38.766800y)--(60.703110x,38.766800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (57.253110x,40.566800y)--(60.703110x,40.566800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 57.253110% center->y = 39.266800% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (57.253110x,38.766800y)..(56.899557x,38.913247y)..(56.753110x,39.266800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 60.703110% center->y = 39.266800% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (61.203110x,39.266800y)..(61.056663x,38.913247y)..(60.703110x,38.766800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (56.753110x,39.266800y)--(56.753110x,40.066800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (61.203110x,39.266800y)--(61.203110x,40.066800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 57.253110% center->y = 40.066800% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (56.753110x,40.066800y)..(56.899557x,40.420353y)..(57.253110x,40.566800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 60.703110% center->y = 40.066800% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (60.703110x,40.566800y)..(61.056663x,40.420353y)..(61.203110x,40.066800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Connected} etex scaled 1.64t shifted (58.978110x,39.861800y);
% set_linewidth 0.100000
  path p;
  p = (41.421210x,38.307700y)--(41.421210x,40.907700y)--(46.698710x,40.907700y)--(46.698710x,38.307700y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 41.421210% center->y = 38.807700% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (41.421210x,38.307700y)..(41.067657x,38.454147y)..(40.921210x,38.807700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 46.698710% center->y = 38.807700% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (47.198710x,38.807700y)..(47.052263x,38.454147y)..(46.698710x,38.307700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (40.921210x,38.807700y)--(40.921210x,40.407700y)--(47.198710x,40.407700y)--(47.198710x,38.807700y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 41.421210% center->y = 40.407700% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (40.921210x,40.407700y)..(41.067657x,40.761253y)..(41.421210x,40.907700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 46.698710% center->y = 40.407700% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (46.698710x,40.907700y)..(47.052263x,40.761253y)..(47.198710x,40.407700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (41.421210x,38.307700y)--(46.698710x,38.307700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (41.421210x,40.907700y)--(46.698710x,40.907700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 41.421210% center->y = 38.807700% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (41.421210x,38.307700y)..(41.067657x,38.454147y)..(40.921210x,38.807700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 46.698710% center->y = 38.807700% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (47.198710x,38.807700y)..(47.052263x,38.454147y)..(46.698710x,38.307700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (40.921210x,38.807700y)--(40.921210x,40.407700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (47.198710x,38.807700y)--(47.198710x,40.407700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 41.421210% center->y = 40.407700% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (40.921210x,40.407700y)..(41.067657x,40.761253y)..(41.421210x,40.907700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 46.698710% center->y = 40.407700% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (46.698710x,40.907700y)..(47.052263x,40.761253y)..(47.198710x,40.407700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Channel request} etex scaled 1.64t shifted (44.059960x,39.402700y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} ACK sent} etex scaled 1.64t shifted (44.059960x,40.202700y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.903126x,39.661542y)--(47.198710x,39.607700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (55.901580x,39.911538y)--(56.703111x,39.666491y)--(55.904673x,39.411547y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.901580x,39.911538y)--(56.703111x,39.666491y)--(55.904673x,39.411547y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (44.063964x,37.457709y)--(44.090000x,31.930000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (43.813966x,37.456532y)--(44.060196x,38.257701y)--(44.313961x,37.458887y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (43.813966x,37.456532y)--(44.060196x,38.257701y)--(44.313961x,37.458887y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
%metapost_arc
% center->x = 44.090000% center->y = 30.706404% width = 4.162807% height = 4.162807% angle1 = 29.240924% angle2 = 163.922922% set_line_color 0.000000, 0.000000, 0.000000
  draw (45.906177x,29.689673y)..(43.851422x,28.638719y)..(42.090000x,30.130000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (46.059038x,30.022569y)--(45.680351x,29.611357y)--(45.955189x,29.662235y)--(46.160796x,29.472892y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (46.059038x,30.022569y)--(45.680351x,29.611357y)--(45.955189x,29.662235y)--(46.160796x,29.472892y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Service search } etex scaled 1.64t shifted (39.395000x,28.425000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Req rcvd} etex scaled 1.64t shifted (39.395000x,29.225000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Service match} etex scaled 1.64t shifted (45.595000x,28.425000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  Response sent} etex scaled 1.64t shifted (45.595000x,29.225000y);
% set_linewidth 0.100000
  path p;
  p = (55.626310x,29.704600y)--(55.626310x,32.304600y)--(62.353810x,32.304600y)--(62.353810x,29.704600y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 55.626310% center->y = 30.204600% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (55.626310x,29.704600y)..(55.272757x,29.851047y)..(55.126310x,30.204600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 62.353810% center->y = 30.204600% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (62.853810x,30.204600y)..(62.707363x,29.851047y)..(62.353810x,29.704600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (55.126310x,30.204600y)--(55.126310x,31.804600y)--(62.853810x,31.804600y)--(62.853810x,30.204600y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 55.626310% center->y = 31.804600% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (55.126310x,31.804600y)..(55.272757x,32.158153y)..(55.626310x,32.304600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 62.353810% center->y = 31.804600% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (62.353810x,32.304600y)..(62.707363x,32.158153y)..(62.853810x,31.804600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.626310x,29.704600y)--(62.353810x,29.704600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.626310x,32.304600y)--(62.353810x,32.304600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 55.626310% center->y = 30.204600% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.626310x,29.704600y)..(55.272757x,29.851047y)..(55.126310x,30.204600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 62.353810% center->y = 30.204600% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (62.853810x,30.204600y)..(62.707363x,29.851047y)..(62.353810x,29.704600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.126310x,30.204600y)--(55.126310x,31.804600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (62.853810x,30.204600y)--(62.853810x,31.804600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 55.626310% center->y = 31.804600% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.126310x,31.804600y)..(55.272757x,32.158153y)..(55.626310x,32.304600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 62.353810% center->y = 31.804600% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (62.353810x,32.304600y)..(62.707363x,32.158153y)..(62.853810x,31.804600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Close channel} etex scaled 1.64t shifted (58.990060x,30.799600y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n}        request revd      } etex scaled 1.64t shifted (58.990060x,31.599600y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (58.988488x,33.154599y)--(58.978110x,38.766800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (59.238488x,33.155061y)--(58.989968x,32.354600y)--(58.738489x,33.154136y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (59.238488x,33.155061y)--(58.989968x,32.354600y)--(58.738489x,33.154136y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (46.939997x,31.027611y)--(55.126310x,31.004600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (46.939294x,30.777612y)--(46.140000x,31.029859y)--(46.940699x,31.277610y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (46.939294x,30.777612y)--(46.140000x,31.029859y)--(46.940699x,31.277610y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Close ACK sent} etex scaled 1.64t shifted (51.451555x,32.165400y);
% set_linewidth 0.100000
  path p;
  p = (66.980610x,41.869200y)--(66.980610x,44.469200y)--(71.530610x,44.469200y)--(71.530610x,41.869200y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 66.980610% center->y = 42.369200% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (66.980610x,41.869200y)..(66.627057x,42.015647y)..(66.480610x,42.369200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 71.530610% center->y = 42.369200% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (72.030610x,42.369200y)..(71.884163x,42.015647y)..(71.530610x,41.869200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (66.480610x,42.369200y)--(66.480610x,43.969200y)--(72.030610x,43.969200y)--(72.030610x,42.369200y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 66.980610% center->y = 43.969200% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (66.480610x,43.969200y)..(66.627057x,44.322753y)..(66.980610x,44.469200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 71.530610% center->y = 43.969200% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (71.530610x,44.469200y)..(71.884163x,44.322753y)..(72.030610x,43.969200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (66.980610x,41.869200y)--(71.530610x,41.869200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (66.980610x,44.469200y)--(71.530610x,44.469200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 66.980610% center->y = 42.369200% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (66.980610x,41.869200y)..(66.627057x,42.015647y)..(66.480610x,42.369200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 71.530610% center->y = 42.369200% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (72.030610x,42.369200y)..(71.884163x,42.015647y)..(71.530610x,41.869200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (66.480610x,42.369200y)--(66.480610x,43.969200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (72.030610x,42.369200y)--(72.030610x,43.969200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 66.980610% center->y = 43.969200% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (66.480610x,43.969200y)..(66.627057x,44.322753y)..(66.980610x,44.469200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 71.530610% center->y = 43.969200% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (71.530610x,44.469200y)..(71.884163x,44.322753y)..(72.030610x,43.969200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Awaiting Ping } etex scaled 1.64t shifted (69.255610x,42.964200y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} ACK} etex scaled 1.64t shifted (69.255610x,43.764200y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (65.696176x,41.541841y)--(61.203110x,39.666800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (65.599894x,41.772557y)--(66.434467x,41.849944y)--(65.792458x,41.311125y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (65.599894x,41.772557y)--(66.434467x,41.849944y)--(65.792458x,41.311125y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (61.965462x,40.942725y)--(66.480610x,43.169200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (62.076028x,40.718504y)--(61.247954x,40.588913y)--(61.854896x,41.166946y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (62.076028x,40.718504y)--(61.247954x,40.588913y)--(61.854896x,41.166946y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (42.590000x,30.130000y)--(42.590000x,31.930000y)--(45.590000x,31.930000y)--(45.590000x,30.130000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 42.590000% center->y = 30.630000% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (42.590000x,30.130000y)..(42.236447x,30.276447y)..(42.090000x,30.630000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 45.590000% center->y = 30.630000% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (46.090000x,30.630000y)..(45.943553x,30.276447y)..(45.590000x,30.130000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (42.090000x,30.630000y)--(42.090000x,31.430000y)--(46.090000x,31.430000y)--(46.090000x,30.630000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 42.590000% center->y = 31.430000% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (42.090000x,31.430000y)..(42.236447x,31.783553y)..(42.590000x,31.930000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 45.590000% center->y = 31.430000% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (45.590000x,31.930000y)..(45.943553x,31.783553y)..(46.090000x,31.430000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (42.590000x,30.130000y)--(45.590000x,30.130000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (42.590000x,31.930000y)--(45.590000x,31.930000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 42.590000% center->y = 30.630000% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (42.590000x,30.130000y)..(42.236447x,30.276447y)..(42.090000x,30.630000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 45.590000% center->y = 30.630000% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (46.090000x,30.630000y)..(45.943553x,30.276447y)..(45.590000x,30.130000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (42.090000x,30.630000y)--(42.090000x,31.430000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (46.090000x,30.630000y)--(46.090000x,31.430000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 42.590000% center->y = 31.430000% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (42.090000x,31.430000y)..(42.236447x,31.783553y)..(42.590000x,31.930000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 45.590000% center->y = 31.430000% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (45.590000x,31.930000y)..(45.943553x,31.783553y)..(46.090000x,31.430000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Idle} etex scaled 1.64t shifted (44.090000x,31.225000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Close channel } etex scaled 1.64t shifted (54.395000x,33.925000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} req rcvd} etex scaled 1.64t shifted (54.395000x,34.725000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} ACK recvd} etex scaled 1.64t shifted (49.645000x,39.375000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Channel } etex scaled 1.64t shifted (44.545000x,34.575000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} request rcvd} etex scaled 1.64t shifted (44.545000x,35.375000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Ping} etex scaled 1.64t shifted (62.895000x,42.875000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} ACK rcvd} etex scaled 1.64t shifted (62.895000x,43.675000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Ping } etex scaled 1.64t shifted (64.195000x,39.775000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} req sent} etex scaled 1.64t shifted (64.195000x,40.575000y);
% set_linewidth 0.100000
%metapost_arc
% center->x = 58.978110% center->y = 40.163798% width = 4.522405% height = 4.522405% angle1 = 190.266376% angle2 = 337.584126% set_line_color 0.000000, 0.000000, 0.000000
  draw (56.753110x,40.566800y)..(58.738816x,42.412303y)..(61.068457x,41.026054y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (61.183184x,40.676813y)--(61.340069x,41.213365y)--(61.116350x,41.045810y)--(60.848074x,41.124252y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (61.183184x,40.676813y)--(61.340069x,41.213365y)--(61.116350x,41.045810y)--(60.848074x,41.124252y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Send } etex scaled 1.64t shifted (57.245000x,43.175000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} sensor data} etex scaled 1.64t shifted (57.245000x,43.975000y);
% set_linewidth 0.100000
%metapost_arc
% center->x = 58.978110% center->y = 39.593326% width = 4.747113% height = 4.747113% angle1 = 31.968956% angle2 = 159.621367% set_line_color 0.000000, 0.000000, 0.000000
  draw (60.991681x,38.336623y)..(58.738447x,37.231900y)..(56.753110x,38.766800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (61.164178x,38.661994y)--(60.755713x,38.280344y)--(61.033594x,38.310465y)--(61.224419x,38.106233y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (61.164178x,38.661994y)--(60.755713x,38.280344y)--(61.033594x,38.310465y)--(61.224419x,38.106233y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Ping } etex scaled 1.64t shifted (56.330710x,36.475000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} rcvd} etex scaled 1.64t shifted (56.330710x,37.275000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} PACK} etex scaled 1.64t shifted (60.480710x,36.525000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  sent} etex scaled 1.64t shifted (60.480710x,37.325000y);
endfig;
end;
