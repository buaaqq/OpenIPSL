﻿within iPSL.Electrical.Branches.PSAT.ThreeWindingTransformer;
model Branch2
  iPSL.Connectors.PwPin p2 annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  iPSL.Connectors.PwPin n2 annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  parameter Real SystemBase=100;
  parameter Real Sn=100 "Power rating MVA";
  parameter Real Vbus=400000 "Sending end bus voltage, V";
  parameter Real Vn1=400000 "Voltage rating of the first winding, V";
  parameter Real Vn2=100000 "Voltage rating of the second winding, V";
  parameter Real Vn3=40000 "Voltage rating of the third winding, V";
  parameter Real fn=50 "Frequency rating Hz";
  parameter Real R12=0.01 "Resistance of the branch 1-2, p.u.";
  parameter Real R13=0.01 "Resistance of the branch 1-3, p.u.";
  parameter Real R23=0.01 "Resistance of the branch 2-3, p.u.";
  parameter Real X12=0.1 "Reactance of the branch 1-2, p.u.";
  parameter Real X13=0.1 "Reactance of the branch 1-3, p.u.";
  parameter Real X23=0.1 "Reactance of the branch 232, p.u.";
  parameter Real m=0.98 "Fixed Tap ratio";
  Real r2;
  Real x2;
equation
  r2 = 0.5*(R12 + R23 - R13);
  x2 = 0.5*(X12 + X23 - X13);
  r2*p2.ir - x2*p2.ii = p2.vr - n2.vr;
  r2*p2.ii + x2*p2.ir = p2.vi - n2.vi;
  r2*n2.ir - x2*n2.ii = n2.vr - p2.vr;
  x2*n2.ir + r2*n2.ii = n2.vi - p2.vi;
  annotation (Documentation(info="", revisions="<!--DISCLAIMER-->
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
end Branch2;
