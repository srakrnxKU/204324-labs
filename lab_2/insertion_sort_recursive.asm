# current register uses
# $s0 -> array pointer
# $s1 -> n
# $s2 -> last
# $s3 -> j

.data

.text

.globl main 

main:
	addiu   $sp, $sp, -4
    li      $t0, 21544
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 236
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 327
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 236
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 66
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 2
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 244
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 80324542
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 93245
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 73245
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 324545
	sw  	$t0, 0($sp)
	addiu   $sp, $sp, -4
    li      $t0, 132470
	sw  	$t0, 0($sp)
    add		$s0, $sp, $0   # Storing the address to the first array element
    li      $s1, 12
    jal     insertion_sort
	li		$t0, 0
	array_print:
		slti	$t1, $t0, 11
		li		$v0, 1
		sll		$t2, $t0, 2
		add		$t2, $t2, $s0
		lw		$a0, 0($t2)
		syscall
		li		$v0, 11
		li		$a0, 10
		syscall
		addi	$t0, $t0, 1
		bne		$t1, $0, array_print
	li		$v0, 10
	syscall

insertion_sort:
	addiu	$sp, $sp, -4    # decrease stack pointer by 4
	sw	    $ra, 0($sp)     # store the current return address into current stack pointer
	addiu	$sp, $sp, -4    # decrease stack pointer by 4
	sw	    $fp, 0($sp)     # store the "previous" frame pointer into current stack pointer
	addu	$fp, $sp, $0    # adjust the current frame pointer to be the current stack pointer
	addiu	$sp, $sp, -4    # decrease stack pointer by 4
	sw	    $s1, 0($sp)     # store the "previous" $s1 (n) into current stack pointer
    slt     $s2, $s1, 2     # if n <= 1 return
    bne		$s2, $0, insertion_sort_rewind
    addi    $s1, $s1, -1    # $1 = n-1
    jal     insertion_sort
    sll     $t0, $s1, 2     # n-1 (in forms of word address)
    add     $t0, $s0, $t0   # getting the address of last[n-1] = addr(last) + addr(n-1)
    lw      $s2, 0($t0)
    addi    $s3, $s1, -1    # j = n-2
    
	insertion_sort_loop:
		sll		$s4, $s3, 2		# $4 = j in the form of word address
		add		$s5, $s0, $s4	# $s5 = array[j]
		lw		$s5, 0($s5)
		slt		$s6, $s2, $s5	# $s6 = last < array[j]
		slti	$s7, $s3, 0		# $s7 = (j >= 0) ? 0 : 1
		not		$s7, $s7		# inverting $s7 ($s7 = (j >= 0) ? 1 : 0)
		andi	$s7, $s7, 1		# masking $s7 with 0x1 (for 1 bit result)
		and		$s6, $s6, $s7	# $s6 = (j >= 0 && arr[j] > last)
		beq		$s6, $0, insertion_sort_loop_ends
		addi	$s4, $s4, 4		# j+1 in the form of word address
		add		$s4, $s4, $s0	# $s4 = array[j+1]'s position
		sw		$s5, 0($s4)		# array[j+1] = array[j]
		addi	$s3, $s3, -1	# j--
		j		insertion_sort_loop

	insertion_sort_loop_ends:
		addi	$s3, $s3, 1		# j+1
		sll		$s4, $s3, 2		# $4 = j in the form of word address
		add		$s5, $s0, $s4	# $s5 = array[j+1]'s position
		sw		$s2, 0($s5)		# array[j+1] = last

    insertion_sort_rewind:
        lw	    $s1, 0($sp)     # popping back the current $s1 
        addiu	$sp, $sp, 4
        lw	    $fp, 0($sp)     # popping back the current frame pointer
        addiu	$sp, $sp, 4
        lw	    $ra, 0($sp)     # popping back the return address
        addiu	$sp, $sp, 4
        jr      $ra             # jr to return
    
