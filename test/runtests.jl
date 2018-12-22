# using Base.Test
#include("../src/RunTests.jl")

using PhysicalConstant, Measurements, Unitful
if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

using PhysicalConstant.CODATA2019

@testset begin
    @test ustrip(big(h)) == big"6.626070040e-34"
    @test setprecision(BigFloat, 768) do; precision(ustrip(big(c))) end == 768
    @test measurement(h) === measurement(h)
    @test iszero(measurement(α) - measurement(α))
    @test isone(measurement(BigFloat, atm) / measurement(BigFloat, atm))
    @test iszero(measurement(BigFloat, ħ) - (measurement(BigFloat, h) / 2big(pi)))
    @test isone(measurement(BigFloat, ħ) / (measurement(BigFloat, h) / 2big(pi)))
end
