functor
import
    Application
    System
define
    fun {PopNElements List N}
        fun {PopNElementsInner List N Current}
            if Current == N then nil
            else 
                case List of H|T then
                    H|{PopNElementsInner T N Current + 1}
                end
            end
        end
    in
        {PopNElementsInner List N 0}
    end

    {System.show {PopNElements [1 2 3 4 5 6 7 8 9] 4}}
    
    local B in
        B = 5
        B = 5
        {System.show B}
    end

    fun {Length Xs}
        fun (LenghtInner Xs Acc)
            case Xs of nil then Acc
            [] _|Xr then {Length Xr Acc+1}
        end
    in
        {LengthInner Xs 0}
    end

    fun {FoldTree NodeAcc BranchAcc Tree StartVal}
        
    end

    {Application.exit 0}
end