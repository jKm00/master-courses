functor
import
    Application
    System
define
    % Helper function to show stream
    proc {ShowStream Stream}
        case Stream of Head|Tail then
            {System.show Head}
            {ShowStream Tail}
        else
            skip
        end
    end
    
    % 5. My attempt
    fun lazy {LzyFilt Xs F}
        fun {LzyFiltInner Xs F Result}
            case Xs of nil then Result
            [] X|Xr then
                if {F X} then
                    {LzyFiltInner Xr F X|Result}
                else
                    {LzyFiltInner Xr F Result}
                end
            end
        end
    in
        {LzyFiltInner Xs F nil}
    end

    {ShowStream {LzyFilt [1 2 3] fun {$ X} X == 2 end}}

    {Application.exit 0}
end