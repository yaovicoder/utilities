contract mortal {
    /* Define variable owner of the type address*/
    address owner;

    /* this function is executed at initialization and sets the owner of the contract */
    function mortal() { owner = msg.sender; }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) suicide(owner); }
}

contract greeter is mortal {
    /* define variable greeting of the type string */
    string greeting;

    /* this runs when the contract is executed */
    function greeter(string g) public {
        greeting = g;
    }
    
    function setMessage(string g) {
        greeting = g;
    }

    /* main function */
    function greet() constant returns (string) {
        return greeting;
    }
}

