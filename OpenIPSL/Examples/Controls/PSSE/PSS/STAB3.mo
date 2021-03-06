within OpenIPSL.Examples.Controls.PSSE.PSS;
model STAB3
  "Simple Machine Infinite Bus with Machine, Governor and Excitation system"
  extends OpenIPSL.Examples.SMIBpartial;
  OpenIPSL.Electrical.Machines.PSSE.GENSAL generator(
    Xppd=0.2,
    Xppq=0.2,
    Xl=0.12,
    V_0=1,
    angle_0=4.05,
    P_0=39.99995,
    Q_0=5.416571,
    M_b=100,
    Tpd0=6.7000,
    Tppd0=0.28000E-01,
    Tppq0=0.35000E-01,
    H=4.4100,
    D=0,
    Xd=1.2200,
    Xq=0.76000,
    Xpd=0.29700,
    S10=0.18600,
    S12=0.802)
    annotation (Placement(transformation(extent={{-106,-12},{-78,14}})));
  OpenIPSL.Electrical.Controls.PSSE.TG.HYGOV HYGOV(VELM=0.02, G_MAX=0.415)
    annotation (Placement(transformation(
        extent={{-19,-14},{19,14}},
        rotation=180,
        origin={-83,30})));
  OpenIPSL.Electrical.Controls.PSSE.ES.SCRX SCRX(
    T_AT_B=0.01,
    T_B=10,
    K=100,
    T_E=0.05,
    E_MIN=0,
    E_MAX=5,
    r_cr_fd=0,
    C_SWITCH=false) annotation (Placement(transformation(
        extent={{-18,-16},{18,16}},
        rotation=180,
        origin={-94,-36})));
  Modelica.Blocks.Sources.Constant const(k=0) annotation (Placement(
        transformation(
        extent={{-2,-2},{2,2}},
        rotation=180,
        origin={-68,-34})));
equation
  connect(SCRX.VUEL, const.y) annotation (Line(
      points={{-82.3,-16.4444},{-71.67,-16.4444},{-71.67,-34},{-70.2,-34}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(SCRX.VOEL, const.y) annotation (Line(
      points={{-87.7,-16.4444},{-71.67,-16.4444},{-71.67,-34},{-70.2,-34}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(generator.EFD0, SCRX.EFD0) annotation (Line(
      points={{-76.88,-8.1},{-74,-8.1},{-74,-22.6667},{-76,-22.6667}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(generator.XADIFD, SCRX.XADIFD) annotation (Line(points={{-76.88,-10.7},
          {-70,-10.7},{-70,-28},{-76,-28}}, color={0,0,127}));
  connect(SCRX.ECOMP, generator.ETERM) annotation (Line(points={{-76,-34.2222},
          {-66,-34.2222},{-66,7.5},{-76.88,7.5}}, color={0,0,127}));
  connect(generator.SPEED, HYGOV.SPEED) annotation (Line(points={{-76.88,12.7},
          {-58,12.7},{-58,23},{-64.475,23}}, color={0,0,127}));
  connect(generator.PMECH0, HYGOV.PMECH0) annotation (Line(points={{-76.88,-2.9},
          {-64,-2.9},{-64,10},{-48,10},{-48,37},{-64.475,37}}, color={0,0,127}));
  connect(HYGOV.PMECH, generator.PMECH) annotation (Line(points={{-102.95,30},{
          -112,30},{-112,7.5},{-105.72,7.5}}, color={0,0,127}));
  connect(generator.EFD, SCRX.EFD) annotation (Line(points={{-105.72,-5.5},{-116,
          -5.5},{-116,-34.2222},{-112.9,-34.2222}}, color={0,0,127}));
  connect(SCRX.VOTHSG, const.y) annotation (Line(points={{-76,-42.2222},{-74,-42.2222},
          {-74,-36},{-71.67,-36},{-71.67,-34},{-70.2,-34}}, color={0,0,127}));
  connect(generator.p, GEN1.p) annotation (Line(points={{-76.6,1},{-58.3,1},{-58.3,
          0},{-40,0}}, color={0,0,255}));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-120},{
            100,80}})),
    Icon(coordinateSystem(extent={{-100,-120},{100,80}})),
    Documentation);
end STAB3;
