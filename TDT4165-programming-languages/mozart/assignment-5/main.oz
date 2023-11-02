functor
import
    Application
    System
define

    % ####### Task 1 #######

    {System.showInfo "***** Task 1a) *****\n"}
    
    % Task 1
    % a)
    local A = 10 B = 20 C = 30 in
        {System.show C}

        thread
            {System.show A}
            {Delay 100}
            {System.show A * 10}
        end

        thread
            {System.show B}
            {Delay 100}
            {System.show B * 10}
        end

        {System.show C * 100}
    end

    % Output:
    % 30
    % 3000
    % 10
    % 20
    % 200
    % 100

    % b) The execution of the code outside the thread blocks are executed in sequence. Thats why C is printed first. 
    % The order of the threads are executed in a non-determined order. The order is determined at runtime and can vary. 
    % For the code above, the first thread is scheduled before the second thread. This is why A is printed before B.
    % The threads are executed in parallel. This is why A and B are printed before A * 10 and B * 10

    {Delay 100}

    {System.showInfo "\n***** Task 1c) *****\n"}

    % c)
    local A B C in
        thread 
            A = 2
            {System.show A}
        end
        thread
            B = A * 10
            {System.show B}
        end

        C = A + B
        {System.show C}
    end

    % Output:
    % 2
    % 20
    % 22

    % d) In the code above, the final call to print C is blocked by the other threads. It has to wait for the other 
    % threads to bind both A and B before it can execute. This is why A is printed first, then B, then finally C.

    {Delay 100}

    % ######## Task 2 ########

    % Helper function to visualize a stream
    proc {ShowStream Stream}
        case Stream of Head|Tail then
            {System.show Head}
            {ShowStream Tail}
        else
            skip
        end
    end

    {System.showInfo "\n***** Task 2a) *****\n"}
    
    % a)
    fun {Enumerate Start End}
        thread
            if Start =< End then
                Start|{Enumerate Start + 1 End}
            else
                nil
            end
        end
    end

    {ShowStream {Enumerate 1 5}}

    {System.showInfo "\n***** Task 2b) *****\n"}

    % b)
    fun {GenerateOdd Start End} Stream in
        if Start =< End then
            Stream = {Enumerate Start End}
            case Stream of Head|_ then
                if {Int.isOdd Head} then
                    Head|{GenerateOdd Head + 1 End}
                else
                    {GenerateOdd Head + 1 End}
                end
            else
                nil
            end
        else
            nil
        end
    end

    {ShowStream {GenerateOdd 1 5}}

    % ######## Task 3 ########

    % a)
    fun {ListDivisorsOf Number} Possibilities in
        {ListDivisorsOfHelper Number 1}
    end

    fun {ListDivisorsOfHelper Number Current}
        if Current =< Number then
            if {Int.mod Current Number} == 0 then
                Current|{ListDivisorsOfHelper Number Current + 1}
            else
                {ListDivisorsOfHelper Number Current + 1}
            end
        else
            nil
        end
    end

    {System.show {ListDivisorsOf 5}}

    {Application.exit 0}
end