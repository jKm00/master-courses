functor
import
    Application
    System
define
    fun {Factorial N}
        if N == 1 then
            N
        else
            N * {Factorial N-1}
        end
    end

    {System.showInfo {Factorial 10}}
    {Application.exit 0}
end