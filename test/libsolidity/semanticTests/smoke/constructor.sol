contract C {
    uint public state = 0;
    constructor(uint _state) payable {
        state = _state;
    }
    function balance() public payable returns (uint256) {
        return address(this).balance;
    }
    function update(uint _state) public {
        state = _state;
    }
}
// ----
// constructor(), 2 wei: 3 ->
// gas irOptimized: 104396
// gas legacy: 148256
// gas legacyOptimized: 106699
// state() -> 3
// balance() -> 2
// balance -> 2
// update(uint256): 4
// state() -> 4
