.data
.align 4

# our input is 46 characters in length
input:  .ascii "cadljgarhtoxAHdgdsJKhYEasduwBRLsdgHoptxnaseurh"
keys:  .word 0:512

.text

.globl main 

main:
    add     $t0, $0, $0         # i (t0) = 0
    li		$t7, 46      		# $t7 = 46

count:
    lb      $t1, input($t0)     # t1 = input[i]
    li	    $v0, 11
    add     $a0, $0, $t1
    syscall
    sll     $t1, $t1, 2         # converts t1 to actual word position (<< 2)
    li	    $v0, 1
    add     $a0, $0, $t1
    syscall
    lw      $t2, keys($t1)      # load the current count
    addi    $t2, $t2, 1         # increment by one
    sw      $t2, keys($t1)      # store the cont
    addi	$t0, $t0, 1			# i++
    bne     $t0, $t7, count     # for(..., i < count, )

cumu_init:
    li      $2, 10
    syscall
    addi    $t0, $0, 1          # for i (t0) = 1
    addi    $t6, $0, 128        # t6 = 128 (ascii's length)

cumu:
    addi    $t1, $t0, -1        # t1 =  i-1
    sll     $t0, $t1, 2         # convert both (i) and (i-1) to word position
    sll     $t1, $t1, 2
    lw		$t3, keys($t0)		# load count[i]
    lw		$t4, keys($t1)		# load count[i-1]
    add     $t3, $t3, $t4       # count[i] = count[i] + count[i-1]
    sw      $t3, keys($t0)      # store back
    srl     $t0, $t0, 2         # shifting i back from position to i
    addi    $t0, $t0, 1         # for(..., ..., i++)
    bne     $t0, $t6, cumu      # for(..., i < 128, ...)

end:
    li      $2, 10
    syscall

