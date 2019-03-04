	.file	"simplify.c"
	.text
	.p2align 4,,15
	.type	SGet, @function
SGet:
.LFB50:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	ch(%rip), %eax
	cmpl	$-1, %eax
	jne	.L31
	jmp	.L2
	.p2align 4,,10
	.p2align 3
.L33:
	movq	f(%rip), %rdi
	call	_IO_getc@PLT
	cmpl	$-1, %eax
	movl	%eax, ch(%rip)
	je	.L2
.L31:
	cmpl	$32, %eax
	jle	.L33
.L2:
	leal	1(%rax), %edx
	cmpl	$58, %edx
	ja	.L5
	leaq	.L7(%rip), %rcx
	movslq	(%rcx,%rdx,4), %rdx
	addq	%rcx, %rdx
	jmp	*%rdx
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L17-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L8-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L9-.L7
	.long	.L10-.L7
	.long	.L11-.L7
	.long	.L12-.L7
	.long	.L5-.L7
	.long	.L13-.L7
	.long	.L5-.L7
	.long	.L14-.L7
	.long	.L15-.L7
	.long	.L15-.L7
	.long	.L15-.L7
	.long	.L15-.L7
	.long	.L15-.L7
	.long	.L15-.L7
	.long	.L15-.L7
	.long	.L15-.L7
	.long	.L15-.L7
	.long	.L15-.L7
	.text
	.p2align 4,,10
	.p2align 3
.L17:
	movl	$9, %edx
.L1:
	movl	%edx, %eax
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L8:
	.cfi_restore_state
	movq	f(%rip), %rdi
	call	_IO_getc@PLT
	movl	$4, %edx
	movl	%eax, ch(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
	movq	f(%rip), %rdi
	call	_IO_getc@PLT
	movl	$5, %edx
	movl	%eax, ch(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L10:
	.cfi_restore_state
	movq	f(%rip), %rdi
	call	_IO_getc@PLT
	movl	$6, %edx
	movl	%eax, ch(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L11:
	.cfi_restore_state
	movq	f(%rip), %rdi
	call	_IO_getc@PLT
	movl	$2, %edx
	movl	%eax, ch(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
	movq	f(%rip), %rdi
	call	_IO_getc@PLT
	xorl	%edx, %edx
	movl	%eax, ch(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_restore_state
	movq	f(%rip), %rdi
	call	_IO_getc@PLT
	movl	$1, %edx
	movl	%eax, ch(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L14:
	.cfi_restore_state
	movq	f(%rip), %rdi
	call	_IO_getc@PLT
	movl	$3, %edx
	movl	%eax, ch(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L15:
	.cfi_restore_state
	xorl	%edx, %edx
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L34:
	movl	val(%rip), %edx
.L16:
	leal	(%rdx,%rdx,4), %edx
	movq	f(%rip), %rdi
	leal	-48(%rax,%rdx,2), %eax
	movl	%eax, val(%rip)
	call	_IO_getc@PLT
	leal	-48(%rax), %edx
	movl	%eax, ch(%rip)
	cmpl	$9, %edx
	jbe	.L34
	movl	$7, %edx
	jmp	.L1
	.p2align 4,,10
	.p2align 3
.L5:
	leal	-65(%rax), %ecx
	movl	$10, %edx
	cmpl	$57, %ecx
	ja	.L1
	movq	f(%rip), %rdi
	movb	%al, varChar(%rip)
	call	_IO_getc@PLT
	movl	$8, %edx
	movl	%eax, ch(%rip)
	jmp	.L1
	.cfi_endproc
.LFE50:
	.size	SGet, .-SGet
	.p2align 4,,15
	.type	diff, @function
diff:
.LFB46:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, %rbx
	movzbl	0(%rbp), %eax
	leal	-7(%rax), %edx
	cmpb	$1, %dl
	jbe	.L41
	cmpb	$1, %al
	jbe	.L42
	cmpb	$2, %al
	je	.L43
	cmpb	$3, %al
	je	.L44
.L35:
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L41:
	.cfi_restore_state
	cmpb	$7, %al
	movb	$7, (%rbx)
	movq	$0, 8(%rbx)
	setne	%al
	movq	$0, 16(%rbx)
	movzbl	%al, %eax
	movl	%eax, 4(%rbx)
	movq	%rbx, %rax
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore_state
	movl	$24, %edi
	call	malloc@PLT
	movq	8(%rbp), %rdi
	movb	$2, (%rax)
	movq	%rax, %r14
	call	diff
	movq	16(%rbp), %r12
	movl	$24, %edi
	movq	%rax, 8(%r14)
	movq	%r12, 16(%r14)
	call	malloc@PLT
	movq	%rax, %r13
	movb	$2, (%rax)
	movq	8(%rbp), %rax
	movq	%r12, %rdi
	movq	%rax, 8(%r13)
	call	diff
	movl	$24, %edi
	movq	%rax, 16(%r13)
	call	malloc@PLT
	movq	16(%rbp), %rbp
	movq	%rax, %r12
	movb	$1, (%rax)
	movq	%r14, 8(%rax)
	movq	%r13, 16(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movb	$3, (%rbx)
	movb	$2, (%rax)
	movq	%rbp, 8(%rax)
	movq	%rbp, 16(%rax)
	movq	%r12, 8(%rbx)
	movq	%rax, 16(%rbx)
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L42:
	movq	8(%rbp), %rdi
	movb	%al, (%rbx)
	call	diff
	movq	16(%rbp), %rdi
	movq	%rax, 8(%rbx)
	call	diff
	movq	%rax, 16(%rbx)
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L43:
	movl	$24, %edi
	call	malloc@PLT
	movl	$24, %edi
	movq	%rax, %r13
	call	malloc@PLT
	movq	%rax, %r12
	movq	8(%rbp), %rax
	movq	16(%rbp), %rdi
	movb	$2, 0(%r13)
	movq	%rax, 8(%r13)
	call	diff
	movq	16(%rbp), %r14
	movq	8(%rbp), %rdi
	movq	%rax, 16(%r13)
	movb	$2, (%r12)
	call	diff
	movq	%r14, 16(%r12)
	movq	%rax, 8(%r12)
	movb	$0, (%rbx)
	movq	%r13, 8(%rbx)
	movq	%r12, 16(%rbx)
	jmp	.L35
	.cfi_endproc
.LFE46:
	.size	diff, .-diff
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"+"
.LC1:
	.string	"-"
.LC2:
	.string	"*"
.LC3:
	.string	"/"
.LC4:
	.string	"%c\n"
.LC5:
	.string	"%d\n"
	.text
	.p2align 4,,15
	.type	Print, @function
Print:
.LFB41:
	.cfi_startproc
	testq	%rdi, %rdi
	je	.L64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	.L51(%rip), %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%esi, %ebp
.L57:
	leal	1(%rbp), %r13d
	movq	16(%r12), %rdi
	movl	%r13d, %esi
	call	Print
	testl	%ebp, %ebp
	jle	.L47
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L48:
	movl	$32, %edi
	addl	$1, %ebx
	call	putchar@PLT
	cmpl	%ebp, %ebx
	jne	.L48
.L47:
	cmpb	$8, (%r12)
	ja	.L49
	movzbl	(%r12), %eax
	movslq	(%r14,%rax,4), %rax
	addq	%r14, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L51:
	.long	.L50-.L51
	.long	.L52-.L51
	.long	.L53-.L51
	.long	.L54-.L51
	.long	.L49-.L51
	.long	.L49-.L51
	.long	.L49-.L51
	.long	.L55-.L51
	.long	.L56-.L51
	.text
	.p2align 4,,10
	.p2align 3
.L50:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
.L49:
	movq	8(%r12), %r12
	movl	%r13d, %ebp
	testq	%r12, %r12
	jne	.L57
.L67:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L56:
	.cfi_restore_state
	movl	4(%r12), %edx
	leaq	.LC4(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	movl	%r13d, %ebp
	call	__printf_chk@PLT
	movq	8(%r12), %r12
	testq	%r12, %r12
	jne	.L57
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L55:
	movl	4(%r12), %edx
	leaq	.LC5(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	movl	%r13d, %ebp
	call	__printf_chk@PLT
	movq	8(%r12), %r12
	testq	%r12, %r12
	jne	.L57
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L54:
	leaq	.LC3(%rip), %rdi
	movl	%r13d, %ebp
	call	puts@PLT
	movq	8(%r12), %r12
	testq	%r12, %r12
	jne	.L57
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L53:
	leaq	.LC2(%rip), %rdi
	movl	%r13d, %ebp
	call	puts@PLT
	movq	8(%r12), %r12
	testq	%r12, %r12
	jne	.L57
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L52:
	leaq	.LC1(%rip), %rdi
	movl	%r13d, %ebp
	call	puts@PLT
	movq	8(%r12), %r12
	testq	%r12, %r12
	jne	.L57
	jmp	.L67
	.p2align 4,,10
	.p2align 3
.L64:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	rep ret
	.cfi_endproc
.LFE41:
	.size	Print, .-Print
	.section	.rodata.str1.1
.LC6:
	.string	"( "
.LC7:
	.string	"+ "
.LC8:
	.string	"- "
.LC9:
	.string	"* "
.LC10:
	.string	"/ "
.LC11:
	.string	"%d "
.LC12:
	.string	"%c "
.LC13:
	.string	") "
	.text
	.p2align 4,,15
	.type	InOrder, @function
InOrder:
.LFB44:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movzbl	(%rdi), %eax
	movq	%rdi, %rbx
	subl	$7, %eax
	cmpb	$1, %al
	jbe	.L69
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
.L69:
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L88
.L70:
	cmpb	$8, (%rbx)
	ja	.L71
	movzbl	(%rbx), %eax
	leaq	.L73(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L73:
	.long	.L72-.L73
	.long	.L74-.L73
	.long	.L75-.L73
	.long	.L76-.L73
	.long	.L71-.L73
	.long	.L71-.L73
	.long	.L71-.L73
	.long	.L77-.L73
	.long	.L78-.L73
	.text
	.p2align 4,,10
	.p2align 3
.L78:
	movl	4(%rbx), %edx
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L71:
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L89
.L79:
	movzbl	(%rbx), %eax
	subl	$7, %eax
	cmpb	$1, %al
	jbe	.L68
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	jmp	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L68:
	.cfi_restore_state
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L89:
	.cfi_restore_state
	call	InOrder
	jmp	.L79
	.p2align 4,,10
	.p2align 3
.L88:
	call	InOrder
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L72:
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L74:
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L75:
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L76:
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L71
	.p2align 4,,10
	.p2align 3
.L77:
	movl	4(%rbx), %edx
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L71
	.cfi_endproc
.LFE44:
	.size	InOrder, .-InOrder
	.p2align 4,,15
	.type	PreOrder, @function
PreOrder:
.LFB43:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	leaq	.L94(%rip), %rbp
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.L91:
	cmpb	$8, (%rbx)
	ja	.L92
	movzbl	(%rbx), %eax
	movslq	0(%rbp,%rax,4), %rax
	addq	%rbp, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L94:
	.long	.L93-.L94
	.long	.L95-.L94
	.long	.L96-.L94
	.long	.L97-.L94
	.long	.L92-.L94
	.long	.L92-.L94
	.long	.L92-.L94
	.long	.L98-.L94
	.long	.L99-.L94
	.text
	.p2align 4,,10
	.p2align 3
.L99:
	movl	4(%rbx), %edx
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L92:
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.L104
.L100:
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L91
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L98:
	.cfi_restore_state
	movl	4(%rbx), %edx
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	8(%rbx), %rdi
	testq	%rdi, %rdi
	je	.L100
	.p2align 4,,10
	.p2align 3
.L104:
	call	PreOrder
	movq	16(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.L91
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L97:
	.cfi_restore_state
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L96:
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L93:
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L92
	.p2align 4,,10
	.p2align 3
.L95:
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L92
	.cfi_endproc
.LFE43:
	.size	PreOrder, .-PreOrder
	.section	.rodata.str1.1
.LC14:
	.string	"simplify.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC15:
	.string	"(sym == number) || (sym == var) || (sym == lparen)"
	.section	.rodata.str1.1
.LC16:
	.string	"sym == rparen"
	.text
	.p2align 4,,15
	.type	Factor, @function
Factor:
.LFB51:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movl	sym(%rip), %eax
	leal	-7(%rax), %edx
	cmpl	$1, %edx
	jbe	.L106
	cmpl	$5, %eax
	jne	.L118
.L106:
	cmpl	$7, %eax
	je	.L119
	cmpl	$8, %eax
	je	.L120
	xorl	%eax, %eax
	call	SGet
	movl	%eax, sym(%rip)
	xorl	%eax, %eax
	call	Term
	movq	%rax, %rbx
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	ja	.L121
.L113:
	testl	%eax, %eax
	je	.L122
	xorl	%eax, %eax
	call	SGet
	movl	$24, %edi
	movl	%eax, sym(%rip)
	call	malloc@PLT
	movq	%rax, %rbp
	movb	$1, (%rax)
.L116:
	movq	%rbx, 8(%rbp)
	xorl	%eax, %eax
	movq	%rbp, %rbx
	call	Term
	movq	%rax, 16(%rbp)
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	jbe	.L113
.L121:
	cmpl	$6, %eax
	jne	.L123
	xorl	%eax, %eax
	call	SGet
	movl	%eax, sym(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L122:
	.cfi_restore_state
	call	SGet
	movl	$24, %edi
	movl	%eax, sym(%rip)
	call	malloc@PLT
	movq	%rax, %rbp
	movb	$0, (%rax)
	jmp	.L116
	.p2align 4,,10
	.p2align 3
.L120:
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, %rbx
	movb	$8, (%rax)
	movsbl	varChar(%rip), %eax
.L117:
	movl	%eax, 4(%rbx)
	movq	$0, 8(%rbx)
	xorl	%eax, %eax
	movq	$0, 16(%rbx)
	call	SGet
	movl	%eax, sym(%rip)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L119:
	.cfi_restore_state
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, %rbx
	movb	$7, (%rax)
	movl	val(%rip), %eax
	jmp	.L117
.L123:
	leaq	__PRETTY_FUNCTION__.3223(%rip), %rcx
	leaq	.LC14(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	movl	$503, %edx
	call	__assert_fail@PLT
.L118:
	leaq	__PRETTY_FUNCTION__.3223(%rip), %rcx
	leaq	.LC14(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	movl	$478, %edx
	call	__assert_fail@PLT
	.cfi_endproc
.LFE51:
	.size	Factor, .-Factor
	.p2align 4,,15
	.type	Term, @function
Term:
.LFB52:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	xorl	%eax, %eax
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	Factor
	movq	%rax, %rbx
	movl	sym(%rip), %eax
	leal	-2(%rax), %edx
	cmpl	$2, %edx
	ja	.L132
.L129:
	cmpl	$2, %eax
	je	.L133
	cmpl	$3, %eax
	movl	$0, %eax
	je	.L134
	call	SGet
	movl	$24, %edi
	movl	%eax, sym(%rip)
	call	malloc@PLT
	movq	%rax, %rbp
	movb	$4, (%rax)
.L131:
	movq	%rbx, 8(%rbp)
	xorl	%eax, %eax
	movq	%rbp, %rbx
	call	Factor
	movq	%rax, 16(%rbp)
	movl	sym(%rip), %eax
	leal	-2(%rax), %edx
	cmpl	$2, %edx
	jbe	.L129
.L132:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L133:
	.cfi_restore_state
	xorl	%eax, %eax
	call	SGet
	movl	$24, %edi
	movl	%eax, sym(%rip)
	call	malloc@PLT
	movq	%rax, %rbp
	movb	$2, (%rax)
	jmp	.L131
	.p2align 4,,10
	.p2align 3
.L134:
	call	SGet
	movl	$24, %edi
	movl	%eax, sym(%rip)
	call	malloc@PLT
	movq	%rax, %rbp
	movb	$3, (%rax)
	jmp	.L131
	.cfi_endproc
.LFE52:
	.size	Term, .-Term
	.p2align 4,,15
	.type	PostOrder, @function
PostOrder:
.LFB45:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	8(%rdi), %rbp
	testq	%rbp, %rbp
	jne	.L185
.L136:
	movq	16(%rbx), %rbp
	testq	%rbp, %rbp
	jne	.L186
.L146:
	cmpb	$8, (%rbx)
	ja	.L135
	movzbl	(%rbx), %eax
	leaq	.L158(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L158:
	.long	.L157-.L158
	.long	.L159-.L158
	.long	.L160-.L158
	.long	.L161-.L158
	.long	.L135-.L158
	.long	.L135-.L158
	.long	.L135-.L158
	.long	.L162-.L158
	.long	.L163-.L158
	.text
	.p2align 4,,10
	.p2align 3
.L186:
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L187
.L147:
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L188
.L148:
	cmpb	$8, 0(%rbp)
	ja	.L146
	movzbl	0(%rbp), %eax
	leaq	.L150(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L150:
	.long	.L149-.L150
	.long	.L151-.L150
	.long	.L152-.L150
	.long	.L153-.L150
	.long	.L146-.L150
	.long	.L146-.L150
	.long	.L146-.L150
	.long	.L154-.L150
	.long	.L155-.L150
	.text
	.p2align 4,,10
	.p2align 3
.L185:
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L189
.L137:
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L190
.L138:
	cmpb	$8, 0(%rbp)
	ja	.L136
	movzbl	0(%rbp), %eax
	leaq	.L140(%rip), %rdx
	movslq	(%rdx,%rax,4), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L140:
	.long	.L139-.L140
	.long	.L141-.L140
	.long	.L142-.L140
	.long	.L143-.L140
	.long	.L136-.L140
	.long	.L136-.L140
	.long	.L136-.L140
	.long	.L144-.L140
	.long	.L145-.L140
	.text
	.p2align 4,,10
	.p2align 3
.L163:
	movl	4(%rbx), %edx
	leaq	.LC12(%rip), %rsi
.L184:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L157:
	.cfi_restore_state
	leaq	.LC7(%rip), %rsi
.L183:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$1, %edi
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__printf_chk@PLT
	.p2align 4,,10
	.p2align 3
.L159:
	.cfi_restore_state
	leaq	.LC8(%rip), %rsi
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L160:
	leaq	.LC9(%rip), %rsi
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L161:
	leaq	.LC10(%rip), %rsi
	jmp	.L183
	.p2align 4,,10
	.p2align 3
.L162:
	movl	4(%rbx), %edx
	leaq	.LC11(%rip), %rsi
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L190:
	call	PostOrder
	jmp	.L138
	.p2align 4,,10
	.p2align 3
.L135:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L188:
	.cfi_restore_state
	call	PostOrder
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L187:
	call	PostOrder
	jmp	.L147
	.p2align 4,,10
	.p2align 3
.L189:
	call	PostOrder
	jmp	.L137
	.p2align 4,,10
	.p2align 3
.L155:
	movl	4(%rbp), %edx
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L149:
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L151:
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L152:
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L153:
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L154:
	movl	4(%rbp), %edx
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L146
	.p2align 4,,10
	.p2align 3
.L145:
	movl	4(%rbp), %edx
	leaq	.LC12(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L139:
	leaq	.LC7(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L144:
	movl	4(%rbp), %edx
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L143:
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L141:
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L136
	.p2align 4,,10
	.p2align 3
.L142:
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L136
	.cfi_endproc
.LFE45:
	.size	PostOrder, .-PostOrder
	.p2align 4,,15
	.type	simplify, @function
simplify:
.LFB47:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	8(%rdi), %rbp
	testq	%rbp, %rbp
	jne	.L251
.L193:
	movq	16(%rbx), %rbp
	testq	%rbp, %rbp
	jne	.L252
.L205:
	movzbl	(%rbx), %eax
	cmpb	$2, %al
	je	.L253
	testb	%al, %al
	jne	.L221
	movq	8(%rbx), %rdx
	movabsq	$-4294967041, %rax
	movq	16(%rbx), %rcx
	movq	(%rdx), %rsi
	andq	%rax, %rsi
	cmpq	$7, %rsi
	je	.L250
	andq	(%rcx), %rax
	cmpq	$7, %rax
	je	.L254
	cmpq	%rax, %rsi
	jne	.L191
	movl	$24, %edi
	call	malloc@PLT
	movb	$2, (%rbx)
	movb	$7, (%rax)
	movl	$2, 4(%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movq	%rax, 8(%rbx)
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L221:
	cmpb	$1, %al
	je	.L255
.L191:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L253:
	.cfi_restore_state
	movq	8(%rbx), %rcx
	movabsq	$-4294967041, %rax
	movq	(%rcx), %rdx
	andq	%rax, %rdx
	cmpq	$7, %rdx
	je	.L217
	movq	16(%rbx), %rsi
	andq	(%rsi), %rax
	cmpq	$7, %rax
	je	.L217
	movabsq	$4294967303, %rdi
	cmpq	%rdi, %rdx
	je	.L256
	cmpq	%rdi, %rax
	jne	.L191
.L250:
	movzbl	(%rcx), %eax
	movb	%al, (%rbx)
	movl	4(%rcx), %eax
	movdqu	8(%rcx), %xmm0
	movl	%eax, 4(%rbx)
	movups	%xmm0, 8(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L255:
	.cfi_restore_state
	movq	8(%rbx), %rdx
	movabsq	$-4294967041, %rax
	movq	(%rdx), %rcx
	andq	%rax, %rcx
	movq	%rcx, %rdx
	movq	16(%rbx), %rcx
	andq	(%rcx), %rax
	cmpq	%rax, %rdx
	jne	.L191
.L217:
	movb	$7, (%rbx)
	movl	$0, 4(%rbx)
	movq	$0, 8(%rbx)
	movq	$0, 16(%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L252:
	.cfi_restore_state
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L257
.L206:
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L258
.L207:
	movzbl	0(%rbp), %eax
	cmpb	$2, %al
	je	.L259
	testb	%al, %al
	jne	.L213
	movq	8(%rbp), %rdx
	movabsq	$-4294967041, %rax
	movq	16(%rbp), %rcx
	movq	(%rdx), %rsi
	andq	%rax, %rsi
	cmpq	$7, %rsi
	je	.L249
	andq	(%rcx), %rax
	cmpq	$7, %rax
	je	.L260
	cmpq	%rax, %rsi
	jne	.L205
	movl	$24, %edi
	call	malloc@PLT
	movb	$7, (%rax)
	movl	$2, 4(%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movb	$2, 0(%rbp)
	movq	%rax, 8(%rbp)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L251:
	movq	8(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L261
.L194:
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	jne	.L262
.L195:
	movzbl	0(%rbp), %eax
	cmpb	$2, %al
	je	.L263
	testb	%al, %al
	jne	.L201
	movq	8(%rbp), %rdx
	movabsq	$-4294967041, %rax
	movq	16(%rbp), %rcx
	movq	(%rdx), %rsi
	andq	%rax, %rsi
	cmpq	$7, %rsi
	je	.L247
	andq	(%rcx), %rax
	cmpq	$7, %rax
	je	.L264
	cmpq	%rax, %rsi
	jne	.L193
	movl	$24, %edi
	call	malloc@PLT
	movb	$7, (%rax)
	movl	$2, 4(%rax)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	movb	$2, 0(%rbp)
	movq	%rax, 8(%rbp)
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L263:
	movq	8(%rbp), %rcx
	movabsq	$-4294967041, %rax
	movq	(%rcx), %rdx
	andq	%rax, %rdx
	cmpq	$7, %rdx
	je	.L246
	movq	16(%rbp), %rsi
	andq	(%rsi), %rax
	cmpq	$7, %rax
	je	.L246
	movabsq	$4294967303, %rdi
	cmpq	%rdi, %rdx
	je	.L265
	cmpq	%rdi, %rax
	jne	.L193
.L247:
	movzbl	(%rcx), %eax
	movb	%al, 0(%rbp)
	movl	4(%rcx), %eax
	movdqu	8(%rcx), %xmm0
	movl	%eax, 4(%rbp)
	movups	%xmm0, 8(%rbp)
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L259:
	movq	8(%rbp), %rcx
	movabsq	$-4294967041, %rax
	movq	(%rcx), %rdx
	andq	%rax, %rdx
	cmpq	$7, %rdx
	je	.L248
	movq	16(%rbp), %rsi
	andq	(%rsi), %rax
	cmpq	$7, %rax
	je	.L248
	movabsq	$4294967303, %rdi
	cmpq	%rdi, %rdx
	je	.L266
	cmpq	%rdi, %rax
	jne	.L205
.L249:
	movzbl	(%rcx), %eax
	movb	%al, 0(%rbp)
	movl	4(%rcx), %eax
	movdqu	8(%rcx), %xmm0
	movl	%eax, 4(%rbp)
	movups	%xmm0, 8(%rbp)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L254:
	movzbl	(%rdx), %eax
	movb	%al, (%rbx)
	movl	4(%rdx), %eax
	movdqu	8(%rdx), %xmm0
	movl	%eax, 4(%rbx)
	movups	%xmm0, 8(%rbx)
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L213:
	cmpb	$1, %al
	jne	.L205
	movq	8(%rbp), %rdx
	movabsq	$-4294967041, %rax
	movq	(%rdx), %rcx
	andq	%rax, %rcx
	movq	%rcx, %rdx
	movq	16(%rbp), %rcx
	andq	(%rcx), %rax
	cmpq	%rax, %rdx
	jne	.L205
.L248:
	movb	$7, 0(%rbp)
	movl	$0, 4(%rbp)
	movq	$0, 8(%rbp)
	movq	$0, 16(%rbp)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L201:
	cmpb	$1, %al
	jne	.L193
	movq	8(%rbp), %rdx
	movabsq	$-4294967041, %rax
	movq	(%rdx), %rcx
	andq	%rax, %rcx
	movq	%rcx, %rdx
	movq	16(%rbp), %rcx
	andq	(%rcx), %rax
	cmpq	%rax, %rdx
	jne	.L193
.L246:
	movb	$7, 0(%rbp)
	movl	$0, 4(%rbp)
	movq	$0, 8(%rbp)
	movq	$0, 16(%rbp)
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L257:
	call	simplify
	jmp	.L206
	.p2align 4,,10
	.p2align 3
.L262:
	call	simplify
	jmp	.L195
	.p2align 4,,10
	.p2align 3
.L261:
	call	simplify
	jmp	.L194
	.p2align 4,,10
	.p2align 3
.L258:
	call	simplify
	jmp	.L207
	.p2align 4,,10
	.p2align 3
.L256:
	movzbl	(%rsi), %eax
	movb	%al, (%rbx)
	movl	4(%rsi), %eax
	movdqu	8(%rsi), %xmm0
	movl	%eax, 4(%rbx)
	movups	%xmm0, 8(%rbx)
	jmp	.L191
	.p2align 4,,10
	.p2align 3
.L264:
	movzbl	(%rdx), %eax
	movb	%al, 0(%rbp)
	movl	4(%rdx), %eax
	movdqu	8(%rdx), %xmm0
	movl	%eax, 4(%rbp)
	movups	%xmm0, 8(%rbp)
	jmp	.L193
	.p2align 4,,10
	.p2align 3
.L260:
	movzbl	(%rdx), %eax
	movb	%al, 0(%rbp)
	movl	4(%rdx), %eax
	movdqu	8(%rdx), %xmm0
	movl	%eax, 4(%rbp)
	movups	%xmm0, 8(%rbp)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L266:
	movzbl	(%rsi), %eax
	movb	%al, 0(%rbp)
	movl	4(%rsi), %eax
	movdqu	8(%rsi), %xmm0
	movl	%eax, 4(%rbp)
	movups	%xmm0, 8(%rbp)
	jmp	.L205
	.p2align 4,,10
	.p2align 3
.L265:
	movzbl	(%rsi), %eax
	movb	%al, 0(%rbp)
	movl	4(%rsi), %eax
	movdqu	8(%rsi), %xmm0
	movl	%eax, 4(%rbp)
	movups	%xmm0, 8(%rbp)
	jmp	.L193
	.cfi_endproc
.LFE47:
	.size	simplify, .-simplify
	.section	.rodata.str1.1
.LC17:
	.string	"r+t"
.LC18:
	.string	"sym == eof"
.LC19:
	.string	"====== EXPRESSION ======"
.LC20:
	.string	"====== TREE ======"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"====== DERIVED EXPRESSION ======"
	.section	.rodata.str1.1
.LC22:
	.string	"====== DERIVED TREE ======"
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"====== SIMPLIFIED DERIVED EXPRESSION ======"
	.align 8
.LC24:
	.string	"====== SIMPLIFIED DERIVED TREE ======"
	.section	.rodata.str1.1
.LC25:
	.string	"usage: expreval <filename>"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB54:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	cmpl	$2, %edi
	je	.L281
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
.L275:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L281:
	.cfi_restore_state
	movq	8(%rsi), %rdi
	leaq	.LC17(%rip), %rsi
	movl	$-1, ch(%rip)
	call	fopen@PLT
	testq	%rax, %rax
	movq	%rax, f(%rip)
	je	.L269
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
.L269:
	xorl	%eax, %eax
	call	SGet
	movl	%eax, sym(%rip)
	xorl	%eax, %eax
	call	Term
	movq	%rax, %rbx
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	ja	.L282
.L273:
	testl	%eax, %eax
	je	.L283
	xorl	%eax, %eax
	call	SGet
	movl	$24, %edi
	movl	%eax, sym(%rip)
	call	malloc@PLT
	movq	%rax, %rbp
	movb	$1, (%rax)
.L280:
	movq	%rbx, 8(%rbp)
	xorl	%eax, %eax
	movq	%rbp, %rbx
	call	Term
	movq	%rax, 16(%rbp)
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	jbe	.L273
.L282:
	cmpl	$9, %eax
	jne	.L284
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movq	%rbx, %rdi
	call	PreOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	%rbx, %rdi
	call	InOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	%rbx, %rdi
	call	PostOrder
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	Print
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movq	%rbx, %rdi
	call	diff
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	PreOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	%rbx, %rdi
	call	InOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	%rbx, %rdi
	call	PostOrder
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	Print
	movq	%rbx, %rdi
	call	simplify
	movq	%rbx, %rdi
	call	simplify
	movq	%rbx, %rdi
	call	simplify
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movq	%rbx, %rdi
	call	PreOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	%rbx, %rdi
	call	InOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	%rbx, %rdi
	call	PostOrder
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	xorl	%esi, %esi
	movq	%rbx, %rdi
	call	Print
	jmp	.L275
.L283:
	call	SGet
	movl	$24, %edi
	movl	%eax, sym(%rip)
	call	malloc@PLT
	movq	%rax, %rbp
	movb	$0, (%rax)
	jmp	.L280
.L284:
	leaq	__PRETTY_FUNCTION__.3247(%rip), %rcx
	leaq	.LC14(%rip), %rsi
	leaq	.LC18(%rip), %rdi
	movl	$602, %edx
	call	__assert_fail@PLT
	.cfi_endproc
.LFE54:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.3223, @object
	.size	__PRETTY_FUNCTION__.3223, 7
__PRETTY_FUNCTION__.3223:
	.string	"Factor"
	.type	__PRETTY_FUNCTION__.3247, @object
	.size	__PRETTY_FUNCTION__.3247, 5
__PRETTY_FUNCTION__.3247:
	.string	"main"
	.local	sym
	.comm	sym,4,4
	.comm	varChar,1,1
	.local	val
	.comm	val,4,4
	.local	ch
	.comm	ch,4,4
	.local	f
	.comm	f,8,8
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
