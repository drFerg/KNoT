% Metapost TeX macro
% Title: E:\My Dropbox\KNoT\Sensor_sequence_diagram.dia
% Creator: Dia v0.97.2
% CreationDate: Sat Mar 16 17:55:21 2013
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
  % picture(160.000000,-14.211803)(190.050000,22.050000)
  x = 1.000000cm; y = -1.000000cm;

  t = 1.000000;

% set_line_color 0.000000, 0.000000, 0.000000
% set_line_color 1.000000, 1.000000, 1.000000
  path p;
  p = (169.000000x,-22.000000y)--(169.000000x,-20.100000y)--(175.000000x,-20.100000y)--(175.000000x,-22.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (169.000000x,-22.000000y)--(169.000000x,-20.100000y)--(175.000000x,-20.100000y)--(175.000000x,-22.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Controller} etex scaled 1.64t shifted (172.000000x,-20.855000y);
  path p;
  p = (176.000000x,-22.000000y)--(176.000000x,-20.100000y)--(182.000000x,-20.100000y)--(182.000000x,-22.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (176.000000x,-22.000000y)--(176.000000x,-20.100000y)--(182.000000x,-20.100000y)--(182.000000x,-22.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Sensor} etex scaled 1.64t shifted (179.000000x,-20.855000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,-20.100000y)--(172.000000x,13.613197y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.000000x,13.988197y)--(171.750000x,13.488197y)--(172.000000x,13.613197y)--(172.250000x,13.488197y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,13.988197y)--(171.750000x,13.488197y)--(172.000000x,13.613197y)--(172.250000x,13.488197y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,-20.100000y)--(179.000000x,13.513197y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (179.000000x,13.888197y)--(178.750000x,13.388197y)--(179.000000x,13.513197y)--(179.250000x,13.388197y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,13.888197y)--(178.750000x,13.388197y)--(179.000000x,13.513197y)--(179.250000x,13.388197y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Device discovery} etex scaled 1.30175t shifted (164.000000x,-18.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Unreliable, broadcast request - unicast response} etex scaled 1.20629t shifted (160.000000x,-17.000000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,-19.000000y)--(178.513197x,-19.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (178.888197x,-19.000000y)--(178.388197x,-18.750000y)--(178.513197x,-19.000000y)--(178.388197x,-19.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (178.888197x,-19.000000y)--(178.388197x,-18.750000y)--(178.513197x,-19.000000y)--(178.388197x,-19.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,-18.000000y)--(172.486803x,-18.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,-18.000000y)--(172.611803x,-18.250000y)--(172.486803x,-18.000000y)--(172.611803x,-17.750000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,-18.000000y)--(172.611803x,-18.250000y)--(172.486803x,-18.000000y)--(172.611803x,-17.750000y)--cycle
    withpen pencircle scaled 0.1000x;
  path p;
  p = (183.000000x,-22.000000y)--(183.000000x,-20.100000y)--(189.000000x,-20.100000y)--(189.000000x,-22.000000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (183.000000x,-22.000000y)--(183.000000x,-20.100000y)--(189.000000x,-20.100000y)--(189.000000x,-22.000000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Actuator} etex scaled 1.64t shifted (186.000000x,-20.855000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,-19.000000y)--(185.513197x,-19.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (185.888197x,-19.000000y)--(185.388197x,-18.750000y)--(185.513197x,-19.000000y)--(185.388197x,-19.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (185.888197x,-19.000000y)--(185.388197x,-18.750000y)--(185.513197x,-19.000000y)--(185.388197x,-19.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (186.000000x,-20.100000y)--(186.000000x,13.513197y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (186.000000x,13.888197y)--(185.750000x,13.388197y)--(186.000000x,13.513197y)--(186.250000x,13.388197y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (186.000000x,13.888197y)--(185.750000x,13.388197y)--(186.000000x,13.513197y)--(186.250000x,13.388197y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Any one sense temperature?} etex scaled 1.01247t shifted (172.504170x,-19.232579y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Yes} etex scaled 1.01247t shifted (175.000000x,-18.176776y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} No (implicit)} etex scaled 1.01247t shifted (182.000000x,-18.000000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (162.000000x,-15.000000y)--(190.000000x,-15.000000y)
    withpen pencircle scaled 0.1000x
    dashed dashpattern (on 1.000000x off 1.000000x);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Set up channel} etex scaled 1.30175t shifted (164.000000x,-13.000000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,-13.565685y)--(178.513197x,-13.565685y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (178.888197x,-13.565685y)--(178.388197x,-13.315685y)--(178.513197x,-13.565685y)--(178.388197x,-13.815685y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (178.888197x,-13.565685y)--(178.388197x,-13.315685y)--(178.513197x,-13.565685y)--(178.388197x,-13.815685y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,-12.035355y)--(172.486803x,-12.035355y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,-12.035355y)--(172.611803x,-12.285355y)--(172.486803x,-12.035355y)--(172.611803x,-11.785355y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,-12.035355y)--(172.611803x,-12.285355y)--(172.486803x,-12.035355y)--(172.611803x,-11.785355y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,-10.363605y)--(178.513197x,-10.363605y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (178.888197x,-10.363605y)--(178.388197x,-10.113605y)--(178.513197x,-10.363605y)--(178.388197x,-10.613605y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (178.888197x,-10.363605y)--(178.388197x,-10.113605y)--(178.513197x,-10.363605y)--(178.388197x,-10.613605y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,-17.000000y)--(178.513197x,-17.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (178.888197x,-17.000000y)--(178.388197x,-16.750000y)--(178.513197x,-17.000000y)--(178.388197x,-17.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (178.888197x,-17.000000y)--(178.388197x,-16.750000y)--(178.513197x,-17.000000y)--(178.388197x,-17.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,-17.000000y)--(185.513197x,-17.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (185.888197x,-17.000000y)--(185.388197x,-16.750000y)--(185.513197x,-17.000000y)--(185.388197x,-17.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (185.888197x,-17.000000y)--(185.388197x,-16.750000y)--(185.513197x,-17.000000y)--(185.388197x,-17.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (186.000000x,-16.000000y)--(172.486803x,-16.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,-16.000000y)--(172.611803x,-16.250000y)--(172.486803x,-16.000000y)--(172.611803x,-15.750000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,-16.000000y)--(172.611803x,-16.250000y)--(172.486803x,-16.000000y)--(172.611803x,-15.750000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Anyone control a thermostat?} etex scaled 1.01247t shifted (172.453855x,-17.146616y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Yes} etex scaled 1.01247t shifted (182.212132x,-16.247487y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Send me the temperature} etex scaled 1.01247t shifted (172.353553x,-14.353553y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  every minute.} etex scaled 1.01247t shifted (172.353553x,-13.859664y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (174.065764x,-13.858574y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} OK} etex scaled 1.01247t shifted (175.333450x,-12.141421y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Connected} etex scaled 1.01247t shifted (174.707106x,-10.469671y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (171.979802x,-13.036563y)--(185.529053x,-13.070692y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (185.904052x,-13.071637y)--(185.404683x,-12.820378y)--(185.529053x,-13.070692y)--(185.403423x,-13.320377y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (185.904052x,-13.071637y)--(185.404683x,-12.820378y)--(185.529053x,-13.070692y)--(185.403423x,-13.320377y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Let me control the heating} etex scaled 1.01247t shifted (179.680185x,-13.252426y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (186.051210x,-11.304154y)--(172.537314x,-11.338280y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.162315x,-11.339227y)--(172.662945x,-11.587963y)--(172.537314x,-11.338280y)--(172.661682x,-11.087965y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.162315x,-11.339227y)--(172.662945x,-11.587963y)--(172.537314x,-11.338280y)--(172.661682x,-11.087965y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} OK} etex scaled 1.01247t shifted (182.225767x,-11.413950y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.015157x,-9.677810y)--(185.564408x,-9.643681y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (185.939407x,-9.642736y)--(185.438779x,-9.393996y)--(185.564408x,-9.643681y)--(185.440038x,-9.893995y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (185.939407x,-9.642736y)--(185.438779x,-9.393996y)--(185.564408x,-9.643681y)--(185.440038x,-9.893995y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Connected} etex scaled 1.01247t shifted (181.447343x,-9.822962y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (162.000000x,-9.000000y)--(190.000000x,-9.000000y)
    withpen pencircle scaled 0.1000x
    dashed dashpattern (on 1.000000x off 1.000000x);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,-7.681802y)--(172.486803x,-7.681802y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,-7.681802y)--(172.611803x,-7.931802y)--(172.486803x,-7.681802y)--(172.611803x,-7.431802y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,-7.681802y)--(172.611803x,-7.931802y)--(172.486803x,-7.681802y)--(172.611803x,-7.431802y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,-7.000000y)--(172.486803x,-7.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,-7.000000y)--(172.611803x,-7.250000y)--(172.486803x,-7.000000y)--(172.611803x,-6.750000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,-7.000000y)--(172.611803x,-7.250000y)--(172.486803x,-7.000000y)--(172.611803x,-6.750000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (186.000000x,-5.378857y)--(172.486803x,-5.378857y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,-5.378857y)--(172.611803x,-5.628857y)--(172.486803x,-5.378857y)--(172.611803x,-5.128857y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,-5.378857y)--(172.611803x,-5.628857y)--(172.486803x,-5.378857y)--(172.611803x,-5.128857y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.006752x,-8.343736y)--(172.493556x,-8.343736y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.118556x,-8.343736y)--(172.618556x,-8.593736y)--(172.493556x,-8.343736y)--(172.618556x,-8.093736y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.118556x,-8.343736y)--(172.618556x,-8.593736y)--(172.493556x,-8.343736y)--(172.618556x,-8.093736y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.042108x,-6.293129y)--(172.528911x,-6.293129y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.153911x,-6.293129y)--(172.653911x,-6.543129y)--(172.528911x,-6.293129y)--(172.653911x,-6.043129y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.153911x,-6.293129y)--(172.653911x,-6.543129y)--(172.528911x,-6.293129y)--(172.653911x,-6.043129y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (163.000000x,-14.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Send sensor data} etex scaled 1.30175t shifted (164.000000x,-7.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Unreliable, unicast} etex scaled 1.20629t shifted (164.000000x,-6.000000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (162.000000x,-4.000000y)--(190.000000x,-4.000000y)
    withpen pencircle scaled 0.1000x
    dashed dashpattern (on 1.000000x off 1.000000x);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (174.801154x,-8.758572y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} It's 24C} etex scaled 1.01247t shifted (174.709231x,-8.479460y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} It's 22C} etex scaled 1.01247t shifted (174.744586x,-6.428853y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} It's 24C} etex scaled 1.01247t shifted (174.688017x,-7.860743y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} It's 23C} etex scaled 1.01247t shifted (174.709231x,-7.171314y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} } etex scaled 1.64t shifted (181.518661x,-5.788727y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} It's 50 lux} etex scaled 1.01247t shifted (181.532803x,-5.651037y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Close channel} etex scaled 1.30175t shifted (164.000000x,10.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Reliable, unicast request - unicast response} etex scaled 1.20629t shifted (161.000000x,11.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Reliable, unicast request - unicast response} etex scaled 1.20629t shifted (161.000000x,-12.000000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,9.000000y)--(178.513197x,9.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (178.888197x,9.000000y)--(178.388197x,9.250000y)--(178.513197x,9.000000y)--(178.388197x,8.750000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (178.888197x,9.000000y)--(178.388197x,9.250000y)--(178.513197x,9.000000y)--(178.388197x,8.750000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,10.000000y)--(172.486803x,10.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,10.000000y)--(172.611803x,9.750000y)--(172.486803x,10.000000y)--(172.611803x,10.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,10.000000y)--(172.611803x,9.750000y)--(172.486803x,10.000000y)--(172.611803x,10.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (186.000000x,11.000000y)--(172.486803x,11.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,11.000000y)--(172.611803x,10.750000y)--(172.486803x,11.000000y)--(172.611803x,11.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,11.000000y)--(172.611803x,10.750000y)--(172.486803x,11.000000y)--(172.611803x,11.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,12.000000y)--(185.513197x,12.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (185.888197x,12.000000y)--(185.388197x,12.250000y)--(185.513197x,12.000000y)--(185.388197x,11.750000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (185.888197x,12.000000y)--(185.388197x,12.250000y)--(185.513197x,12.000000y)--(185.388197x,11.750000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Stop} etex scaled 1.01247t shifted (174.893934x,8.893934y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Stop} etex scaled 1.01247t shifted (182.098488x,10.768376y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Stop (ACK)} etex scaled 1.01247t shifted (174.532454x,9.849138y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Stop (ACK)} etex scaled 1.01247t shifted (181.780290x,11.758324y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (162.000000x,8.000000y)--(190.000000x,8.000000y)
    withpen pencircle scaled 0.1000x
    dashed dashpattern (on 1.000000x off 1.000000x);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (162.000000x,2.000000y)--(190.000000x,2.000000y)
    withpen pencircle scaled 0.1000x
    dashed dashpattern (on 1.000000x off 1.000000x);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Send command} etex scaled 1.30175t shifted (164.000000x,-2.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Reliable, unicast request - unicast response} etex scaled 1.20629t shifted (161.000000x,-1.000000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,-2.000000y)--(185.513197x,-2.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (185.888197x,-2.000000y)--(185.388197x,-1.750000y)--(185.513197x,-2.000000y)--(185.388197x,-2.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (185.888197x,-2.000000y)--(185.388197x,-1.750000y)--(185.513197x,-2.000000y)--(185.388197x,-2.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (186.000000x,-1.000000y)--(172.486803x,-1.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,-1.000000y)--(172.611803x,-1.250000y)--(172.486803x,-1.000000y)--(172.611803x,-0.750000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,-1.000000y)--(172.611803x,-1.250000y)--(172.486803x,-1.000000y)--(172.611803x,-0.750000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Increase temperature} etex scaled 1.01247t shifted (173.318198x,-2.247487y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} OK} etex scaled 1.01247t shifted (182.158798x,-1.206876y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} PING} etex scaled 1.30175t shifted (165.000000x,4.000000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Reliable, unicast request - unicast response} etex scaled 1.20629t shifted (161.000000x,5.000000y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.000000x,4.000000y)--(185.513197x,4.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (185.888197x,4.000000y)--(185.388197x,4.250000y)--(185.513197x,4.000000y)--(185.388197x,3.750000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (185.888197x,4.000000y)--(185.388197x,4.250000y)--(185.513197x,4.000000y)--(185.388197x,3.750000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (186.000000x,5.000000y)--(172.486803x,5.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,5.000000y)--(172.611803x,4.750000y)--(172.486803x,5.000000y)--(172.611803x,5.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,5.000000y)--(172.611803x,4.750000y)--(172.486803x,5.000000y)--(172.611803x,5.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (179.000000x,3.000000y)--(172.486803x,3.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,3.000000y)--(172.611803x,2.750000y)--(172.486803x,3.000000y)--(172.611803x,3.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,3.000000y)--(172.611803x,2.750000y)--(172.486803x,3.000000y)--(172.611803x,3.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.486803x,6.000000y)--(179.000000x,6.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (172.111803x,6.000000y)--(172.611803x,5.750000y)--(172.486803x,6.000000y)--(172.611803x,6.250000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (172.111803x,6.000000y)--(172.611803x,5.750000y)--(172.486803x,6.000000y)--(172.611803x,6.250000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Are you alive?} etex scaled 1.01247t shifted (174.212132x,2.823224y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Are you alive?} etex scaled 1.01247t shifted (174.207391x,3.783524y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Are you alive?} etex scaled 1.01247t shifted (174.278102x,5.763421y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Yes} etex scaled 1.01247t shifted (182.091623x,4.844183y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (178.513197x,7.000000y)--(172.000000x,7.000000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (178.888197x,7.000000y)--(178.388197x,7.250000y)--(178.513197x,7.000000y)--(178.388197x,6.750000y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (178.888197x,7.000000y)--(178.388197x,7.250000y)--(178.513197x,7.000000y)--(178.388197x,6.750000y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Yes} etex scaled 1.01247t shifted (175.176776x,6.787868y);
endfig;
end;
