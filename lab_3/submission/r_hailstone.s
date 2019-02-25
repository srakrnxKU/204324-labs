# int r_hailstone(int n) {
#     if (n == 1) return 0;
#     else if ((n % 2) == 0) return 1 + r_hailstone(n/2);
#     else return 1 + r_hailstone(3*n+1); 
# }

# $8: n
# $9: 1
# $10: n%2
# $11: n/2
# $12: 3n

main:
    ori     $8, $0, 3
    sw      $8, 0($sp)
    jal		r_hailstone    
    j       exit
    
r_hailstone:
    # store ra
    addiu   $sp, $sp, 4
    sw      $ra, 0($sp)
    # store fp
    addiu   $sp, $sp, 4
    sw      $fp, 0($sp)
    addu	$fp, $sp, $0
    # load n ($8) and 1 ($9)
    lw      $8, -8($sp)
    ori     $9, $0, 1
    # if (n == 1) return 0;
    beq     $8, $9, r_hailstone_basecase
    # elif !(n%2) return 1 + r_hailstone(n/2)
    andi    $10, $8, 1
    beq     $10, $0, r_hailstone_ifelse
    beq     $0, $0, r_hailstone_else
    
    r_hailstone_basecase:
        ori     $2, $0, 0       # returns 0
        lw      $fp, 0($sp)     # loading back the current fp
        addiu   $sp, $sp, -4
        lw      $ra, 0($sp)     # loading back the current ra
        addiu   $sp, $sp, -4
        jr		$ra             
    
    r_hailstone_ifelse:
        # store n/2 to memory
        srl     $11, $8, 1
        addiu   $sp, $sp, 4
        sw      $11, 0($sp)
        jal     r_hailstone
        addiu   $2, $2, 1       # 1 + latest hailstone
        addiu   $sp, $sp, -4
        addiu   $sp, $sp, -4
        lw      $ra, 0($sp)     # loading back the current ra
        addiu   $sp, $sp, -4
        jr		$ra             
        
    r_hailstone_else:
        # store 3n+1 to memory
        ori     $12, $0, 0
        addu    $13, $8, $8
        addu    $13, $8, $13
        addiu   $13, $13, 1
        addiu   $sp, $sp, 4
        sw      $13, 0($sp)
        jal     r_hailstone
        addiu   $2, $2, 1       # 1 + latest hailstone
        addiu   $sp, $sp, -4
        addiu   $sp, $sp, -4
        lw      $ra, 0($sp)     # loading back the current ra
        addiu   $sp, $sp, -4
        jr		$ra             
        
exit:
    sll     $0, $0, 0