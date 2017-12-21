	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-m0
	.eabi_attribute	6, 12	@ Tag_CPU_arch
	.eabi_attribute	8, 0	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"projobfuscated.c"
	.globl	operation
	.align	1
	.type	operation,%function
	.code	16                      @ @operation
	.thumb_func
operation:
	.fnstart
@ BB#0:
	.save	{r4, r5, r7, lr}
	push	{r4, r5, r7, lr}
	.pad	#32
	sub	sp, #32
	mov	r1, r0
	add	r2, sp, #28
	strb	r0, [r2]
	add	r0, sp, #24
	movs	r3, #38
	strb	r3, [r0]
	add	r4, sp, #16
	strb	r3, [r4]
	ldr	r3, [sp, #16]
	ldr	r5, [sp, #24]
	adds	r3, r3, r5
	subs	r3, #38
	strb	r3, [r0]
	ldrb	r0, [r2]
	ldr	r2, [sp, #24]
	eors	r0, r2
	add	r2, sp, #20
	strb	r0, [r2]
	ldrb	r0, [r4]
	movs	r2, #1
	cmp	r0, #0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	bne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	add	r0, sp, #24
	ldrb	r0, [r0]
	movs	r1, #1
	cmp	r0, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
	bne	.LBB0_3
@ BB#2:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp]                @ 4-byte Spill
.LBB0_3:
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_4
.LBB0_4:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	movs	r1, #1
	ands	r0, r1
	add	r1, sp, #16
	strb	r0, [r1]
	add	r0, sp, #20
	ldrb	r0, [r0]
	add	sp, #32
	pop	{r4, r5, r7, pc}
.Lfunc_end0:
	.size	operation, .Lfunc_end0-operation
	.cantunwind
	.fnend


	.ident	"clang version 3.8.0-2ubuntu4 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 5	@ Tag_ABI_optimization_goals
