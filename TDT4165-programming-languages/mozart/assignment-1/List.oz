% a
fun {Length List}
    case List of _|Tail then
        1 + {Length Tail}
    else
        0
    end
end

% b
fun {Take List Count}
    if Count >= {Length List} then
        List
    else
        if Count == 0 then
            nil
        else
            case List of Head|Tail then
                Head|{Take Tail Count - 1}
            end
        end             
    end
end

% c
fun {Drop List Count}
    if Count >= {Length List} then
        nil
    else
        case List of Head|Tail then
            if Count == 0 then
                Head|Tail
            else
                {Drop Tail Count - 1}
            end
        end
    end
end

% d
fun {Append List1 List2}
    if {Length List1} == 0 then
        List2
    else
        case List1 of Head|Tail then
            Head|{Append Tail List2}
        else
            List1
        end
    end
end

% e
fun {Member List Element}
    case List of Head|Tail then
        if Head == Element then
            true
        else
            {Member Tail Element}
        end
    else
        false
    end
end

% f
fun {Position List Element}
    case List of Head|Tail then
        if Head == Element then
            0
        else
            1 + {Position Tail Element}
        end
    end
end