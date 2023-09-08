functor
import
    Application
    System
define
    % Example
    fun {Min X Y}
        if X < Y then
            X
        else
            Y
        end
    end
    {System.showInfo {Min 10 89}}

    % a
    fun {Max Number1 Number2}
        if Number1 > Number2 then
            Number1
        else
            Number2
        end
    end

    % b
    proc {PrintGreater Number1 Number2}
        {System.showInfo {Max Number1 Number2}}
    end

    {PrintGreater 10 89}

    {Application.exit 0}
end