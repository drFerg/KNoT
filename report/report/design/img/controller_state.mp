% Metapost TeX macro
% Title: E:\My Dropbox\KNoT\Controller state machine.dia
% Creator: Dia v0.97.2
% CreationDate: Thu Mar 14 20:40:57 2013
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
  % picture(-23.175306,-26.910115)(-2.540919,-16.482517)
  x = 0.624811cm; y = -0.624811cm;

  t = 0.624811;

% set_line_color 0.000000, 0.000000, 0.000000
% set_line_color 1.000000, 1.000000, 1.000000
% set_linewidth 0.100000
  path p;
  p = (-19.133590x,37.316800y)--(-19.133590x,39.116800y)--(-15.683590x,39.116800y)--(-15.683590x,37.316800y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -19.133590% center->y = 37.816800% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-19.133590x,37.316800y)..(-19.487143x,37.463247y)..(-19.633590x,37.816800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -15.683590% center->y = 37.816800% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-15.183590x,37.816800y)..(-15.330037x,37.463247y)..(-15.683590x,37.316800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (-19.633590x,37.816800y)--(-19.633590x,38.616800y)--(-15.183590x,38.616800y)--(-15.183590x,37.816800y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -19.133590% center->y = 38.616800% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-19.633590x,38.616800y)..(-19.487143x,38.970353y)..(-19.133590x,39.116800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -15.683590% center->y = 38.616800% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-15.683590x,39.116800y)..(-15.330037x,38.970353y)..(-15.183590x,38.616800y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-19.133590x,37.316800y)--(-15.683590x,37.316800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-19.133590x,39.116800y)--(-15.683590x,39.116800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -19.133590% center->y = 37.816800% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-19.133590x,37.316800y)..(-19.487143x,37.463247y)..(-19.633590x,37.816800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -15.683590% center->y = 37.816800% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-15.183590x,37.816800y)..(-15.330037x,37.463247y)..(-15.683590x,37.316800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-19.633590x,37.816800y)--(-19.633590x,38.616800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-15.183590x,37.816800y)--(-15.183590x,38.616800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -19.133590% center->y = 38.616800% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-19.633590x,38.616800y)..(-19.487143x,38.970353y)..(-19.133590x,39.116800y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -15.683590% center->y = 38.616800% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-15.683590x,39.116800y)..(-15.330037x,38.970353y)..(-15.183590x,38.616800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Connected} etex scaled 1.64t shifted (-17.408590x,38.411800y);
% set_linewidth 0.100000
  path p;
  p = (-35.765490x,33.207700y)--(-35.765490x,35.007700y)--(-28.902990x,35.007700y)--(-28.902990x,33.207700y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -35.765490% center->y = 33.707700% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-35.765490x,33.207700y)..(-36.119043x,33.354147y)..(-36.265490x,33.707700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -28.902990% center->y = 33.707700% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-28.402990x,33.707700y)..(-28.549437x,33.354147y)..(-28.902990x,33.207700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (-36.265490x,33.707700y)--(-36.265490x,34.507700y)--(-28.402990x,34.507700y)--(-28.402990x,33.707700y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -35.765490% center->y = 34.507700% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-36.265490x,34.507700y)..(-36.119043x,34.861253y)..(-35.765490x,35.007700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -28.902990% center->y = 34.507700% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-28.902990x,35.007700y)..(-28.549437x,34.861253y)..(-28.402990x,34.507700y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-35.765490x,33.207700y)--(-28.902990x,33.207700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-35.765490x,35.007700y)--(-28.902990x,35.007700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -35.765490% center->y = 33.707700% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-35.765490x,33.207700y)..(-36.119043x,33.354147y)..(-36.265490x,33.707700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -28.902990% center->y = 33.707700% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-28.402990x,33.707700y)..(-28.549437x,33.354147y)..(-28.902990x,33.207700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-36.265490x,33.707700y)--(-36.265490x,34.507700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-28.402990x,33.707700y)--(-28.402990x,34.507700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -35.765490% center->y = 34.507700% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-36.265490x,34.507700y)..(-36.119043x,34.861253y)..(-35.765490x,35.007700y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -28.902990% center->y = 34.507700% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-28.902990x,35.007700y)..(-28.549437x,34.861253y)..(-28.402990x,34.507700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Channel request sent} etex scaled 1.64t shifted (-32.334240x,34.302700y);
% set_linewidth 0.100000
  path p;
  p = (-34.307430x,37.279300y)--(-34.307430x,39.079300y)--(-30.194930x,39.079300y)--(-30.194930x,37.279300y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -34.307430% center->y = 37.779300% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-34.307430x,37.279300y)..(-34.660983x,37.425747y)..(-34.807430x,37.779300y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -30.194930% center->y = 37.779300% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-29.694930x,37.779300y)..(-29.841377x,37.425747y)..(-30.194930x,37.279300y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (-34.807430x,37.779300y)--(-34.807430x,38.579300y)--(-29.694930x,38.579300y)--(-29.694930x,37.779300y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -34.307430% center->y = 38.579300% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-34.807430x,38.579300y)..(-34.660983x,38.932853y)..(-34.307430x,39.079300y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -30.194930% center->y = 38.579300% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-30.194930x,39.079300y)..(-29.841377x,38.932853y)..(-29.694930x,38.579300y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-34.307430x,37.279300y)--(-30.194930x,37.279300y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-34.307430x,39.079300y)--(-30.194930x,39.079300y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -34.307430% center->y = 37.779300% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-34.307430x,37.279300y)..(-34.660983x,37.425747y)..(-34.807430x,37.779300y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -30.194930% center->y = 37.779300% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-29.694930x,37.779300y)..(-29.841377x,37.425747y)..(-30.194930x,37.279300y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-34.807430x,37.779300y)--(-34.807430x,38.579300y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-29.694930x,37.779300y)--(-29.694930x,38.579300y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -34.307430% center->y = 38.579300% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-34.807430x,38.579300y)..(-34.660983x,38.932853y)..(-34.307430x,39.079300y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -30.194930% center->y = 38.579300% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-30.194930x,39.079300y)..(-29.841377x,38.932853y)..(-29.694930x,38.579300y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Sending ACK} etex scaled 1.64t shifted (-32.251180x,38.374300y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-32.282239x,36.429868y)--(-32.334240x,35.007700y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-32.532072x,36.439003y)--(-32.253007x,37.229333y)--(-32.032406x,36.420733y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-32.532072x,36.439003y)--(-32.253007x,37.229333y)--(-32.032406x,36.420733y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-32.353699x,32.357923y)--(-32.396700x,30.480000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-32.603633x,32.363646y)--(-32.335385x,33.157713y)--(-32.103764x,32.352200y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-32.603633x,32.363646y)--(-32.335385x,33.157713y)--(-32.103764x,32.352200y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-20.483584x,38.213632y)--(-29.694930x,38.179300y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-20.484516x,38.463630y)--(-19.683590x,38.216614y)--(-20.482652x,37.963634y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-20.484516x,38.463630y)--(-19.683590x,38.216614y)--(-20.482652x,37.963634y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} ACK sent} etex scaled 1.64t shifted (-26.491700x,38.925000y);
% set_linewidth 0.100000
%metapost_arc
% center->x = -32.396700% center->y = 29.256404% width = 4.162807% height = 4.162807% angle1 = 29.240924% angle2 = 163.922922% set_line_color 0.000000, 0.000000, 0.000000
  draw (-30.580523x,28.239673y)..(-32.635278x,27.188719y)..(-34.396700x,28.680000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-30.427662x,28.572569y)--(-30.806349x,28.161357y)--(-30.531511x,28.212235y)--(-30.325904x,28.022892y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-30.427662x,28.572569y)--(-30.806349x,28.161357y)--(-30.531511x,28.212235y)--(-30.325904x,28.022892y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Service search } etex scaled 1.64t shifted (-37.091700x,26.975000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Req Sent} etex scaled 1.64t shifted (-37.091700x,27.775000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Service match} etex scaled 1.64t shifted (-30.891700x,26.975000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  Responses rcvd} etex scaled 1.64t shifted (-30.891700x,27.775000y);
% set_linewidth 0.100000
  path p;
  p = (-20.710390x,28.204600y)--(-20.710390x,30.804600y)--(-14.037890x,30.804600y)--(-14.037890x,28.204600y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -20.710390% center->y = 28.704600% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-20.710390x,28.204600y)..(-21.063943x,28.351047y)..(-21.210390x,28.704600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -14.037890% center->y = 28.704600% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-13.537890x,28.704600y)..(-13.684337x,28.351047y)..(-14.037890x,28.204600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (-21.210390x,28.704600y)--(-21.210390x,30.304600y)--(-13.537890x,30.304600y)--(-13.537890x,28.704600y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -20.710390% center->y = 30.304600% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-21.210390x,30.304600y)..(-21.063943x,30.658153y)..(-20.710390x,30.804600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -14.037890% center->y = 30.304600% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-14.037890x,30.804600y)..(-13.684337x,30.658153y)..(-13.537890x,30.304600y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-20.710390x,28.204600y)--(-14.037890x,28.204600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-20.710390x,30.804600y)--(-14.037890x,30.804600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -20.710390% center->y = 28.704600% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-20.710390x,28.204600y)..(-21.063943x,28.351047y)..(-21.210390x,28.704600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -14.037890% center->y = 28.704600% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-13.537890x,28.704600y)..(-13.684337x,28.351047y)..(-14.037890x,28.204600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-21.210390x,28.704600y)--(-21.210390x,30.304600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-13.537890x,28.704600y)--(-13.537890x,30.304600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -20.710390% center->y = 30.304600% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-21.210390x,30.304600y)..(-21.063943x,30.658153y)..(-20.710390x,30.804600y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -14.037890% center->y = 30.304600% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-14.037890x,30.804600y)..(-13.684337x,30.658153y)..(-13.537890x,30.304600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Awaiting close } etex scaled 1.64t shifted (-17.374140x,29.299600y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n}        channel ACK      } etex scaled 1.64t shifted (-17.374140x,30.099600y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-17.378636x,31.654588y)--(-17.408590x,37.316800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-17.128640x,31.655911y)--(-17.374404x,30.854599y)--(-17.628633x,31.653266y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-17.128640x,31.655911y)--(-17.374404x,30.854599y)--(-17.628633x,31.653266y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-29.546729x,29.573024y)--(-21.210390x,29.504600y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-29.548781x,29.323032y)--(-30.346702x,29.579590y)--(-29.544677x,29.823015y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-29.548781x,29.323032y)--(-30.346702x,29.579590y)--(-29.544677x,29.823015y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Close ACK rcvd} etex scaled 1.64t shifted (-24.960145x,30.690400y);
% set_linewidth 0.100000
  path p;
  p = (-9.506090x,40.419200y)--(-9.506090x,43.019200y)--(-4.956090x,43.019200y)--(-4.956090x,40.419200y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -9.506090% center->y = 40.919200% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-9.506090x,40.419200y)..(-9.859643x,40.565647y)..(-10.006090x,40.919200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -4.956090% center->y = 40.919200% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-4.456090x,40.919200y)..(-4.602537x,40.565647y)..(-4.956090x,40.419200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (-10.006090x,40.919200y)--(-10.006090x,42.519200y)--(-4.456090x,42.519200y)--(-4.456090x,40.919200y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -9.506090% center->y = 42.519200% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-10.006090x,42.519200y)..(-9.859643x,42.872753y)..(-9.506090x,43.019200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -4.956090% center->y = 42.519200% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-4.956090x,43.019200y)..(-4.602537x,42.872753y)..(-4.456090x,42.519200y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-9.506090x,40.419200y)--(-4.956090x,40.419200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-9.506090x,43.019200y)--(-4.956090x,43.019200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -9.506090% center->y = 40.919200% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-9.506090x,40.419200y)..(-9.859643x,40.565647y)..(-10.006090x,40.919200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -4.956090% center->y = 40.919200% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-4.456090x,40.919200y)..(-4.602537x,40.565647y)..(-4.956090x,40.419200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-10.006090x,40.919200y)--(-10.006090x,42.519200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-4.456090x,40.919200y)--(-4.456090x,42.519200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -9.506090% center->y = 42.519200% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-10.006090x,42.519200y)..(-9.859643x,42.872753y)..(-9.506090x,43.019200y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -4.956090% center->y = 42.519200% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-4.956090x,43.019200y)..(-4.602537x,42.872753y)..(-4.456090x,42.519200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Awaiting Ping } etex scaled 1.64t shifted (-7.231090x,41.514200y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} ACK} etex scaled 1.64t shifted (-7.231090x,42.314200y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-10.788265x,40.086479y)--(-15.183590x,38.216800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-10.886124x,40.316531y)--(-10.052100x,40.399628y)--(-10.690406x,39.856428y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-10.886124x,40.316531y)--(-10.052100x,40.399628y)--(-10.690406x,39.856428y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-14.424129x,39.498533y)--(-10.006090x,41.719200y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-14.311855x,39.275162y)--(-15.138916x,39.139255y)--(-14.536404x,39.721903y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-14.311855x,39.275162y)--(-15.138916x,39.139255y)--(-14.536404x,39.721903y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (-9.491700x,31.873400y)--(-9.491700x,33.673400y)--(-4.616700x,33.673400y)--(-4.616700x,31.873400y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -9.491700% center->y = 32.373400% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-9.491700x,31.873400y)..(-9.845253x,32.019847y)..(-9.991700x,32.373400y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -4.616700% center->y = 32.373400% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-4.116700x,32.373400y)..(-4.263147x,32.019847y)..(-4.616700x,31.873400y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (-9.991700x,32.373400y)--(-9.991700x,33.173400y)--(-4.116700x,33.173400y)--(-4.116700x,32.373400y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -9.491700% center->y = 33.173400% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-9.991700x,33.173400y)..(-9.845253x,33.526953y)..(-9.491700x,33.673400y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -4.616700% center->y = 33.173400% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-4.616700x,33.673400y)..(-4.263147x,33.526953y)..(-4.116700x,33.173400y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-9.491700x,31.873400y)--(-4.616700x,31.873400y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-9.491700x,33.673400y)--(-4.616700x,33.673400y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -9.491700% center->y = 32.373400% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-9.491700x,31.873400y)..(-9.845253x,32.019847y)..(-9.991700x,32.373400y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -4.616700% center->y = 32.373400% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-4.116700x,32.373400y)..(-4.263147x,32.019847y)..(-4.616700x,31.873400y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-9.991700x,32.373400y)--(-9.991700x,33.173400y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-4.116700x,32.373400y)--(-4.116700x,33.173400y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -9.491700% center->y = 33.173400% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-9.991700x,33.173400y)..(-9.845253x,33.526953y)..(-9.491700x,33.673400y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -4.616700% center->y = 33.173400% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-4.616700x,33.673400y)..(-4.263147x,33.526953y)..(-4.116700x,33.173400y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Command sent} etex scaled 1.64t shifted (-7.054200x,32.968400y);
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-10.578363x,32.488483y)--(-15.183590x,37.316800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-10.397456x,32.661031y)--(-10.026210x,31.909581y)--(-10.759270x,32.315935y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-10.397456x,32.661031y)--(-10.026210x,31.909581y)--(-10.759270x,32.315935y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-14.596927x,37.601717y)--(-9.991700x,32.773400y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-14.777834x,37.429169y)--(-15.149080x,38.180619y)--(-14.416020x,37.774265y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-14.777834x,37.429169y)--(-15.149080x,38.180619y)--(-14.416020x,37.774265y)--cycle
    withpen pencircle scaled 0.1000x;
% set_linewidth 0.100000
  path p;
  p = (-33.896700x,28.680000y)--(-33.896700x,30.480000y)--(-30.896700x,30.480000y)--(-30.896700x,28.680000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -33.896700% center->y = 29.180000% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-33.896700x,28.680000y)..(-34.250253x,28.826447y)..(-34.396700x,29.180000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -30.896700% center->y = 29.180000% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-30.396700x,29.180000y)..(-30.543147x,28.826447y)..(-30.896700x,28.680000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
  path p;
  p = (-34.396700x,29.180000y)--(-34.396700x,29.980000y)--(-30.396700x,29.980000y)--(-30.396700x,29.180000y)--cycle;
  fill p withcolor (1.000000,1.000000,1.000000);
%metapost_arc
% center->x = -33.896700% center->y = 29.980000% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-34.396700x,29.980000y)..(-34.250253x,30.333553y)..(-33.896700x,30.480000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
%metapost_arc
% center->x = -30.896700% center->y = 29.980000% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 1.000000, 1.000000, 1.000000
  draw (-30.896700x,30.480000y)..(-30.543147x,30.333553y)..(-30.396700x,29.980000y)
    withpen pencircle scaled 0.1000x
    withcolor (1.0000, 1.0000, 1.0000);
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-33.896700x,28.680000y)--(-30.896700x,28.680000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-33.896700x,30.480000y)--(-30.896700x,30.480000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -33.896700% center->y = 29.180000% width = 1.000000% height = 1.000000% angle1 = 90.000000% angle2 = 180.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-33.896700x,28.680000y)..(-34.250253x,28.826447y)..(-34.396700x,29.180000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -30.896700% center->y = 29.180000% width = 1.000000% height = 1.000000% angle1 = 0.000000% angle2 = 90.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-30.396700x,29.180000y)..(-30.543147x,28.826447y)..(-30.896700x,28.680000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-34.396700x,29.180000y)--(-34.396700x,29.980000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-30.396700x,29.180000y)--(-30.396700x,29.980000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -33.896700% center->y = 29.980000% width = 1.000000% height = 1.000000% angle1 = 180.000000% angle2 = 270.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-34.396700x,29.980000y)..(-34.250253x,30.333553y)..(-33.896700x,30.480000y)
    withpen pencircle scaled 0.1000x;
%metapost_arc
% center->x = -30.896700% center->y = 29.980000% width = 1.000000% height = 1.000000% angle1 = 270.000000% angle2 = 360.000000% set_line_color 0.000000, 0.000000, 0.000000
  draw (-30.896700x,30.480000y)..(-30.543147x,30.333553y)..(-30.396700x,29.980000y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw hcentered btex {\usefont{OT1}{phv}{m}{n} Idle} etex scaled 1.64t shifted (-32.396700x,29.775000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Command } etex scaled 1.64t shifted (-14.741700x,33.125000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} req sent} etex scaled 1.64t shifted (-14.741700x,33.925000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Command } etex scaled 1.64t shifted (-11.691700x,35.425000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} ACK rcvd} etex scaled 1.64t shifted (-11.691700x,36.225000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Close channel } etex scaled 1.64t shifted (-21.941700x,32.675000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} req sent} etex scaled 1.64t shifted (-21.941700x,33.475000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Request} etex scaled 1.64t shifted (-31.841700x,35.975000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  ACK rcvd} etex scaled 1.64t shifted (-31.841700x,36.775000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Set-up} etex scaled 1.64t shifted (-32.041700x,31.375000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  channel} etex scaled 1.64t shifted (-32.041700x,32.175000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Ping} etex scaled 1.64t shifted (-13.591700x,41.425000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} ACK rcvd} etex scaled 1.64t shifted (-13.591700x,42.225000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Ping } etex scaled 1.64t shifted (-12.291700x,38.325000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} req sent} etex scaled 1.64t shifted (-12.291700x,39.125000y);
% set_linewidth 0.100000
%metapost_arc
% center->x = -17.408590% center->y = 38.713798% width = 4.522405% height = 4.522405% angle1 = 190.266376% angle2 = 337.584126% set_line_color 0.000000, 0.000000, 0.000000
  draw (-19.633590x,39.116800y)..(-17.647884x,40.962303y)..(-15.318243x,39.576054y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-15.203516x,39.226813y)--(-15.046631x,39.763365y)--(-15.270350x,39.595810y)--(-15.538626x,39.674252y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-15.203516x,39.226813y)--(-15.046631x,39.763365y)--(-15.270350x,39.595810y)--(-15.538626x,39.674252y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Receive } etex scaled 1.64t shifted (-19.241700x,41.725000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} sensor data} etex scaled 1.64t shifted (-19.241700x,42.525000y);
% set_linewidth 0.100000
%metapost_arc
% center->x = -17.408590% center->y = 38.143326% width = 4.747113% height = 4.747113% angle1 = 31.968956% angle2 = 159.621367% set_line_color 0.000000, 0.000000, 0.000000
  draw (-15.395019x,36.886623y)..(-17.648253x,35.781900y)..(-19.633590x,37.316800y)
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
% fill_polygon
  path p;
  p = (-15.222522x,37.211994y)--(-15.630987x,36.830344y)--(-15.353106x,36.860465y)--(-15.162281x,36.656233y)--cycle;
  fill p 
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw (-15.222522x,37.211994y)--(-15.630987x,36.830344y)--(-15.353106x,36.860465y)--(-15.162281x,36.656233y)--cycle
    withpen pencircle scaled 0.1000x;
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} Ping } etex scaled 1.64t shifted (-20.046700x,34.975000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} rcvd} etex scaled 1.64t shifted (-20.046700x,35.775000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n} PACK} etex scaled 1.64t shifted (-16.596700x,35.025000y);
% set_line_color 0.000000, 0.000000, 0.000000
  draw btex {\usefont{OT1}{phv}{m}{n}  sent} etex scaled 1.64t shifted (-16.596700x,35.825000y);
endfig;
end;
