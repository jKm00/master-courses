declare ShowStream in

    % ####### Task 1 #######
    
    {System.showInfo "***** Task 1a) *****\n"}
    
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

    % Helper function to visualize a stream
    proc {ShowStream Stream}
        case Stream of Head|Tail then
            {System.show Head}
            {ShowStream Tail}
        else
            skip
        end
    end

    local Enumerate GenerateOdd ListDivisorsOf ListDivisorsOfHelper ListPrimeUntil ListPrimeUntilHelper in

    % ######## Task 2 ########

        {System.showInfo "\n***** Task 2a) *****\n"}
        
        % a)
        fun {Enumerate Start End}
            if Start =< End then
                thread
                    Start|{Enumerate Start + 1 End}
                end
            else
                nil
            end
        end

        {System.showInfo "Input: {Enumerate 1 5}\n"}
        {System.showInfo "Output: "}
        {ShowStream {Enumerate 1 5}}

        {System.showInfo "\n***** Task 2b) *****\n"}
        
        % b)
        fun {GenerateOdd Start End} Stream in
            if Start =< End then
                Stream = {Enumerate Start End}
                case Stream of Head|_ then
                    if {Int.isOdd Head} then
                        thread
                            Head|{GenerateOdd Head + 1 End}
                        end
                    else
                        thread
                            {GenerateOdd Head + 1 End}
                        end
                    end
                else
                    nil
                end
            else
                nil
            end
        end
        
        {System.showInfo "Input: {GenerateOdd 1 5}\n"}
        {System.showInfo "Output: "}
        {ShowStream {GenerateOdd 1 5}}

    {Delay 100}

    % ######## Task 3 ########

        {System.showInfo "\n***** Task 3a) *****\n"}

        % a)
        fun {ListDivisorsOf Number} Possibilities in
            Possibilities = {Enumerate 1 Number}
            {ListDivisorsOfHelper Number Possibilities}
        end

        fun {ListDivisorsOfHelper Number Possibilities}
            case Possibilities of Head|Tail then
                if Number mod Head == 0 then
                    thread
                        Head|{ListDivisorsOfHelper Number Tail}
                    end
                else
                    thread
                        {ListDivisorsOfHelper Number Tail}
                    end
                end
            else
                nil
            end
        end

        {System.showInfo "Input: {ListDivisorsOf 5}\n"}
        {System.showInfo "Output: "}
        {ShowStream {ListDivisorsOf 5}}

        {Delay 100}

        {System.showInfo "\n***** Task 3b) *****\n"}

        % b)
        fun {ListPrimeUntil N} Stream in
            Stream = {Enumerate 1 N}
            {ListPrimeUntilHelper Stream}
        end

        fun {ListPrimeUntilHelper Stream} Length in
            case Stream of Head|Tail then
                Length = {List.length {ListDivisorsOf Head}}
                if Length == 1 then
                    thread
                        Head|{ListPrimeUntilHelper Tail}
                    end
                elseif Length == 2 then
                    thread
                        Head|{ListPrimeUntilHelper Tail}
                    end
                else
                    thread
                        {ListPrimeUntilHelper Tail}
                    end
                end
            else
                nil
            end
        end

        {System.showInfo "Input: {ListPrimeUntil 10}\n"}
        {System.showInfo "Output: "}
        {ShowStream {ListPrimeUntil 10}}

    end

    {Delay 100}
    
    local Enumerate Primes in

        % ######## Task 4 ########
    
        {System.showInfo "\n***** Task 4a) *****\n"}

        % a)
        fun lazy {Enumerate} Helper in
            fun lazy {Helper N}
                N|thread {Helper N + 1} end
            end
            {Helper 1}
        end

        {System.showInfo "Input: {List.take {Enumerate} 10}\n"}
        {System.showInfo "Output: "}
        {System.show {List.take {Enumerate} 102}}

        {Delay 100}

        {System.showInfo "\n***** Task 4b) *****\n"}

        % b)
        fun lazy {Primes} IsPrime Helper in
            fun lazy {IsPrime N Current}
                if Current < N then
                    if N mod Current == 0 then
                        false
                    else
                        {IsPrime N Current + 1}
                    end
                else
                    true
                end
            end
            fun lazy {Helper N}
                if {IsPrime N 2} then
                    N|{Helper N + 1}
                else
                    {Helper N + 1}
                end
            end
            {Helper 2}
        end

        {System.showInfo "Input: {List.take {Primes} 10}\n"}
        {System.showInfo "Output: "}
        {System.show {List.take {Primes} 10}}

    end