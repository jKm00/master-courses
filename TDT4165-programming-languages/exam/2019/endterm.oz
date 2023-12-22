functor
import
    Application
    System
define
    % 5.
    
    % {Browse 1 + 1020}

    local X in
        X = 5
        local X in
            X = 6
            {System.show X}
        end
        {System.show X}
    end

    local X Y in
        fun {Bar X Y}
            (A#B)#(C#D) = X#Y
        in
            B = C
            A#D
        end
        {System.show {Bar [foo|X]#X Y#Y}}
    end

    local X Y in
        X = Y
        X = [1 2 3]
        {System.show X}
        {System.show Y}
    end

    local X in
        [1 2 3] = X
        {System.show X}
    end

    declare 
        X 
        Y = en(X Y)
        {Browse Y}
    end
end
    
    {Application.exit 0}
end
