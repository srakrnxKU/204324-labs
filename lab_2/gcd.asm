.data
    text_a: .asciiz "gcd of 1890 and 3315 is "

.text

.globl main 

main:
	# Store $t0 into stack pointers as there may be usage of them in the function
	addiu   $sp, $sp, -4
	li	    $t4, 1890
	sw  	$t4, 0($sp)
	addiu   $sp, $sp, -4
	li  	$t4, 3315
	sw  	$t4, 0($sp)
	jal 	gcd
    add     $s0, $0, $v0
	addiu   $sp, $sp, 8
    li      $v0, 4
    la		$a0, text_a 
    syscall
    li      $v0, 1
    add     $a0, $0, $s0
    syscall
	li	    $v0, 10
	syscall	

gcd:
	addiu	$sp, $sp, -4    # decrease stack pointer by 4
	sw	    $ra, 0($sp)     # store the current return address into current stack pointer
	addiu	$sp, $sp, -4    # decrease stack pointer by 4
	sw	    $fp, 0($sp)     # store the "previous" frame pointer into current stack pointer
	addu	$fp, $sp, $0    # adjust the current frame pointer to be the current stack pointer

	lw	    $a0, 8($fp)     # loading 1st args (m)
	lw	    $a1, 12($fp)    # loading 2nd args (n)

    beq     $a0, $a1, gcd_terminates
    slt     $t0, $a1, $a0
    bne     $t0, $0, gcd_mgtn
    beq     $t0, $0, gcd_mleqn

gcd_terminates:
    add		$v0, $0, $a0	# loads $m$ into return value
	lw	    $fp, 0($sp)     # popping back the current frame pointer
	addiu	$sp, $sp, 4
	lw	    $ra, 0($sp)     # popping back the return address
	addiu	$sp, $sp, 4     # summation to the originated stack base
    jr      $ra             # jr to return

gcd_mgtn:
	addiu	$sp, $sp, -4    # decrease stack pointer by 4
    sw      $a1, 0($sp)     # stores $n$
	addiu	$sp, $sp, -4    # decrease stack pointer by 4
    sub		$s0, $a0, $a1   # $s0 = $m-n$
    sw      $s0, 0($sp)     # stores $m-n$
	jal 	gcd
    add     $sp, $sp, 8     # pops 2 arguments (m, n)
	lw	    $fp, 0($sp)     # popping back the current frame pointer
	addiu	$sp, $sp, 4
	lw	    $ra, 0($sp)     # popping back the return address
	addiu	$sp, $sp, 4     # summation to the originated stack base
    jr      $ra             # jr to return

gcd_mleqn:
	addiu	$sp, $sp, -4    # decrease stack pointer by 4
    sub		$s0, $a1, $a0   # $s0 = $n-m$
    sw      $s0, 0($sp)     # stores $n-m$
	addiu	$sp, $sp, -4    # decrease stack pointer by 4
    sw      $a0, 0($sp)     # stores $m$
	jal 	gcd
    add     $sp, $sp, 8     # pops 2 arguments (m, n)
	lw	    $fp, 0($sp)     # popping back the current frame pointer
	addiu	$sp, $sp, 4
	lw	    $ra, 0($sp)     # popping back the return address
	addiu	$sp, $sp, 4     # summation to the originated stack base
    jr      $ra             # jr to return