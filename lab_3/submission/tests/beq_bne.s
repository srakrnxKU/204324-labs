# Simple Branching test

ori $1, $0, 1
# Test for `beq`. This one should not branch.
beq $0, $1, test
# This one should branch.
beq $1, $1, test

test:
    # Test for `bne`, this one should not branch.
    bne $0, $0, test2
    # This one should branch.
    bne $0, $0, test2

test2:
    sll $0, $0, 0