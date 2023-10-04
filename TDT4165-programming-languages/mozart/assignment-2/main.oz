functor
import
    Application
    System
define
    % Task 1
    % a)
    fun {Lex Input}
        {String.tokens Input & }
    end

    % b)
    fun {Tokenize Lexemes} Token in
        case Lexemes of Head|Tail then
            case Head of "+" then
            % B)
                Token = operator(type:plus)
            [] "-" then
                Token = operator(type:minus)
            [] "*" then
                Token = operator(type:multiply)
            [] "/" then
                Token = operator(type:divide)
            % d)
            [] "p" then
                Token = command(print)
            % e)
            [] "d" then
                Token = command(duplicate)
            % f)
            [] "i" then
                Token = command(flip)
            % g)
            [] "c" then
                Token = command(clear)
            % b)
            else
                Token = number(Head)
            end

            Token | {Tokenize Tail}

        else
            nil
        end
    end

    % c)
    fun {Interpret Tokens} Stack = nil in
        {InterpretInternal Tokens Stack}
    end

    % c)
    fun {InterpretInternal Tokens Stack} Result in
        case Tokens of nil then
            Stack
        [] number(Number) | Tail then
            {InterpretInternal Tail {String.toInt Number} | Stack}
        [] operator(type:Operation) | Tail then
            case Stack of Number1 | Number2 | Remainder then
                if Operation == 'plus' then
                    Result = Number1 + Number2
                elseif Operation == 'minus' then
                    Result = Number1 - Number2
                elseif Operation == 'multiply' then
                    Result = Number1 * Number2
                elseif Operation == 'divide' then
                    Result = Number1 / Number2
                else
                    Result = nil
                end
                {InterpretInternal Tail Result | Remainder}
            else
                nil
            end
        [] command(Statement) | Tail then
            % d)
            if Statement == 'print' then
                {System.show Stack}
                {InterpretInternal Tail Stack}
            % e)
            elseif Statement == 'duplicate' then
                {InterpretInternal Tail Stack.1 | Stack}
            % f)
            elseif Statement == 'flip' then
                {InterpretInternal Tail ~Stack.1 | Stack.2}
            % g)
            elseif Statement == 'clear' then
                {InterpretInternal Tail nil}
            end
        else
            nil
        end
    end

    % Task 2
    % a)
    fun {ExpressionTreeInternal Tokens ExpressionStack} Expression in
        case Tokens of nil then
            ExpressionStack
        [] number(Number) | Tail then
            {ExpressionTreeInternal Tail Number | ExpressionStack}
        [] operator(type:Operation) | Tail then
            case ExpressionStack of Expression1 | Expression2 | Remainder then
                if Operation == 'plus' then
                    Expression = plus(Expression1 Expression2)
                elseif Operation == 'minus' then
                    Expression = minus(Expression1 Expression2)
                elseif Operation == 'multiply' then
                    Expression = multiply(Expression1 Expression2)
                elseif Operation == 'divide' then
                    Expression = divide(Expression1 Expression2)
                end
                {ExpressionTreeInternal Tail Expression | Remainder}
            end
        end
    end

    % b)
    fun {ExpressionTree Tokens} Stack = nil in
        {ExpressionTreeInternal Tokens Stack}
    end

    {System.showInfo "####### Task 1 #######"}

    {System.showInfo "\na)"}
    {System.showInfo "Input:"}
    {System.showInfo "1 2 3 + 3 *"}
    {System.showInfo "Expected:"}
    {System.showInfo "[[49] [50] [43] [51] [42]]"}
    {System.showInfo "Output:"}
    {System.show {Lex "1 2 + 3 *"}}

    {System.showInfo "\nb)"}
    {System.showInfo "Input:"}
    {System.showInfo "1 2 3 + 3 *"}
    {System.showInfo "Expected:"}
    {System.showInfo "[number([49]) number([50]) operator(type:plus) number([51]) operator(type:multiply)]"}
    {System.showInfo "Output:"}
    {System.show {Tokenize {Lex "1 2 + 3 *"}}}

    {System.showInfo "\nc)"}
    {System.showInfo "Input:"}
    {System.showInfo "1 2 3 +"}
    {System.showInfo "Expected:"}
    {System.showInfo "[5 1]"}
    {System.showInfo "Output:"}
    {System.show {Interpret {Tokenize {Lex "1 2 3 +"}}}}

    {System.showInfo "\nd)"}
    {System.showInfo "Input:"}
    {System.showInfo "1 2 p 3 +"}
    {System.showInfo "Expected:"}
    {System.showInfo "[2 1]"}
    {System.showInfo "[5 1]"}
    {System.showInfo "Output:"}
    {System.show {Interpret {Tokenize {Lex "1 2 p 3 +"}}}}

    {System.showInfo "\ne)"}
    {System.showInfo "Input:"}
    {System.showInfo "1 2 3 + d"}
    {System.showInfo "Expected:"}
    {System.showInfo "[5 5 1]"}
    {System.showInfo "Output:"}
    {System.show {Interpret {Tokenize {Lex "1 2 3 + d"}}}}

    {System.showInfo "\nf)"}
    {System.showInfo "Input:"}
    {System.showInfo "1 2 3 + i"}
    {System.showInfo "Expected:"}
    {System.showInfo "[~5 1]"}
    {System.showInfo "Output:"}
    {System.show {Interpret {Tokenize {Lex "1 2 3 + i"}}}}

    {System.showInfo "\ng)"}
    {System.showInfo "Input:"}
    {System.showInfo "1 2 3 + c 1 2 +"}
    {System.showInfo "Expected:"}
    {System.showInfo "[3]"}
    {System.showInfo "Output:"}
    {System.show {Interpret {Tokenize {Lex "1 2 3 + c 1 2 +"}}}}

    {System.showInfo "\n####### Task 2 #######"}

    {System.showInfo "\na), b)"}
    {System.showInfo "Input:"}
    {System.showInfo "2 3 + 5 /"}
    {System.showInfo "Expected:"}
    {System.showInfo "[divide([53] plus([51] [50]))]"}
    {System.showInfo "Output:"}
    {System.show {ExpressionTree {Tokenize {Lex "2 3 + 5 /"}}}}

    % Task 3
    % a) <lexem> ::== S (S Matches any non-white-space character)

    % b)

    % c) 
    % In task a) regular grammar is used. This is becuase the production rule follows the 
    % form of A -> a, where 'a' is only terminal symbols.

    {Application.exit 0}
end
