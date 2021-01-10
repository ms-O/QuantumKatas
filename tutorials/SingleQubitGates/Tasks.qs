// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT license.

//////////////////////////////////////////////////////////////////
// This file is a back end for the tasks in the tutorial.
// We strongly recommend to use the Notebook version of the tutorial
// to enjoy the full experience.
//////////////////////////////////////////////////////////////////

namespace Quantum.Kata.SingleQubitGates {
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    
    // Exercise 1.
    operation ApplyY (q : Qubit) : Unit is Adj+Ctl {
        Y(q);
    }

    // Exercise 2.
    operation GlobalPhaseI (q : Qubit) : Unit is Adj+Ctl {
        Z(q);
        Y(q);
        X(q);
    }

    // Exercise 3.
    operation SignFlipOnZero (q : Qubit) : Unit is Adj+Ctl {
        X(q);
        Z(q);
        X(q); 
    }

    // Exercise 4.
    operation PrepareMinus (q : Qubit) : Unit is Adj+Ctl {
        X(q);
        H(q);
    }

    // Exercise 5.
    operation ThreeQuatersPiPhase (q : Qubit) : Unit is Adj+Ctl {
        T(q);
        T(q);
        //note applying T twice is like applying S 
        T(q);
    }

    // Exercise 6.
    operation PrepareRotatedState (alpha : Double, beta : Double, q : Qubit) : Unit is Adj+Ctl {
        let theta = 2.0 * ArcTan2(beta, alpha);
        Rx(theta, q);        
    }

    // Exercise 7.
    operation PrepareArbitraryState (alpha : Double, beta : Double, theta : Double, q : Qubit) : Unit is Adj+Ctl {
        //Message($"theta = {theta}");
        //method 1, the angle is from Ex. 6 
        let angle = 2.0 * ArcTan2(beta, alpha);
        Rx(angle, q); 
        S(q);
        R1(theta, q);

        //Method 2 per official solution 
        //Ry(angle, q);
        //R1(theta, q);
    }
}
