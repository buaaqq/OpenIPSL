within Tutorial.Example_1.Generator;
partial model Step_2
  extends OpenIPSL.Interfaces.Generator;

  OpenIPSL.Electrical.Controls.PSAT.AVR.AVRtypeIII avr(
    vfmax=7,
    vfmin=-6.40,
    K0=200,
    T2=1,
    T1=1,
    Te=0.0001,
    Tr=0.015) annotation (Placement(transformation(extent={{-52,-6},{-12,34}})));
  Modelica.Blocks.Sources.Constant pss_off(k=0) annotation (Placement(transformation(extent={{-100,-4},{-80,16}})));
  OpenIPSL.Electrical.Machines.PSAT.Order6 machine(
    Vn=400,
    ra=0.003,
    xd=1.81,
    xq=1.76,
    xd1=0.3,
    xq1=0.65,
    xd2=0.23,
    xq2=0.25,
    Td10=8,
    Tq10=1,
    Td20=0.03,
    Tq20=0.07,
    Taa=0.002,
    M=7,
    D=0,
    Sn=2220,
    V_b=V_b,
    V_0=V_0,
    angle_0=angle_0,
    P_0=P_0,
    Q_0=Q_0) annotation (Placement(transformation(extent={{20,-30},{80,30}})));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Rectangle(
          extent={{-64,42},{-2,-12}},
          lineColor={255,0,0},
          lineThickness=1),
        Text(
          extent={{-96,104},{94,86}},
          lineColor={0,0,0},
          lineThickness=1,
          fillPattern=FillPattern.Solid,
          fontSize=15,
          textStyle={TextStyle.Bold},
          textString="Step 2: AVR model and parameters"),
        Text(
          extent={{-82,56},{20,40}},
          lineColor={0,0,0},
          lineThickness=1,
          fillPattern=FillPattern.Solid,
          fontSize=12,
          textString="Electrical.Controls.PSAT.AVR.AVRtypeIII"),
        Text(
          extent={{-138,-14},{-36,-30}},
          lineColor={0,0,0},
          lineThickness=1,
          fillPattern=FillPattern.Solid,
          fontSize=12,
          textString="Modelica.Blocks.Sources.Constant"),
        Rectangle(
          extent={{-108,24},{-74,-12}},
          lineColor={255,0,0},
          lineThickness=1)}), Documentation(revisions="<html>
<!--DISCLAIMER-->
<p>OpenIPSL:</p>
<p>Copyright 2016 SmarTS Lab (Sweden)</p>
<ul>
<li>SmarTS Lab, research group at KTH: <a href=\"https://www.kth.se/en\">https://www.kth.se/en</a></li>
</ul>
<p>The authors can be contacted by email: <a href=\"mailto:luigiv@kth.se\">luigiv@kth.se</a></p>

<p>This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at <a href=\"http://mozilla.org/MPL/2.0/\"> http://mozilla.org/MPL/2.0</a>.</p>

<p></p>
<p>iPSL:</p>
<p>Copyright 2015-2016 RTE (France), SmarTS Lab (Sweden), AIA (Spain) and DTU (Denmark)</p>
<ul>
<li>RTE: <a href=\"http://www.rte-france.com\">http://www.rte-france.com</a></li>
<li>SmarTS Lab, research group at KTH: <a href=\"https://www.kth.se/en\">https://www.kth.se/en</a></li>
<li>AIA: <a href=\"http://www.aia.es/en/energy\"> http://www.aia.es/en/energy</a></li>
<li>DTU: <a href=\"http://www.dtu.dk/english\"> http://www.dtu.dk/english</a></li>
</ul>
<p>The authors can be contacted by email: <a href=\"mailto:info@itesla-ipsl.org\">info@itesla-ipsl.org</a></p>

<p>This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at <a href=\"http://mozilla.org/MPL/2.0/\"> http://mozilla.org/MPL/2.0</a>.</p>
</html>
"));
end Step_2;
