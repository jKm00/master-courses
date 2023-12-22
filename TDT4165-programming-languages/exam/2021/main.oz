functor
import
    Application
    System
define
    
    % 1.
    proc {Insert Key Value TreeIn ?TreeOut}
        case TreeIn
        of nil then TreeOut = tree(Key Value nil nil)
        [] tree(K1 V1 T1 T2) then 
            if Key == K1 then TreeOut = tree(Key Value T1 T2)
            elseif Key < K1 then T in 
                TreeOut = tree(K1 V1 T T2)
                {Insert Key Value T1 T}
            else T in 
                TreeOut = tree(K1 V1 T1 T)
                {Insert Key Value T2 T}
            end 
        end 
    end

    % 2.
    local Tree1 Tree2 Tree3 in

        {Insert 1 "one" nil Tree1}
        {Insert 2 "two" Tree1 Tree2}
        {Insert 3 "three" Tree2 Tree3}

        {System.show Tree3}

        % Output:
        % tree(2 "two" tree(1 "one" nil nil) tree(3 "three" nil nil))

        %   2
        % 1   3
    end

    % 4.
    fun {Length Xs}
        fun {IterLength Xs L}
            case Xs of nil then 
                L
            [] _|Xr then 
                {IterLength Xr L+1}
            end
        end
    in
        {IterLength Xs 0}
    end

    {System.show {Length [1 2 3 4]}}

    % 5.
    proc {ProcLength Xs ?Output}
        case Xs of nil then 
            Output = 0
        [] _|Xr then 
            Output = 1 + {ProcLength Xr}
        end
    end

    {System.show {ProcLength [1 2 3]}}

    {Application.exit 0}
end

fun {Swap X Y}
    Y|X
end

fun (ReverseD DL)
    case DL of nil then nil
    [] Head|Tail then
        {Swap Head {ReverseD Tail}}
    end
end