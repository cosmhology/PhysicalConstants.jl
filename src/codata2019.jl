module CODATA2019

using PhysicalConstants, Unitful, Measurements

import PhysicalConstants: @constant, @derived_constant

@constant(C, "Gravitational velocity in vacuum", 3.699_3e44, BigFloat(369_930_000_000_000_000_000_000_000_000_000_000_000_000_000), u"m/s",
          0.0, BigFloat(0), "CODATA 2019")
@constant(c, "Speed of light in vacuum", 299_792_458.0, BigFloat(299_792_458.0), u"m/s",
          0.0, BigFloat(0), "CODATA 2019")
#@constant(t, "Cosmic Temperature", 2.725820831,
#          BigFloat(272_582_083.1), u"K",
#          0.0, BigFloat(0), "CODATA 2019")
@constant(µ_0, "Magnetic constant", 1.2566370614359173e-6, 4*big(pi)/BigFloat(10_000_000),
          u"N * A^-2", 0.0, BigFloat(0.0), "CODATA 2018")
@constant(ε_0, "Electric constant", 8.854187817620389e-12,
          inv(ustrip(big(µ_0)) * ustrip(big(c))^2), u"F * m^-1",
          0.0, BigFloat(0.0), "CODATA 2019")
@constant(e, "Elementary charge", 1.602_176_6208e-19,
          big(16_021_766_208)/100_000_000_000_000_000_000_000_000_000,
          u"C", 9.8e-28, big(98)/100_000_000_000_000_000_000_000_000_000, "CODATA 2019")
@constant(Gg, "Newtonian constant of gravitation", 6.674_08e-11,
          big(667_408)/big(10_000_000_000_000_000), u"m^3 * kg^-1 * s^-2",
          3.1e-15, big(31)/big(10_000_000_000_000_000), "CODATA 2019")
@constant(G, "Sanchez constant of gravitation", 6.675_45e-11,
          big(667_545)/big(10_000_000_000_000_000), u"m^3 * kg^-1 * s^-2",
          3.1e-15, big(31)/big(10_000_000_000_000_000), "CODATA 2019")
@constant(g_n, "Standard acceleration of gravitation", 9.806_65, big(980_665)/big(100_000),
          u"m * s^-2", 0, 0, "CODATA 2019")
@constant(h, "Planck constant", 6.626_070_040e-34,
          6_626_070_040/10_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
          u"J*s", 8.1e-42, 81/10_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
          "CODATA 2018")
@derived_constant(ħ, "Planck constant over 2pi", 1.0545718001391127e-34,
                  ustrip(big(h))/(2 * big(pi)), u"J*s", measurement(h)/2pi,
                  measurement(BigFloat, h)/(2 * big(pi)), "CODATA 2019")
@constant(m_e, "Electron mass", 9.109_383_56e-31,
          BigFloat(910_938_356)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 1.1e-38,
          BigFloat(11)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA 2019")
@constant(m_h, "Hydrogen mass", 1.673_723_600e-27,
          BigFloat(1673_723_600)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA 2019")
@constant(m_n, "Neutron mass", 1.674_927_471e-27,
          BigFloat(1674_927_471)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA 2019")
@constant(m_p, "Proton mass", 1.672_621_898e-27,
          BigFloat(1672_621_898)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA 2019")
@constant(m_m, "Muon mass", 1.836_152_67e-28,
          BigFloat(1836_152_67)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA 2019")
@constant(m_t, "Tau mass", 3.167_735_502e-27,
          BigFloat(3167_735_502)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA 2019")
@constant(m_u, "Atomic mass constant", 1.660_539_040e-27,
          BigFloat(1660_539_040)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.0e-35,
          BigFloat(20)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA 2019")
end
