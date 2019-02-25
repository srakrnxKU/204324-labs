# Simple Jumping test

main:
    ori     $1, $0, 4660
    ori     $2, $0, 22136
    # Jump to `wtf`
    j       wtf

eiei:
    sll     $0, $0, 0

woo:
    # Jump return
    sll     $0, $0, 0
    jr      $31
    
wtf:
    # Jump and link
    srl     $0, $0, 0
    srl     $0, $0, 0
    jal     woo
