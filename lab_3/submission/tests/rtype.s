# R-Type testing
# Testing all R-Type commands

main:
    ori     $1, $0, 4660
    ori     $2, $0, 22136
    addu    $3, $1, $2
    subu    $4, $2, $1
    and     $5, $1, $2
    or      $6, $1, $2
    xor     $7, $1, $2
    nor     $8, $1, $2
    slt     $9, $1, $2
    sltu    $10, $1, $2
    sll     $11, $1, 4
    srl     $12, $1, 4
    sra     $13, $8, 4
    ori     $14, $0, 4
    sllv    $11, $1, $14
    srlv    $12, $1, $14
    srav    $13, $8, $14