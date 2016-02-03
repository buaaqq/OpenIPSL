﻿within iPSL.Electrical.Sensors.Eurostag;
model PwActivePower "Active Power sensor. This model has been built assuming that the three
  non-Fortescue phases are identical and thus the only non-zero component
  for the Fortescue sequence is the positive. The output is the 3-phase active
   power which is equal to the positive sequence active power.Developed by AIA. 2014/03/10"
  parameter String UNIT="SNREF";
  parameter Real SNREF=100;
  parameter Real SN=1150;
  parameter Real PN=1000;
  parameter Real PNALT=1100;
  parameter Real QNALT=sqrt(SN*SN - PN*PN);
  parameter Real PUI=if UNIT == "MW" then 1 elseif UNIT == "SNREF" then SNREF elseif UNIT == "SN" then SN elseif UNIT == "PN" then PN elseif UNIT == "PNALT" then PNALT else QNALT;
  iPSL.Connectors.PwPin p annotation (Placement(transformation(extent={{-60,-10},{-40,10}}), iconTransformation(extent={{-60,-10},{-40,10}})));
  Modelica.Blocks.Interfaces.RealOutput sortie annotation (Placement(transformation(extent={{39,-32},{59,-12}}), iconTransformation(extent={{39,-32},{59,-12}})));
  iPSL.Connectors.PwPin n annotation (Placement(transformation(extent={{40,12},{60,32}}), iconTransformation(extent={{40,12},{60,32}})));
equation
  n.vr = p.vr;
  n.vi = p.vi;
  n.ir = -p.ir;
  n.ii = -p.ii;
  sortie = (p.vr*p.ir + p.vi*p.ii)*SNREF/PUI;
  annotation (
    Icon(graphics={Rectangle(extent={{-40,40},{40,-40}}, lineColor={0,0,255}),Rectangle(extent={{-30,32},{30,-32}}, lineColor={0,0,255}),Rectangle(extent={{-20,20},{20,0}}, lineColor={0,0,255}),Text(
          extent={{-26,-12},{-6,-28}},
          lineColor={0,0,255},
          textStyle={TextStyle.Bold},
          textString="P"),Line(
          points={{0,0},{10,10}},
          color={0,0,255},
          smooth=Smooth.None)}),
    Diagram(graphics),
    Documentation(info="", revisions="<!--DISCLAIMER-->
<html>
<p>Copyright 2015 RTE (France), SmarTS Lab (Sweden), AIA (Spain) and DTU (Denmark)</p>
<p>​- ​RTE: http://www.rte-france.com/</p>
<p>- SmarTS Lab, research group at KTH: https://www.kth.se/en</p>
<p>​- ​AIA: http://www.aia.es/en/energy/</p>
<p>​- ​DTU: http://www.dtu.dk/english</p>
<p>The authors can be contacted by email: info@itesla-ipsl.org </p>
<p>​</p>
<p>​​This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/.</p>
</html>"));
end PwActivePower;
