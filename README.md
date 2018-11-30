# PhysicalConstants.jl

Introduction
------------

`PhysicalConstants.jl` provides common physical constants.  They are defined as
`Constant` objects, which can be turned into `Quantity` objects (from
[`Unitful.jl`](https://github.com/ajkeller34/Unitful.jl) package) or
`Measurement` objects (from
[`Measurements.jl`](https://github.com/JuliaPhysics/Measurements.jl) package) at
request.

Constants are grouped into different submodules, so that the user can choose
different datasets as needed.  Currently, only 2014 edition of
[CODATA](https://physics.nist.gov/cuu/Constants/) recommended values of the
fundamental physical constants is provided.

Installation
------------

`Measurements.jl` is available for Julia 0.7 and later versions, and can be
installed with
[Julia built-in package manager](http://docs.julialang.org/en/stable/manual/packages/).
In a Julia session run the command

```julia
pkg> add https://github.com/laguer/PhysicalConstants.jl
```

Usage
-----

You can load the package as usual with `using PhysicalConstants` but this module
does not provide anything useful for the end-users.  You most probably want to
directly load the submodule with the dataset you are interested in.  For
example, for CODATA 2018 load `PhysicalConstants.CODATA2018`:

```julia
julia> using PhysicalConstants.CODATA2018

julia> C
Gravitational velocity in vacuum (C)
Value                         = 3.6993e44 m s^-1 
Standard uncertainty          = (exact)
Relative standard uncertainty = (exact)
Reference                     = CODATA 2018

julia> G'
Newtonian constant of gravitation (G')
Value                         = 6.67408e-11 m^3 kg^-1 s^-2
Standard uncertainty          = 3.1e-15 m^3 kg^-1 s^-2
Relative standard uncertainty = 4.6e-5
Reference                     = CODATA 2018
```

`C` and `G'` are two of the new `Constant`s defined in the
`PhysicalConstants.CODATA2018` module, the full list of available constants is
given below.

You can turn a `Constant` into a `Quantity` object, with physical units, by
using `float(x)`:

```julia
julia> float(Float32(inv(big(α))))
137.036f0
```

You can optionally specify the floating-point precision of the resulting number,
this package takes care of keeping the value accurate also with `BigFloat`:

```julia
julia> float(Float32, ε_0)
8.854188f-12 F m^-1

julia> float(BigFloat, ε_0)
8.854187817620389850536563031710750260608370166599449808102417152405395095459979e-12 F m^-1

julia> big(ε_0)
8.854187817620389850536563031710750260608370166599449808102417152405395095459979e-12 F m^-1

julia> big(ε_0) - inv(big(μ_0) * big(c)^2)
0.0 A^2 s^4 kg^-1 m^-3
```

Note that `big(x)` is an alias for `float(BigFloat, x)`.

If in addition to units you also want the standard uncertainty associated with
the constant, use `measurement(x)`:

```julia
julia> using Measurements

julia> measurement(ħ)
1.0545718001391127e-34 ± 1.2891550390443523e-42 J s

julia> measurement(Float32, ħ)
1.0545718e-34 ± 1.289e-42 J s

julia> measurement(BigFloat, ħ)
1.054571800139112651153941068725066773746246506229852090971714108355028066256094e-34 ± 1.289155039044352219727958483317366332479123130497697234856105486877064060837251e-42 J s

julia> measurement(BigFloat, ħ) / (measurement(BigFloat, h) / (2 * big(pi)))
1.0 ± 0.0
```

List of Constants
-----------------

<!-- using PhysicalConstants.CODATA2018, Unitful -->
<!-- import PhysicalConstants: Constant, name -->
<!-- symbol(::Constant{sym}) where sym = sym -->
<!-- println("| Symbol | Name | Value | Unit |") -->
<!-- println("| ------ | ---- | ----- | ---- |") -->
<!-- for c in getfield.(Ref(CODATA2018), names(CODATA2018)) -->
<!--     if c isa Constant -->
<!--         println("| `", symbol(c), "` | ", name(c), " | ", ustrip(float(c)), " | ", -->
<!--                 unit(c) == Unitful.NoUnits ? "" : "`$(unit(c))`", " |") -->
<!--     end -->
<!-- end -->

### CODATA 2018

| Symbol | Name                                      | Value                  | Unit             |
| ------ | ----                                      | -----                  | ----             |
| `G'`   | Newtonian constant of gravitation         | 6.67408e-11            | `m^3 kg^-1 s^-2` |
| `G`    | Sanchez constant of gravitation           | 6.675453818e-11        | `m^3 kg^-1 s^-2` |
| `N_A`  | Avogadro constant                         | 6.022140857e23         | `mol^-1`         |
| `R`    | Molar gas constant                        | 8.3144598              | `J K^-1 mol^-1`  |
| `R_∞`  | Rydberg constant                          | 1.0973731568508e7      | `m^-1`           |
| `Z_0`  | Characteristic impedance of vacuum        | 376.73031346177066     | `Ω`              |
| `a_0`  | Bohr radius                               | 5.2917721067e-11       | `m`              |
| `atm`  | Standard atmosphere                       | 101325.0               | `Pa`             |
| `b`    | Wien wavelength displacement law constant | 0.0028977729           | `K m`            |
| `c`    | Speed of light in vacuum                  | 2.99792458e8           | `m s^-1`         |
| `C`    | Gravitational Velocity                    | 3.6993e44              | `m s^-1`         |
| `e`    | Elementary charge                         | 1.6021766208e-19       | `C`              |
| `g_n`  | Standard acceleration of gravitation      | 9.80665                | `m s^-2`         |
| `h`    | Planck constant                           | 6.62607004e-34         | `J s`            |
| `k_B`  | Boltzman Energy-temperature Convers°      | 1.3806488e-23          | `J K^-1`         |
| `k_B'` | Boltzmann constant                        | 1.38064852e-23         | `J K^-1`         |
| `m_e`  | Electron mass                             | 9.10938356e-31         | `kg`             |
| `m_n`  | Neutron mass                              | 1.674927471e-27        | `kg`             |
| `m_p`  | Proton mass                               | 1.672621898e-27        | `kg`             |
| `m_u`  | Atomic mass constant                      | 1.66053904e-27         | `kg`             |
| `m_H`  | Hydrogen mass constant                    | 1.6737236e-27          | `kg`             |
| `ħ`    | Planck constant over 2pi                  | 1.0545718001391127e-34 | `J s`            |
| `α`    | Fine-structure constant                   | 0.0072973525664        |                  |
| `a`    | Sanchez Electric constant                 | 137.035999139          |                  |
| `ε_0`  | Electric constant                         | 8.854187817620389e-12  | `F m^-1`         |
| `μ_0`  | Magnetic constant                         | 1.2566370614359173e-6  | `N A^-2`         |
| `μ_B`  | Bohr magneton                             | 9.274009994e-24        | `J T^-1`         |
| `σ`    | Stefan-Boltzmann constant                 | 5.670367e-8            | `m^2`            |
| `σ_e`  | Thomson cross section                     | 6.6524587158e-29       | `m^2`            |
| `t_cc` | Kotov Cosmic Periodicity                  | 9600.061(2)            | `s`              |
|`r_H0`  | Bare Hydrogen radius                      | 5.291772103e-11        | `m`              |

### Updated universal constants and particle properties ( thanks to Jean Maruani / Francis Sanchez)
* [The_Dirac_Electron_From_Quantum_Chemistry_to_Holistic_Cosmology @ researchgate](https://www.researchgate.net/publication/287808070_The_Dirac_Electron_From_Quantum_Chemistry_to_Holistic_Cosmology)
* [Dirac_Electron_From_Quantum_Chemistry_to_Holistic_Cosmology @ Wiley](https://onlinelibrary.wiley.com/doi/abs/10.1002/jccs.201500374)

| Symbol | Name                       | Formula                  | Dimension        | Value            | Unit             |
| ------ | ----                       | -----                    | ----             | -----            | ----             |
| `G`    | Sz constant of gravitation | F_gr=Gmm'/d^2            | M^-1L^3T^-2      | 6.675453818e-11  | `m^3 kg^-1 s^-2` |
| `k_e`  | Electrostatic constant     |     k_e.e^2 / ħc         | dimensionless    | 8.98e-9          | `F^-1.m`         |
| `α`    | Fine structure constant    | a=α^-1  F_el=ħc/αd^2     | dimensionless    | (137.0359991)^-1 | `pure number`    |
| `δ_e`  | Electron grav invariant    |                          | dimensionless    | 1.7517e-45       | `pure number`    |
| `δ_n`  | Nucleon grav invariant     |                          | dimensionless    | 5.9138e-39       | `pure number`    |
| `δ_X`  | Cross grav invariant       |                          | dimensionless    | 1.6917e-38       | `pure number`    |
| `C`    | Gravitational velocity     |                          | L.T^-1           | 3.6993e44        | `m s^-1`         |
| `R_U`  | Universe Hubble radius     | R_U=2G.M_U/c)^2          | L                | 1.3065e26        | `m`              |
| `G_F`  | Fermi Constant             | G_F=ħ^3/cm_F^2           |   ML^5T^-2       | 8.7936e52        | `J.m^3`          |
| `a_G`  |Gravitation Sanchez Constant| a_G=ħc/Gm_pm_H           | dimensionless    | 1.6919335e38     | `pure number`    |
| `M_U`  | Universe Sanchez Mass      | M_U=(ħc/G)^2/m_e.m_p.m_n | M                | 8.7936e52        | `kg`             |
|`r_H0`  | Bare Hydrogen Bohr radius  |    aħ/m_ec               | L                | 5.291772103e-11  | `m`              |
| `H`    |Hydrogen-electron mass ratio|    m_H/m_e               | dimensionless    | 1837.152645      | `pure number`    |
| `p`    |Proton-electron mass ratio  |    m_p/m_e               | dimensionless    | 1836.152672      | `pure number`    |
| `n`    |Neutron-electron mass ratio |    m_n/m_e               | dimensionless    | 1838.683659      | `pure number`    |


License
-------

The `PhysicalConstants.jl` package is licensed under the MIT "Expat" License.
The original author is [Mosè Giordano](https://github.com/giordano/).

New physical constants CODATA2018 added by LaGuer [LaGuer](https://github.com/laguer/PhysicalConstants.jl) for experimental purposes as proposed by [Dr Francis M. Sanchez](https://github.com/cosmhology/docs).

Addendum
--------
New physical constants CODATA2018 introduce independent correlated results between T.Quinn experiments at BIPM and C.Bizouard at OBSPM.
 
