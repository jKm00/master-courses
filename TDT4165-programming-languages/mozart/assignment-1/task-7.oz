functor
import
    Application
    System
define    
    % import list
    \insert 'List.oz'

    local List in
        % Defining the list
        List = [2 9 8 4 5]
        {System.showInfo "Original list:"}
        {System.show List}

        % a results
        {System.showInfo "Task A results:"}
        {System.showInfo {Length List}}

        % b results
        {System.showInfo "Task B results:"}
        {System.show {Take List 2}}

        % c results
        {System.showInfo "Task C results:"}
        {System.show {Drop List 2}}
        
        % d results
        {System.showInfo "Task D results:"}
        {System.show {Append List List}}

        % e results
        {System.showInfo "Task E results:"}
        {System.show {Member List 9}}
        {System.show {Member List 6}}

        % f results
        {System.showInfo "Task F results:"}
        {System.show {Position List 9}}
        {System.show {Position List 4}}

    end

    {Application.exit 0}
end