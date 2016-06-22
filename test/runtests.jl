using Sandbox
using Base.Test

let
    x = rand()
    @test f(x) == x^2
    @test g(x) == x^3
    @test Sandbox.SubModule.h(x) == x^4
end

import Sandbox.SubModule
x = rand()
@test SubModule.h(x) == x^4
