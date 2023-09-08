functor
import
     Application
     System
define
    % a
    local X Y=300 Z=30 in
        X = Y * Z
        {System.showInfo X}
    end

    % b
    % Y is printed because the code is compiled before executed
    % The execution of the thread is halted until variable Y is assigned
    % Y = X assigns the value of X to Y
    local X Y in
        X = "This is a string"
        thread {System.showInfo Y} end
        Y = X
    end

    {Application.exit 0} 
end