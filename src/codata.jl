module CODATA

using PhysicalConstants, Unitful, Measurements

import PhysicalConstants: @constant, @derived_constant

@constant(m_e, "Electron mass", 9.109_383_56e-31,
          BigFloat(910_938_356)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 1.1e-38,
          BigFloat(11)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA ")
@constant(m_h, "Hydrogen mass", 1.673_723_600e-27,
          BigFloat(1673_723_600)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA ")
@constant(m_n, "Neutron mass", 1.674_927_471e-27,
          BigFloat(1674_927_471)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA ")
@constant(m_p, "Proton mass", 1.672_621_898e-27,
          BigFloat(1672_621_898)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA ")
@constant(m_m, "Muon mass", 1.836_152_67e-28,
          BigFloat(1836_152_67)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA ")
@constant(m_t, "Tau mass", 3.167_735_502e-27,
          BigFloat(3167_735_502)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.1e-35,
          BigFloat(21)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA 2018")
@constant(m_u, "Atomic mass constant", 1.660_539_040e-27,
          BigFloat(1660_539_040)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          u"kg", 2.0e-35,
          BigFloat(20)/BigFloat(1000_000_000_000_000_000_000_000_000_000_000_000),
          "CODATA ")

end
