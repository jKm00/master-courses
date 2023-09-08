functor
import
    Application
    System
define    
    local List in
        % Defining the list
        List = [2 9 8 4 5]
        {System.showInfo "Original list:"}
        {System.show List}

        % a
        fun {Push List Element}
            Element|List
        end

        {System.showInfo "Task A results:"}
        {System.show {Push List 2}}

        % b
        fun {Peek List}
            case List of Head|_ then
                Head
            end
        end

        {System.showInfo "Task B results:"}
        {System.show {Peek List}}

        % c
        fun {Pop List}
            case List of _|Tail then
                Tail
            end
        end

        {System.showInfo "Task B results:"}
        {System.show {Pop List}}

    end

    {Application.exit 0}
end