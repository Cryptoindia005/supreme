start:
    // ERC-20 Token Contract
    // (Simplified for illustration)
    
    // State variables
    data $a
    data $totalSupply
    
    // Initialize
    on init:
        set $a[msg.sender] $totalSupply
        return
    
    // Transfer function
    function transfer($to, $value):
        require $balances[msg.sender] >= $value
        $a[msg.sender] -= $value
        $a[$to] += $value
        return
end
