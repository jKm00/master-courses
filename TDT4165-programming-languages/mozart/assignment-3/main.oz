functor
import
    Application
    System
define
    % Task 1
    {System.showInfo "***** Task 1 *****"}

    % a)
    proc {QuadraticEquation A B C ?RealSol ?X1 ?X2} D in
        D = B * B - 4.0 * A * C
        if D < 0.0 then
            RealSol = false
        else
            RealSol = true
            X1 = (~B + {Float.sqrt D}) / (2.0 * A)
            X2 = (~B - {Float.sqrt D}) / (2.0 * A)
        end
    end

    % b)
    {System.showInfo "b)"}

    {System.showInfo '\nInput: 2 1 -1'}
    local RealSol X1 X2 in
        {QuadraticEquation 2.0 1.0 ~1.0 RealSol X1 X2}
        {System.show 'Real solution: ' #RealSol}
        {System.show 'X1: ' #X1}
        {System.show 'X2: ' #X2}
    end

    {System.showInfo '\nInput: 2 1 2'}
    local RealSol X1 X2 in
        {QuadraticEquation 2.0 1.0 2.0 RealSol X1 X2}
        {System.show 'Real solution: ' #RealSol}
        {System.show 'X1: ' #X1}
        {System.show 'X2: ' #X2}
    end

    % c)
    % Question: Why are procedural abstractions useful?

    % Answer: Procedural abstractions are useful because they allow us to
    % write code that is more readable and easier to understand.
    % They also allow us to reuse code, which is very useful.

    % d)
    % Question: What is the difference between a procedure and a function?

    % Answer: A procedure is a function that does not return anything.
    % A function that is not a procedure always has to return a value

    % Task 2
    {System.showInfo "\n***** Task 2 *****"}

    fun {Sum List}
        case List of nil then 
            0
        [] Head|Tail then 
            Head + {Sum Tail}
        end
    end

    {System.showInfo '\nInput: [1 2 3 4 5]'}
    {System.show 'Sum: ' #{Sum [1 2 3 4 5]}}

    % Task 3
    {System.showInfo "\n***** Task 3 *****"}

    % a)
    fun {RightFold List Op U}
        case List of nil then
            U
        [] Head|Tail then
            {Op Head {RightFold Tail Op U}}
        end
    end

    % b)
    % If the list is empty, the neutral element is returned
    % If not then we perform the operation on the head and the result of the
    % operation on the tail

    % c)
    fun {RightFoldLength List}
        {RightFold List fun {$ X Y} 1 + Y end 0}
    end

    fun {RightFoldSum List}
        {RightFold List fun {$ X Y} X + Y end 0}
    end

    {System.showInfo '\nInput: [1 2 3 4 5]'}
    {System.show 'Length: ' #{RightFoldLength [1 2 3 4 5]}}
    {System.show 'Sum: ' #{RightFoldSum [1 2 3 4 5]}}

    % d)
    % Question: For the Sum and Length operations, would the LeftFold and
    % RightFold give different results? Can you provide an example of an
    % operation for which the two folds do not produce the same result?

    % Answer: For the Sum and Length operations, the LeftFold and RightFold
    % would give the same results. An example of an operation for which the
    % two folds do not produce the same result is the subtraction operation.

    % e)
    % Question: What is an appropriate value for U when using RightFold to
    % implement the product of the list elements?

    % Answer: An appropriate value for U when using RightFold to implement
    % the product of the list elements is 1. If you use U = 0, the result will
    % always be 0.

    % Task 4
    {System.showInfo "\n***** Task 4 *****"}

    fun {Quadratic A B C}
        fun {$ X}
            A * X * X + B * X + C
        end
    end

    {System.show 'Input: A=3, B=2, C=1, X=2'}
    {System.show 'Result: ' #{{Quadratic 3 2 1} 2}}

    % Task 5
    {System.showInfo "\n***** Task 5 *****"}

    % a)
    fun {LazyNumberGenerator StartValue}
        StartValue | fun {$}
            {LazyNumberGenerator StartValue + 1}
        end
    end

    {System.show 'Result 1: ' #{LazyNumberGenerator 0}.1}
    {System.show 'Result 2: ' #{{LazyNumberGenerator 0}.2}.1}
    {System.show 'Result 3: ' #{{{{{{LazyNumberGenerator 0}.2}.2}.2}.2}.2}.1}

    % b)
    % Question: Give a high-level description of your solution and point
    % out any limitations you find relevant.

    % Answer: The function takes in the start value and uses function nesting
    % to calculate the next value. The returned value is not a list, meaning
    % you cannot perform list operations on it.


    % Task 6
    {System.showInfo "\n***** Task 6 *****"}

    % a)
    % Question: Is your Sum function from Task 2 tail recursive? If not,
    % implement a tail-recursive version and explain which changes you
    % needed to introduce to make it tail recursive.

    % Answer: No, the Sum function from Task 2 is not tail recursive. To make
    % it tail recursive, we need to add an accumulator parameter to the
    % function. The accumulator parameter is used to store the result of the
    % operation. The accumulator parameter is initialized to 0 and is updated
    % at each recursive call. When the list is empty, the accumulator
    % parameter is returned.

    fun {TailRecursiveSum List}
        fun {InnerTailRecursiveSum List Acc}
            case List of nil then
                Acc
            [] Head|Tail then
                {InnerTailRecursiveSum Tail Head + Acc}
            end
        end
    in
        {InnerTailRecursiveSum List 0}
    end

    {System.show 'Input: [1 2 3 4 5]'}
    {System.show 'Sum: ' #{TailRecursiveSum [1 2 3 4 5]}}

    % b)
    % Question: What is the benefit of tail recursion in Oz?
        
    % Answer: The benefit of tail recursion in Oz is that it allows
    % us to avoid stack overflow errors.

    % c)
    % Question: Do all programming languages that allow recursion benefit
    % from tail recursion? Why/why not?

    % Answer: No, not all programming languages that allow recursion benefit
    % from tail recursion. For example, Java does not benefit from tail
    % recursion because it does not support tail call optimization.
    % Source: https://stackoverflow.com/questions/53354898/tail-call-optimisation-in-java

    {Application.exit 0}
end