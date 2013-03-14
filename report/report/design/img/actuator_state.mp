% Metapost TeX macro
% Title: E:\My Dropbox\KNoT\Actuator state machine.dia
% Creator: Dia v0.97.2
% CreationDate: Thu Mar 14 20:47:14 2013
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
  % picture(25.707853,-28.716944)(46.130186,-17.326012)
  x = 0.624811cm; y = -0.624811cm;

  t = 0.624811;

% set_line_color 0.000000, 0.000000, 0.000000
% set_line_color 1.000000, 1.000000, 1.000000
% set_linewidth 0.100000
  path p;
  p = (59.003110x,38.666800y)--(59.003110x,40.466800y)--(62.453110x,40.466800y)--(62.453110x,38.666800y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 59.003110% center->y = 39.166800% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (59.003110x,38.666800y)..(58.649557x,38.813247y)..(58.503110x,39.166800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 62.453110% center->y = 39.166800% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (62.953110x,39.166800y)..(62.806663x,38.813247y)..(62.453110x,38.666800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (58.503110x,39.166800y)--(58.503110x,39.966800y)--(62.953110x,39.966800y)--(62.953110x,39.166800y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 59.003110% center->y = 39.966800% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (58.503110x,39.966800y)..(58.649557x,40.320353y)..(59.003110x,40.466800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 62.453110% center->y = 39.966800% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (62.453110x,40.466800y)..(62.806663x,40.320353y)..(62.953110x,39.966800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (59.003110x,38.666800y)--(62.453110x,38.666800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (59.003110x,40.466800y)--(62.453110x,40.466800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 59.003110% center->y = 39.166800% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (59.003110x,38.666800y)..(58.649557x,38.813247y)..(58.503110x,39.166800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 62.453110% center->y = 39.166800% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (62.953110x,39.166800y)..(62.806663x,38.813247y)..(62.453110x,38.666800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (58.503110x,39.166800y)--(58.503110x,39.966800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (62.953110x,39.166800y)--(62.953110x,39.966800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 59.003110% center->y = 39.966800% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (58.503110x,39.966800y)..(58.649557x,40.320353y)..(59.003110x,40.466800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 62.453110% center->y = 39.966800% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (62.453110x,40.466800y)..(62.806663x,40.320353y)..(62.953110x,39.966800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Connected} etex scaled 1.64t shifted (60.728110x,39.761800y);
% set_linewidth 0.100000
  path p;
  p = (43.171210x,38.207700y)--(43.171210x,40.807700y)--(48.448710x,40.807700y)--(48.448710x,38.207700y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 43.171210% center->y = 38.707700% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (43.171210x,38.207700y)..(42.817657x,38.354147y)..(42.671210x,38.707700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 48.448710% center->y = 38.707700% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (48.948710x,38.707700y)..(48.802263x,38.354147y)..(48.448710x,38.207700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (42.671210x,38.707700y)--(42.671210x,40.307700y)--(48.948710x,40.307700y)--(48.948710x,38.707700y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 43.171210% center->y = 40.307700% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (42.671210x,40.307700y)..(42.817657x,40.661253y)..(43.171210x,40.807700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 48.448710% center->y = 40.307700% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (48.448710x,40.807700y)..(48.802263x,40.661253y)..(48.948710x,40.307700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (43.171210x,38.207700y)--(48.448710x,38.207700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (43.171210x,40.807700y)--(48.448710x,40.807700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 43.171210% center->y = 38.707700% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (43.171210x,38.207700y)..(42.817657x,38.354147y)..(42.671210x,38.707700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 48.448710% center->y = 38.707700% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (48.948710x,38.707700y)..(48.802263x,38.354147y)..(48.448710x,38.207700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (42.671210x,38.707700y)--(42.671210x,40.307700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (48.948710x,38.707700y)--(48.948710x,40.307700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 43.171210% center->y = 40.307700% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (42.671210x,40.307700y)..(42.817657x,40.661253y)..(43.171210x,40.807700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 48.448710% center->y = 40.307700% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (48.448710x,40.807700y)..(48.802263x,40.661253y)..(48.948710x,40.307700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Channel request} etex scaled 1.64t shifted (45.809960x,39.302700y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} ACK sent} etex scaled 1.64t shifted (45.809960x,40.102700y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (57.653126x,39.561542y)--(48.948710x,39.507700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (57.651580x,39.811538y)--(58.453111x,39.566491y)--(57.654673x,39.311547y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (57.651580x,39.811538y)--(58.453111x,39.566491y)--(57.654673x,39.311547y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (45.813964x,37.357709y)--(45.840000x,31.830000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (45.563966x,37.356532y)--(45.810196x,38.157701y)--(46.063961x,37.358887y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (45.563966x,37.356532y)--(45.810196x,38.157701y)--(46.063961x,37.358887y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
%metapost_arc
% center->x = 45.840000% center->y = 30.606404% width = 4.162807% height = 4.162807% angle1 = 29.240924% angle2 = 163.922922% set_line_color 0.000000, 0.000000, 0.000000
  draw (47.656177x,29.589673y)..(45.601422x,28.538719y)..(43.840000x,30.030000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (47.809038x,29.922569y)--(47.430351x,29.511357y)--(47.705189x,29.562235y)--(47.910796x,29.372892y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (47.809038x,29.922569y)--(47.430351x,29.511357y)--(47.705189x,29.562235y)--(47.910796x,29.372892y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Service search } etex scaled 1.64t shifted (41.145000x,28.325000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Req rcvd} etex scaled 1.64t shifted (41.145000x,29.125000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Service match} etex scaled 1.64t shifted (47.345000x,28.325000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  Response sent} etex scaled 1.64t shifted (47.345000x,29.125000y);
% set_linewidth 0.100000
  path p;
  p = (57.376310x,29.604600y)--(57.376310x,32.204600y)--(64.103810x,32.204600y)--(64.103810x,29.604600y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 57.376310% center->y = 30.104600% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (57.376310x,29.604600y)..(57.022757x,29.751047y)..(56.876310x,30.104600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 64.103810% center->y = 30.104600% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (64.603810x,30.104600y)..(64.457363x,29.751047y)..(64.103810x,29.604600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (56.876310x,30.104600y)--(56.876310x,31.704600y)--(64.603810x,31.704600y)--(64.603810x,30.104600y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 57.376310% center->y = 31.704600% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (56.876310x,31.704600y)..(57.022757x,32.058153y)..(57.376310x,32.204600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 64.103810% center->y = 31.704600% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (64.103810x,32.204600y)..(64.457363x,32.058153y)..(64.603810x,31.704600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (57.376310x,29.604600y)--(64.103810x,29.604600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (57.376310x,32.204600y)--(64.103810x,32.204600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 57.376310% center->y = 30.104600% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (57.376310x,29.604600y)..(57.022757x,29.751047y)..(56.876310x,30.104600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 64.103810% center->y = 30.104600% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (64.603810x,30.104600y)..(64.457363x,29.751047y)..(64.103810x,29.604600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (56.876310x,30.104600y)--(56.876310x,31.704600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (64.603810x,30.104600y)--(64.603810x,31.704600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 57.376310% center->y = 31.704600% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (56.876310x,31.704600y)..(57.022757x,32.058153y)..(57.376310x,32.204600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 64.103810% center->y = 31.704600% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (64.103810x,32.204600y)..(64.457363x,32.058153y)..(64.603810x,31.704600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Close channel} etex scaled 1.64t shifted (60.740060x,30.699600y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n}        request revd      } etex scaled 1.64t shifted (60.740060x,31.499600y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (60.738488x,33.054599y)--(60.728110x,38.666800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (60.988488x,33.055061y)--(60.739968x,32.254600y)--(60.488489x,33.054136y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (60.988488x,33.055061y)--(60.739968x,32.254600y)--(60.488489x,33.054136y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (48.689997x,30.927611y)--(56.876310x,30.904600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (48.689294x,30.677612y)--(47.890000x,30.929859y)--(48.690699x,31.177610y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (48.689294x,30.677612y)--(47.890000x,30.929859y)--(48.690699x,31.177610y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Close ACK sent} etex scaled 1.64t shifted (53.201555x,32.065400y);
% set_linewidth 0.100000
  path p;
  p = (68.730610x,41.769200y)--(68.730610x,44.369200y)--(73.280610x,44.369200y)--(73.280610x,41.769200y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 68.730610% center->y = 42.269200% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (68.730610x,41.769200y)..(68.377057x,41.915647y)..(68.230610x,42.269200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 73.280610% center->y = 42.269200% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (73.780610x,42.269200y)..(73.634163x,41.915647y)..(73.280610x,41.769200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (68.230610x,42.269200y)--(68.230610x,43.869200y)--(73.780610x,43.869200y)--(73.780610x,42.269200y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 68.730610% center->y = 43.869200% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (68.230610x,43.869200y)..(68.377057x,44.222753y)..(68.730610x,44.369200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 73.280610% center->y = 43.869200% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (73.280610x,44.369200y)..(73.634163x,44.222753y)..(73.780610x,43.869200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (68.730610x,41.769200y)--(73.280610x,41.769200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (68.730610x,44.369200y)--(73.280610x,44.369200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 68.730610% center->y = 42.269200% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (68.730610x,41.769200y)..(68.377057x,41.915647y)..(68.230610x,42.269200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 73.280610% center->y = 42.269200% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (73.780610x,42.269200y)..(73.634163x,41.915647y)..(73.280610x,41.769200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (68.230610x,42.269200y)--(68.230610x,43.869200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (73.780610x,42.269200y)--(73.780610x,43.869200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 68.730610% center->y = 43.869200% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (68.230610x,43.869200y)..(68.377057x,44.222753y)..(68.730610x,44.369200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 73.280610% center->y = 43.869200% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (73.280610x,44.369200y)..(73.634163x,44.222753y)..(73.780610x,43.869200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Awaiting Ping } etex scaled 1.64t shifted (71.005610x,42.864200y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} ACK} etex scaled 1.64t shifted (71.005610x,43.664200y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (67.446176x,41.441841y)--(62.953110x,39.566800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (67.349894x,41.672557y)--(68.184467x,41.749944y)--(67.542458x,41.211125y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (67.349894x,41.672557y)--(68.184467x,41.749944y)--(67.542458x,41.211125y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (63.715462x,40.842725y)--(68.230610x,43.069200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (63.826028x,40.618504y)--(62.997954x,40.488913y)--(63.604896x,41.066946y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (63.826028x,40.618504y)--(62.997954x,40.488913y)--(63.604896x,41.066946y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (44.340000x,30.030000y)--(44.340000x,31.830000y)--(47.340000x,31.830000y)--(47.340000x,30.030000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 44.340000% center->y = 30.530000% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (44.340000x,30.030000y)..(43.986447x,30.176447y)..(43.840000x,30.530000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 47.340000% center->y = 30.530000% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (47.840000x,30.530000y)..(47.693553x,30.176447y)..(47.340000x,30.030000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (43.840000x,30.530000y)--(43.840000x,31.330000y)--(47.840000x,31.330000y)--(47.840000x,30.530000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 44.340000% center->y = 31.330000% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (43.840000x,31.330000y)..(43.986447x,31.683553y)..(44.340000x,31.830000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 47.340000% center->y = 31.330000% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (47.340000x,31.830000y)..(47.693553x,31.683553y)..(47.840000x,31.330000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (44.340000x,30.030000y)--(47.340000x,30.030000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (44.340000x,31.830000y)--(47.340000x,31.830000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 44.340000% center->y = 30.530000% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (44.340000x,30.030000y)..(43.986447x,30.176447y)..(43.840000x,30.530000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 47.340000% center->y = 30.530000% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (47.840000x,30.530000y)..(47.693553x,30.176447y)..(47.340000x,30.030000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (43.840000x,30.530000y)--(43.840000x,31.330000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (47.840000x,30.530000y)--(47.840000x,31.330000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 44.340000% center->y = 31.330000% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (43.840000x,31.330000y)..(43.986447x,31.683553y)..(44.340000x,31.830000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 47.340000% center->y = 31.330000% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (47.340000x,31.830000y)..(47.693553x,31.683553y)..(47.840000x,31.330000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Idle} etex scaled 1.64t shifted (45.840000x,31.125000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Close channel } etex scaled 1.64t shifted (56.145000x,33.825000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} req rcvd} etex scaled 1.64t shifted (56.145000x,34.625000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} ACK recvd} etex scaled 1.64t shifted (51.395000x,39.275000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Channel } etex scaled 1.64t shifted (46.295000x,34.475000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} request rcvd} etex scaled 1.64t shifted (46.295000x,35.275000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Ping} etex scaled 1.64t shifted (64.645000x,42.775000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} ACK rcvd} etex scaled 1.64t shifted (64.645000x,43.575000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Ping } etex scaled 1.64t shifted (65.945000x,39.675000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} req sent} etex scaled 1.64t shifted (65.945000x,40.475000y);
% set_linewidth 0.100000
%metapost_arc
% center->x = 60.728110% center->y = 39.493326% width = 4.747113% height = 4.747113% angle1 = 31.968956% angle2 = 159.621367% set_line_color 0.000000, 0.000000, 0.000000
  draw (62.741681x,38.236623y)..(60.488447x,37.131900y)..(58.503110x,38.666800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (62.914178x,38.561994y)--(62.505713x,38.180344y)--(62.783594x,38.210465y)--(62.974419x,38.006233y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (62.914178x,38.561994y)--(62.505713x,38.180344y)--(62.783594x,38.210465y)--(62.974419x,38.006233y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Ping } etex scaled 1.64t shifted (58.080710x,36.375000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} rcvd} etex scaled 1.64t shifted (58.080710x,37.175000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} PACK} etex scaled 1.64t shifted (62.230710x,36.425000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  sent} etex scaled 1.64t shifted (62.230710x,37.225000y);
% set_linewidth 0.100000
  path p;
  p = (55.190000x,44.111000y)--(55.190000x,45.911000y)--(61.227500x,45.911000y)--(61.227500x,44.111000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 55.190000% center->y = 44.611000% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (55.190000x,44.111000y)..(54.836447x,44.257447y)..(54.690000x,44.611000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 61.227500% center->y = 44.611000% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (61.727500x,44.611000y)..(61.581053x,44.257447y)..(61.227500x,44.111000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (54.690000x,44.611000y)--(54.690000x,45.411000y)--(61.727500x,45.411000y)--(61.727500x,44.611000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = 55.190000% center->y = 45.411000% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (54.690000x,45.411000y)..(54.836447x,45.764553y)..(55.190000x,45.911000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = 61.227500% center->y = 45.411000% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (61.227500x,45.911000y)..(61.581053x,45.764553y)..(61.727500x,45.411000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.190000x,44.111000y)--(61.227500x,44.111000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.190000x,45.911000y)--(61.227500x,45.911000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 55.190000% center->y = 44.611000% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (55.190000x,44.111000y)..(54.836447x,44.257447y)..(54.690000x,44.611000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 61.227500% center->y = 44.611000% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (61.727500x,44.611000y)..(61.581053x,44.257447y)..(61.227500x,44.111000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (54.690000x,44.611000y)--(54.690000x,45.411000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (61.727500x,44.611000y)--(61.727500x,45.411000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 55.190000% center->y = 45.411000% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (54.690000x,45.411000y)..(54.836447x,45.764553y)..(55.190000x,45.911000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = 61.227500% center->y = 45.411000% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (61.227500x,45.911000y)..(61.581053x,45.764553y)..(61.727500x,45.411000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Perform Command} etex scaled 1.64t shifted (58.208750x,45.206000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (58.277186x,43.263759y)--(58.503110x,40.466800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (58.027997x,43.243631y)--(58.212776x,44.061162y)--(58.526374x,43.283888y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (58.027997x,43.243631y)--(58.212776x,44.061162y)--(58.526374x,43.283888y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (60.952915x,41.286533y)--(61.727500x,44.111000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (61.194013x,41.220414y)--(60.741334x,40.515020y)--(60.711817x,41.352652y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (61.194013x,41.220414y)--(60.741334x,40.515020y)--(60.711817x,41.352652y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} ACK Sent} etex scaled 1.64t shifted (61.399825x,43.125000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Command } etex scaled 1.64t shifted (54.978575x,41.975000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} req rcvd} etex scaled 1.64t shifted (54.978575x,42.775000y);
endfig;
end;
