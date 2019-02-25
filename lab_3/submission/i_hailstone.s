# main(){
#     int i = 0;
#     int n = 3;
#     while (n != 1) {
#         i = i + 1;
#         if ((n % 2) == 0) n = n/2;                 
#         else n = 3*n+1;             
#     }
# }

main:
    # $2 = i
    # i = 0
    ori     $2, $0, 0
    # $8 = n = 3
    ori     $8, $0, 3
    while:
        # $9 = 1
        ori     $9, $0, 1
        beq     $8, $9, ends
        # $10 = $8%2
        andi    $10, $8, 1
        addiu   $2, $2, 1
        beq     $10, $0, div_two
        bne		$10, $0, times_three_plus_one
        div_two:
            srl     $8, $8, 1
            j       while
        times_three_plus_one:
            # $11 = 3$8+1
            addu    $11, $8, $8
            addu    $11, $8, $11
            addiu   $11, $11, 1
            ori     $8, $11, 0
            j       while
    ends:
        sll     $0, $0, 0