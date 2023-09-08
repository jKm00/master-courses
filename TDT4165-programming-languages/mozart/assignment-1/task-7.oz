functor
import
    Application
    System
define    
    local List in
        % Helper function
        proc {PrintList List}
            case List of Head|Tail then
                {System.showInfo Head}
                {PrintList Tail}
            else
                {System.showInfo "\n"}
            end
        end

        % Defining the list
        List = [2 9 8 4 5]
        {System.showInfo "Original list:"}
        {PrintList List}
        
        % a
        fun {Length List}
            case List of _|Tail then
                1 + {Length Tail}
            else
                0
            end
        end

        {System.showInfo "Task A results:"}
        {System.showInfo {Length List}}

        % b
        fun {Take List Count}
            
        end

    end

    {Application.exit 0}
end