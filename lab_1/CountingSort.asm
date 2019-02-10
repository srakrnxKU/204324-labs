.data
.align 4

# our input is 46 characters in length
input:  .ascii "cadljgarhtoxAHdgdsJKhYEasduwBRLsdgHoptxnaseurh"
output_lead: .ascii "Sorted string is "
output: .byte '0':46
keys:  .word 0:46

.text

.globl main 

main:
    add     $t0, $0, $0         # i (t0) = 0
    li		$t7, 46      		# $t7 = 46

count:
    lb      $t1, input($t0)     # t1 = input[i]
    sll     $t1, $t1, 2         # converts t1 to actual word position (<< 2)
    lw      $t2, keys($t1)      # load the current count
    addi    $t2, $t2, 1         # increment by one
    sw      $t2, keys($t1)      # store the cont
    addi	$t0, $t0, 1			# i++
    bne     $t0, $t7, count     # for(..., i < count, ...)

cumu_init:
    li      $t0, 1              # for i (t0) = 1
    li      $t6, 256            # $t6 = 128 (ascii's length)

cumu:
    addi    $t1, $t0, -1        # $t1 =  i-1
    sll     $t0, $t0, 2         # convert both (i) and (i-1) to word position
    sll     $t1, $t1, 2
    lw		$t3, keys($t0)		# load count[i]
    lw		$t4, keys($t1)		# load count[i-1]
    add     $t3, $t3, $t4       # count[i] = count[i] + count[i-1]
    sw      $t3, keys($t0)      # store back
    srl     $t0, $t0, 2         # shifting i back from position to i
    addi    $t0, $t0, 1         # for(..., ..., i++)
    bne     $t0, $t6, cumu      # for(..., i < 128, ...)

buildres_init:
    li      $t0, 0              # for i = 0

buildres:
    lb		$t1, input($t0)		# $t1 = input[i]
    sll     $t4, $t1, 2         # converting $t1 to word position
    lw		$t2, keys($t4)		# $t2 = count[input[i]] - 1
    addi    $t2, $t2, -1
    sb		$t1, output($t2)	# output[$t2] = input[i]
    lw		$t3, keys($t4)		# $t3 = count[input[i]]
    addi    $t3, $t3, -1        # $t3 -= 1
    sw      $t3, keys($t4)
    addi    $t0, $t0, 1         # for(..., ..., i++)
    bne     $t0, $t7, buildres

print:
    li      $v0, 4
    la      $a0, output_lead
    syscall
    li	    $v0, 11
    li		$a0, 10
    syscall

end:
    li      $2, 10
    syscall

