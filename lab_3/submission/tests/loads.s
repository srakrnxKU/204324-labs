# Load instructions
# Testing all load instruction commands

main:
    ori     $8, $0, 52345
    sw      $8, 4($0)
    sb      $8, 8($0)
    sb      $8, 10($0)
    lw      $9, 4($0)
    lb      $10, 10($0)
    lui     $11, 52345