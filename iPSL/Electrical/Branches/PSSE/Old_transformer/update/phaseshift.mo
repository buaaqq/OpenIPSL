﻿within iPSL.Electrical.Branches.PSSE.Old_transformer.update;
model phaseshift
  constant Real pi=Modelica.Constants.pi;
  iPSL.Connectors.PwPin T annotation (Placement(transformation(extent={{76,-2},{96,18}}), iconTransformation(extent={{76,-2},{96,18}})));
  iPSL.Connectors.PwPin F annotation (Placement(transformation(extent={{-102,-2},{-82,18}}), iconTransformation(extent={{-102,-2},{-82,18}})));
  parameter Real phase " From side and To side phase shift in degree";
protected
  parameter Real A=(-phase*pi/180) + 0.5*pi;
equation
  [T.ir; T.ii] = -[sin(A), cos(A); -cos(A), sin(A)]*[F.ir; F.ii];
  [T.vr; T.vi] = [sin(A), cos(A); -cos(A), sin(A)]*[F.vr; F.vi];
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}}), graphics),
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}}), graphics={Rectangle(extent={{-90,48},{92,-34}}, lineColor={0,0,255}),Text(
          extent={{-70,36},{-26,-20}},
          lineColor={0,0,255},
          lineThickness=0.5,
          textString="t"),Text(
          extent={{-34,36},{10,-20}},
          lineColor={0,0,255},
          lineThickness=0.5,
          textString=":"),Ellipse(
          extent={{-28,14},{-22,-2}},
          lineColor={0,0,255},
          lineThickness=0.5),Line(
          points={{-30,14},{-38,-2},{-28,-2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None),Line(
          points={{-28,6},{-22,6},{-22,6}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None),Text(
          extent={{-18,34},{26,-22}},
          lineColor={0,0,255},
          lineThickness=0.5,
          textString="1"),Ellipse(
          extent={{22,14},{28,-2}},
          lineColor={0,0,255},
          lineThickness=0.5),Line(
          points={{20,14},{12,-2},{22,-2}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None)}),
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
end phaseshift;
