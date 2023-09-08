functor
import
    Application
    System
define
    proc {Circle R} A D C Pi = 355.0/113.0 in
        A = Pi * R * R
        D = 2.0 * R
        C = Pi * D

        {System.showInfo "Areal: " #A}
        {System.showInfo "Diameter: " #D}
        {System.showInfo "Circumference: " #C}
    end

    {Circle 5.0}

    {Application.exit 0}
end