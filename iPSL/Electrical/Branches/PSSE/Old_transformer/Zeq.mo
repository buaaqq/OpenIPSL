﻿within iPSL.Electrical.Branches.PSSE.Old_transformer;
model Zeq "Transformer equivalent impedance"
  iPSL.Connectors.PwPin p annotation (Placement(transformation(extent={{-80,-10},{-60,10}}), iconTransformation(extent={{-80,-10},{-60,10}})));
  iPSL.Connectors.PwPin n annotation (Placement(transformation(extent={{60,-10},{80,10}}), iconTransformation(extent={{60,-10},{80,10}})));
  parameter Real R "Resistance p.u.";
  parameter Real X "Reactance p.u.";
  Modelica.Blocks.Interfaces.RealInput t(start=1) annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={82,50}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=180,
        origin={60,40})));
equation
  t*(R*n.ir - X*n.ii) = n.vr - p.vr*t;
  t*(R*n.ii + X*n.ir) = n.vi - p.vi*t;
  -(R*p.ir - X*p.ii) = n.vr - p.vr*t;
  -(R*p.ii + X*p.ir) = n.vi - p.vi*t;
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={Rectangle(extent={{-60,40},{60,-42}}, lineColor={0,0,255}),Rectangle(
          extent={{-36,8},{32,-6}},
          lineColor={0,0,255},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,100}}), graphics),
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
end Zeq;
