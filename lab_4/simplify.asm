	.file	"simplify.c"
	.text
	.local	f
	.comm	f,8,8
	.local	ch
	.comm	ch,4,4
	.local	val
	.comm	val,4,4
	.section	.rodata
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
	.type	Print, @function
Print:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	cmpq	$0, -24(%rbp)
	je	.L13
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Print
	movl	$0, %ebx
	jmp	.L3
.L4:
	movl	$32, %edi
	call	putchar@PLT
	addl	$1, %ebx
.L3:
	cmpl	-28(%rbp), %ebx
	jl	.L4
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$8, %eax
	ja	.L5
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L7(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L7(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L6-.L7
	.long	.L8-.L7
	.long	.L9-.L7
	.long	.L10-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L5-.L7
	.long	.L11-.L7
	.long	.L12-.L7
	.text
.L6:
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	jmp	.L5
.L8:
	leaq	.LC1(%rip), %rdi
	call	puts@PLT
	jmp	.L5
.L9:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	jmp	.L5
.L10:
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
	jmp	.L5
.L12:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L5
.L11:
	movq	-24(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
.L5:
	movl	-28(%rbp), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	Print
.L13:
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Print, .-Print
	.section	.rodata
.LC6:
	.string	"+ "
.LC7:
	.string	"- "
.LC8:
	.string	"* "
.LC9:
	.string	"/ "
.LC10:
	.string	"%d "
.LC11:
	.string	"%c "
	.text
	.type	PrintNode, @function
PrintNode:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	cmpl	$8, %eax
	ja	.L23
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L17(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L17(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L17:
	.long	.L16-.L17
	.long	.L18-.L17
	.long	.L19-.L17
	.long	.L20-.L17
	.long	.L23-.L17
	.long	.L23-.L17
	.long	.L23-.L17
	.long	.L21-.L17
	.long	.L22-.L17
	.text
.L16:
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L18:
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L19:
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L20:
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L21:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L15
.L22:
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
.L15:
.L23:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	PrintNode, .-PrintNode
	.type	PreOrder, @function
PreOrder:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PrintNode
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L25
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	PreOrder
.L25:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L27
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	PreOrder
.L27:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	PreOrder, .-PreOrder
	.section	.rodata
.LC12:
	.string	"( "
.LC13:
	.string	") "
	.text
	.type	InOrder, @function
InOrder:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	je	.L29
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	je	.L29
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L29:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L30
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	InOrder
.L30:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PrintNode
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L31
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	InOrder
.L31:
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	je	.L33
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	je	.L33
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L33:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	InOrder, .-InOrder
	.type	PostOrder, @function
PostOrder:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L35
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	PostOrder
.L35:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L36
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	PostOrder
.L36:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PrintNode
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	PostOrder, .-PostOrder
	.type	diff, @function
diff:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -120(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	je	.L38
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$8, %al
	jne	.L39
.L38:
	movq	-104(%rbp), %rax
	movb	$7, (%rax)
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L40
	movq	-104(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.L41
.L40:
	movq	-104(%rbp), %rax
	movl	$1, 4(%rax)
.L41:
	movq	-104(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-104(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L42
.L39:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L43
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L44
.L43:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-104(%rbp), %rax
	movb	%dl, (%rax)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	diff
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	diff
	movq	%rax, %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L42
.L44:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L45
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movb	$2, (%rax)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	diff
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movb	$2, (%rax)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	diff
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-104(%rbp), %rax
	movb	$0, (%rax)
	movq	-104(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L42
.L45:
	movq	-120(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$3, %al
	jne	.L42
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movb	$2, (%rax)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	diff
	movq	%rax, %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -88(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-96(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movb	$2, (%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	diff
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	movq	%rdx, 16(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	movb	$1, (%rax)
	movq	-64(%rbp), %rax
	movq	-96(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -56(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$2, (%rax)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-104(%rbp), %rax
	movb	$3, (%rax)
	movq	-104(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-104(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L42:
	movq	-104(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	diff, .-diff
	.type	simplify, @function
simplify:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L48
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	call	simplify
.L48:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L49
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdi
	call	simplify
.L49:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$2, %al
	jne	.L50
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L51
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	je	.L52
.L51:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L53
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L53
.L52:
	movq	-88(%rbp), %rax
	movb	$7, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L56
.L53:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L55
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L55
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-88(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L56
.L55:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L61
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	4(%rax), %eax
	cmpl	$1, %eax
	jne	.L61
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-88(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L61
.L50:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L57
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L58
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L58
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -72(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	-64(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L56
.L58:
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	$7, %al
	jne	.L60
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	4(%rax), %eax
	testl	%eax, %eax
	jne	.L60
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movb	%dl, (%rax)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -56(%rbp)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-88(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-88(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, 16(%rax)
	jmp	.L56
.L60:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L61
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L61
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movb	$7, (%rax)
	movq	-40(%rbp), %rax
	movl	$2, 4(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-40(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-88(%rbp), %rax
	movb	$2, (%rax)
	movq	-88(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	jmp	.L61
.L57:
	movq	-88(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$1, %al
	jne	.L61
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movzbl	(%rax), %edx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L61
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movl	4(%rax), %edx
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movl	4(%rax), %eax
	cmpl	%eax, %edx
	jne	.L61
	movq	-88(%rbp), %rax
	movb	$7, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, 4(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-88(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.L61
.L56:
.L61:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	simplify, .-simplify
	.section	.rodata
.LC14:
	.string	"r+t"
	.text
	.type	SInit, @function
SInit:
.LFB12:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$-1, ch(%rip)
	movq	-8(%rbp), %rax
	leaq	.LC14(%rip), %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, f(%rip)
	movq	f(%rip), %rax
	testq	%rax, %rax
	je	.L64
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
.L64:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	SInit, .-SInit
	.type	Number, @function
Number:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, val(%rip)
	jmp	.L66
.L68:
	movl	val(%rip), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, %edx
	movl	ch(%rip), %eax
	addl	%edx, %eax
	subl	$48, %eax
	movl	%eax, val(%rip)
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
.L66:
	movl	ch(%rip), %eax
	cmpl	$47, %eax
	jle	.L69
	movl	ch(%rip), %eax
	cmpl	$57, %eax
	jle	.L68
.L69:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	Number, .-Number
	.comm	varChar,1,1
	.type	SGet, @function
SGet:
.LFB14:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$8, %rsp
	.cfi_offset 3, -24
	jmp	.L71
.L73:
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
.L71:
	movl	ch(%rip), %eax
	cmpl	$-1, %eax
	je	.L72
	movl	ch(%rip), %eax
	cmpl	$32, %eax
	jle	.L73
.L72:
	movl	ch(%rip), %eax
	addl	$1, %eax
	cmpl	$58, %eax
	ja	.L74
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L76(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L76(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L76:
	.long	.L75-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L77-.L76
	.long	.L74-.L76
	.long	.L74-.L76
	.long	.L78-.L76
	.long	.L79-.L76
	.long	.L80-.L76
	.long	.L81-.L76
	.long	.L74-.L76
	.long	.L82-.L76
	.long	.L74-.L76
	.long	.L83-.L76
	.long	.L84-.L76
	.long	.L84-.L76
	.long	.L84-.L76
	.long	.L84-.L76
	.long	.L84-.L76
	.long	.L84-.L76
	.long	.L84-.L76
	.long	.L84-.L76
	.long	.L84-.L76
	.long	.L84-.L76
	.text
.L75:
	movl	$9, %ebx
	jmp	.L85
.L81:
	movl	$0, %ebx
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
	jmp	.L85
.L82:
	movl	$1, %ebx
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
	jmp	.L85
.L80:
	movl	$2, %ebx
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
	jmp	.L85
.L83:
	movl	$3, %ebx
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
	jmp	.L85
.L77:
	movl	$4, %ebx
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
	jmp	.L85
.L78:
	movl	$5, %ebx
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
	jmp	.L85
.L79:
	movl	$6, %ebx
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
	jmp	.L85
.L84:
	movl	$7, %ebx
	movl	$0, %eax
	call	Number
	jmp	.L85
.L74:
	movl	ch(%rip), %eax
	cmpl	$64, %eax
	jle	.L86
	movl	ch(%rip), %eax
	cmpl	$122, %eax
	jg	.L86
	movl	ch(%rip), %eax
	movb	%al, varChar(%rip)
	movl	$8, %ebx
	movq	f(%rip), %rax
	movq	%rax, %rdi
	call	_IO_getc@PLT
	movl	%eax, ch(%rip)
	jmp	.L85
.L86:
	movl	$10, %ebx
.L85:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	SGet, .-SGet
	.local	sym
	.comm	sym,4,4
	.section	.rodata
.LC15:
	.string	"simplify.c"
	.align 8
.LC16:
	.string	"(sym == number) || (sym == var) || (sym == lparen)"
.LC17:
	.string	"sym == rparen"
	.text
	.type	Factor, @function
Factor:
.LFB15:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	sym(%rip), %eax
	cmpl	$7, %eax
	je	.L89
	movl	sym(%rip), %eax
	cmpl	$8, %eax
	je	.L89
	movl	sym(%rip), %eax
	cmpl	$5, %eax
	je	.L89
	leaq	__PRETTY_FUNCTION__.2899(%rip), %rcx
	movl	$478, %edx
	leaq	.LC15(%rip), %rsi
	leaq	.LC16(%rip), %rdi
	call	__assert_fail@PLT
.L89:
	movl	sym(%rip), %eax
	cmpl	$7, %eax
	jne	.L90
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$7, (%rax)
	movl	val(%rip), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
	jmp	.L91
.L90:
	movl	sym(%rip), %eax
	cmpl	$8, %eax
	jne	.L92
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$8, (%rax)
	movzbl	varChar(%rip), %eax
	movsbl	%al, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
	jmp	.L91
.L92:
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movl	$0, %eax
	call	Expr
	movq	%rax, -8(%rbp)
	movl	sym(%rip), %eax
	cmpl	$6, %eax
	je	.L93
	leaq	__PRETTY_FUNCTION__.2899(%rip), %rcx
	movl	$503, %edx
	leaq	.LC15(%rip), %rsi
	leaq	.LC17(%rip), %rdi
	call	__assert_fail@PLT
.L93:
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
.L91:
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	Factor, .-Factor
	.type	Term, @function
Term:
.LFB16:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	$0, %eax
	call	Factor
	movq	%rax, -32(%rbp)
	jmp	.L96
.L99:
	movl	sym(%rip), %eax
	cmpl	$2, %eax
	jne	.L97
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$2, (%rax)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	call	Factor
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L96
.L97:
	movl	sym(%rip), %eax
	cmpl	$3, %eax
	jne	.L98
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$3, (%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	call	Factor
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.L96
.L98:
	movl	sym(%rip), %eax
	cmpl	$4, %eax
	jne	.L96
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	$4, (%rax)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	call	Factor
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.L96:
	movl	sym(%rip), %eax
	cmpl	$2, %eax
	je	.L99
	movl	sym(%rip), %eax
	cmpl	$3, %eax
	je	.L99
	movl	sym(%rip), %eax
	cmpl	$4, %eax
	je	.L99
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	Term, .-Term
	.type	Expr, @function
Expr:
.LFB17:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	$0, %eax
	call	Term
	movq	%rax, -24(%rbp)
	jmp	.L102
.L104:
	movl	sym(%rip), %eax
	testl	%eax, %eax
	jne	.L103
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	call	Term
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L102
.L103:
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	jne	.L102
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
	movl	$24, %edi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movb	$1, (%rax)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movl	$0, %eax
	call	Term
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
.L102:
	movl	sym(%rip), %eax
	testl	%eax, %eax
	je	.L104
	movl	sym(%rip), %eax
	cmpl	$1, %eax
	je	.L104
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	Expr, .-Expr
	.section	.rodata
.LC18:
	.string	"sym == eof"
.LC19:
	.string	"====== EXPRESSION ======"
.LC20:
	.string	"====== TREE ======"
	.align 8
.LC21:
	.string	"====== DERIVED EXPRESSION ======"
.LC22:
	.string	"====== DERIVED TREE ======"
	.align 8
.LC23:
	.string	"====== SIMPLIFIED DERIVED EXPRESSION ======"
	.align 8
.LC24:
	.string	"====== SIMPLIFIED DERIVED TREE ======"
.LC25:
	.string	"usage: expreval <filename>"
	.text
	.globl	main
	.type	main, @function
main:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$2, -20(%rbp)
	jne	.L107
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	SInit
	movl	$0, %eax
	call	SGet
	movl	%eax, sym(%rip)
	movl	$0, %eax
	call	Expr
	movq	%rax, -16(%rbp)
	movl	sym(%rip), %eax
	cmpl	$9, %eax
	je	.L108
	leaq	__PRETTY_FUNCTION__.2923(%rip), %rcx
	movl	$602, %edx
	leaq	.LC15(%rip), %rsi
	leaq	.LC18(%rip), %rdi
	call	__assert_fail@PLT
.L108:
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PreOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	InOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	PostOrder
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	Print
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	diff
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PreOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	InOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PostOrder
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC22(%rip), %rdi
	call	puts@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	Print
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	simplify
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	simplify
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	simplify
	leaq	.LC23(%rip), %rdi
	call	puts@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PreOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	InOrder
	movl	$10, %edi
	call	putchar@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	PostOrder
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC24(%rip), %rdi
	call	puts@PLT
	movq	-8(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	Print
	jmp	.L109
.L107:
	leaq	.LC25(%rip), %rdi
	call	puts@PLT
.L109:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	main, .-main
	.section	.rodata
	.type	__PRETTY_FUNCTION__.2899, @object
	.size	__PRETTY_FUNCTION__.2899, 7
__PRETTY_FUNCTION__.2899:
	.string	"Factor"
	.type	__PRETTY_FUNCTION__.2923, @object
	.size	__PRETTY_FUNCTION__.2923, 5
__PRETTY_FUNCTION__.2923:
	.string	"main"
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
