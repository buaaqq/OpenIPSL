﻿within iPSL.Electrical.Wind.GE.Type_3.Turbine;
block Multi_Powers "Multiplexer block for four input connectors"
  extends Modelica.Blocks.Interfaces.BlockIcon;
  Modelica.Blocks.Interfaces.RealInput u1 "Input" annotation (Placement(transformation(extent={{-140,70},{-100,110}}, rotation=0)));
  Modelica.Blocks.Interfaces.RealOutput y[5] "Multiple powers of the input" annotation (Placement(transformation(extent={{100,-10},{120,10}}, rotation=0)));
protected
  Real u2;
  Real u3;
  Real u4;
equation
  u2 = u1^2;
  u3 = u1^3;
  u4 = u1^4;
  [y] = [1; u1; u2; u3; u4];
  annotation (
    Documentation(info="<HTML>
<p>
The output connector is the <b>concatenation</b> of the four input connectors.
Note, that the dimensions of the input connector signals have to be
explicitly defined via parameters n1, n2, n3 and n4.
</p>
</HTML>
", revisions="<!--DISCLAIMER-->
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
</html>"),
    Icon(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics={Line(points={{8,0},{102,0}}, color={0,0,127}),Line(points={{-100,90},{-60,90},{-3,4}}, color={0,0,127}),Line(points={{-100,30},{-60,30},{-9,0}}, color={0,0,127}),Line(
          points={{-99,-30},{-59,-30},{-10,-5}}, color={0,0,127}),Line(points={{-100,-90},{-60,-90},{-5,-6}}, color={0,0,127}),Ellipse(
          extent={{-15,15},{15,-15}},
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,127})}),
    Diagram(coordinateSystem(
        preserveAspectRatio=true,
        extent={{-100,-100},{100,100}},
        grid={1,1}), graphics={Line(points={{-100,90},{-60,90},{-3,4}}, color={0,0,255}),Line(points={{-100,-90},{-60,-90},{-5,-6}}, color={0,0,255}),Line(points={{8,0},{102,0}}, color={0,0,255}),
          Ellipse(
          extent={{-15,15},{15,-15}},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,255}),Line(points={{-100,30},{-60,30},{-9,0}}, color={0,0,255}),Line(points={{-99,-30},{-59,-30},{-10,-5}}, color={0,0,255})}));
end Multi_Powers;
