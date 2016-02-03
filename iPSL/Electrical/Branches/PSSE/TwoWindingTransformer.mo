﻿within iPSL.Electrical.Branches.PSSE;
model TwoWindingTransformer "Static Two-winding transformer according to PSS/E, without phase shift"
  iPSL.Connectors.PwPin p annotation (Placement(transformation(extent={{-80,-8},{-60,12}}), iconTransformation(extent={{-80,-8},{-60,12}})));
  iPSL.Connectors.PwPin n annotation (Placement(transformation(extent={{60,-8},{80,12}}), iconTransformation(extent={{60,-8},{80,12}})));
  parameter Real R "Resistance p.u.";
  parameter Real X "Reactance p.u.";
  parameter Real G "Shunt conductance p.u.";
  parameter Real B "Shunt susceptance p.u.";
  parameter Real t1 "Primary winding tap ratio";
  parameter Real t2 "Secondary winding tap ratio";
  parameter Boolean PrimaryOnFromSide "Is the primary winding on the From-side?";
protected
  parameter Real t=if PrimaryOnFromSide then t1/t2 else t2/t1;
  parameter Real x=if t1 >= t2 then t2 else t1;
  parameter Real Req=R*x*x;
  parameter Real Xeq=X*x*x;
equation
  p.ir = 1/(Req*Req + Xeq*Xeq)*(Req*(t*t*p.vr - t*n.vr) + Xeq*(t*t*p.vi - t*n.vi));
  p.ii = 1/(Req*Req + Xeq*Xeq)*(Req*(t*t*p.vi - t*n.vi) - Xeq*(t*t*p.vr - t*n.vr));
  n.ir = (-1/t*(1/(Req*Req + Xeq*Xeq)*(Req*(t*t*p.vr - t*n.vr) + Xeq*(t*t*p.vi - t*n.vi)))) + G*n.vr - B*n.vi;
  n.ii = (-1/t*(1/(Req*Req + Xeq*Xeq)*(Req*(t*t*p.vi - t*n.vi) - Xeq*(t*t*p.vr - t*n.vr)))) + G*n.vi + B*n.vr;
  annotation (
    Icon(graphics={Rectangle(extent={{-60,40},{60,-40}}, lineColor={0,0,255}),Ellipse(
          extent={{-26,16},{6,-16}},
          lineColor={0,0,255},
          lineThickness=1),Ellipse(
          extent={{-8,16},{24,-16}},
          lineColor={0,0,255},
          lineThickness=1),Line(
          points={{-42,0},{-26,0}},
          color={0,0,255},
          thickness=1,
          smooth=Smooth.None),Line(
          points={{24,0},{40,0}},
          color={0,0,255},
          thickness=1,
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
end TwoWindingTransformer;
