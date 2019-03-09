.data # data section

i: .space 4
sum: .space 4
val_a: .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19
val_b: .word 0x7fffffff, 0x7ffffffe, 0x7ffffffd, 0x7ffffffc, 0x7ffffffb, 0x7ffffffa, 0x7ffffff9, 0x7ffffff8, 0x7ffffff7, 0x7ffffff6
text_a: .asciiz "Sum of a = "
text_b: .asciiz "Sum of b = "
text_nl: .asciiz "\n"

.text

.globl main 

main:
    add   $9,$0,$0     # i in $9 = 0
    add   $8,$0,$0     # sum in $8 = 0

loop_a:
    sll   $10,$9,2     # convert "i" to word offset
    lw    $10,val_a($10)   # load a[i]
    add   $8,$8,$10    # sum = sum + a[i];
    addi  $9,$9,1      # for (...; ...; i++
    slti  $10,$9,20     # for (...; i<5;
    bne   $10,$0,loop_a
    sw    $8,sum($0)   # update final sum in memory
    sw    $9,i($0)     # update final i in memory

immed:
    li	$v0, 4
    la	$a0, text_a 
    syscall
    li	$v0, 1 
    add $a0, $0, $8
    syscall
    li	$v0, 4
    la	$a0, text_nl
    syscall
    add   $9,$0,$0     # i in $9 = 0
    add   $8,$0,$0     # sum in $8 = 0
    
loop_b:
    sll   $10,$9,2     # convert "i" to word offset
    lw    $10,val_b($10)   # load a[i]
    addu  $8,$8,$10    # sum = sum + a[i];
    addi  $9,$9,1      # for (...; ...; i++
    slti  $10,$9,10     # for (...; i<5;
    bne   $10,$0,loop_b
    sw    $8,sum($0)   # update final sum in memory
    sw    $9,i($0)     # update final i in memory

end:
    li	$v0, 4
    la	$a0, text_b
    syscall
    li	$v0, 1 
    add $a0, $0, $8
    syscall
    ori   $v0, $0, 10  # system call 10 for exit
    syscall            # we are out of here.

