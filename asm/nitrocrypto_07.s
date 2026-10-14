	.include "asm/macros.inc"
	.include "nitrocrypto.inc"
	.include "global.inc"
	.public BN_mod_exp_mont
	.extern BN_MONT_CTX_free
	.extern BN_MONT_CTX_new
	.extern BN_MONT_CTX_set_word
	.extern BN_copy
	.extern BN_gen_exp_bits
	.extern BN_mod
	.extern BN_set_word
	.extern bn_expand2
	.extern bn_fix_top
	.extern bn_from_montgomery_words
	.extern bn_mul_normal
	.extern bn_sqr_normal
	.extern bn_zexpand

	; rc4s-arm4cw.o

	.text

	.text
	arm_func_start BN_mod_exp_mont
BN_mod_exp_mont: ; 0x022376C0
	stmdb sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x7c
	mov r4, #0
	mov r5, r3
	mov r3, r4
	str r3, [sp, #0x34]
	ldr r3, [r5]
	str r0, [sp, #4]
	mov r0, r4
	ldr r3, [r3]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	ands r0, r3, #1
	ldr r0, [sp, #0xa0]
	str r4, [sp, #8]
	str r0, [sp, #0xa0]
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #0x7c
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r1, [r7, #4]
	ldr r0, [r0]
	cmp r1, #0
	str r0, [sp, #0xc]
	beq _02237744
	cmp r1, #1
	bne _02237760
	ldr r0, [r7]
	ldr r0, [r0]
	cmp r0, #0
	bne _02237760
_02237744:
	ldr r0, [sp, #4]
	mov r1, #0
	bl BN_set_word
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02237760:
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _02237784
	cmp r1, #1
	bne _022377A0
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #0
	bne _022377A0
_02237784:
	ldr r0, [sp, #4]
	mov r1, #1
	bl BN_set_word
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_022377A0:
	cmp r1, #1
	bne _022377D4
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r0, #1
	bne _022377D4
	ldr r0, [sp, #4]
	mov r1, r7
	bl BN_copy
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_022377D4:
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _02237808
	bl BN_MONT_CTX_new
	str r0, [sp, #0x18]
	cmp r0, #0
	beq _02237E64
	ldr r2, [sp, #0xa0]
	mov r1, r5
	bl BN_MONT_CTX_set_word
	cmp r0, #0
	beq _02237E64
_02237808:
	ldr r3, [sp, #0xa0]
	add r1, sp, #0x34
	mov r4, r3
	ldr r4, [r4, #0x10c]
	mov r0, r6
	mov r2, #0
	str r4, [sp, #0x1c]
	bl BN_gen_exp_bits
	cmp r0, #0
	beq _02237E64
	ldr r0, [sp, #0xa0]
	ldr r0, [r0]
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0]
	ldr r0, [sp, #0x34]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	str r0, [sp, #0x10]
	add r0, r1, #0x3f
	bl _s32_div_f
	ldr r1, [sp, #0x34]
	mov r4, r0
	add r0, r1, #4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	ldr r3, [r7, #4]
	ldr sl, [r0, #0x24]
	cmp r3, sl
	bne _022378A0
	ldr r1, [r7]
	sub r2, sl, #1
	ldr r0, [r5]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, r2, lsl #2]
	cmp r1, r0
	strlo r7, [sp, #0x14]
	blo _02237958
_022378A0:
	cmp r3, sl
	bge _02237914
	ldr r0, [sp, #0xa0]
	ldr r3, [r0]
	add r1, r0, #4
	add r2, r3, #1
	str r2, [r0]
	mov r0, #0x14
	mla r0, r3, r0, r1
	ldr r2, [r7, #4]
	mov r1, r0
	str r2, [r1, #4]
	mov r1, sl
	str r0, [sp, #0x14]
	bl bn_zexpand
	ldr r0, [r7, #4]
	mov r2, #0
	cmp r0, #0
	ble _02237958
_022378EC:
	ldr r1, [r7]
	ldr r0, [sp, #0x14]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0]
	str r1, [r0, r2, lsl #2]
	ldr r0, [r7, #4]
	add r2, r2, #1
	cmp r2, r0
	blt _022378EC
	b _02237958
_02237914:
	ldr r0, [sp, #0xa0]
	mov r2, r5
	ldr r3, [r0]
	mov r1, r7
	add r5, r3, #1
	str r5, [r0]
	add r5, r0, #4
	mov r0, #0x14
	mla r0, r3, r0, r5
	ldr r3, [sp, #0xa0]
	str r0, [sp, #0x14]
	bl BN_mod
	cmp r0, #0
	beq _02237E64
	ldr r0, [sp, #0x14]
	mov r1, sl
	bl bn_zexpand
_02237958:
	ldr r0, [sp, #0xa0]
	ldr r3, [r0]
	ldr r0, [r6, #4]
	add r1, r3, #1
	mul r2, r0, r4
	ldr r0, [sp, #0xa0]
	mov r4, r2, lsl #1
	str r1, [r0]
	ldr r1, [r0]
	add r4, r4, #7
	add r2, r1, #1
	str r2, [r0]
	ldr r2, [sp, #0x10]
	ldr r0, [r0]
	mul r5, r2, sl
	mov r2, r4, asr #1
	add r2, r4, r2, lsr #30
	add r5, r5, r2, asr #2
	ldr r2, [sp, #0xa0]
	mov r6, #0x14
	add r2, r2, #4
	mla r8, r1, r6, r2
	mla r4, r3, r6, r2
	ldr r1, [sp, #0xa0]
	add r3, r0, #1
	mla r7, r0, r6, r2
	str r3, [r1]
	mov r0, r1
	ldr r0, [r0]
	mla r6, r0, r6, r2
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	cmp sl, r0
	ldrle r0, [sp, #4]
	ble _022379FC
	ldr r0, [sp, #4]
	mov r1, sl
	bl bn_expand2
_022379FC:
	cmp r0, #0
	beq _02237E64
	ldr r0, [r8, #8]
	mov r1, sl, lsl #2
	cmp r1, r0
	movle r0, r8
	ble _02237A20
	mov r0, r8
	bl bn_expand2
_02237A20:
	cmp r0, #0
	beq _02237E64
	ldr r1, [r7, #8]
	mov r0, sl, lsl #1
	str r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r7
	ble _02237A4C
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl bn_expand2
_02237A4C:
	cmp r0, #0
	beq _02237E64
	ldr r0, [r4, #8]
	cmp r5, r0
	movle r0, r4
	ble _02237A70
	mov r1, r5
	mov r0, r4
	bl bn_expand2
_02237A70:
	cmp r0, #0
	beq _02237E64
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r6
	ble _02237A98
	ldr r1, [sp, #0x24]
	mov r0, r6
	bl bn_expand2
_02237A98:
	cmp r0, #0
	beq _02237E64
	ldr r0, [sp, #0x18]
	ldr fp, [r8]
	ldr r8, [r7]
	ldr r6, [r6]
	ldr r1, [r4]
	ldr r7, [r0, #0x48]
	ldr r5, [r0, #0x20]
	ldr r3, [sp, #0x18]
	str r1, [sp, #0x38]
	str sl, [sp]
	ldr r1, [sp, #0x14]
	ldr r3, [r3, #0xc]
	ldr r1, [r1]
	mov r0, r6
	mov r2, sl
	bl bn_mul_normal
	str r7, [sp]
	ldr r0, [sp, #0x38]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl bn_from_montgomery_words
	ldr r0, [sp, #0x10]
	cmp r0, #1
	ble _02237BA0
	ldr r1, [sp, #0x38]
	mov r0, r6
	mov r2, sl
	mov r3, fp
	bl bn_sqr_normal
	mov r0, fp
	mov r1, r6
	mov r2, r5
	mov r3, sl
	str r7, [sp]
	bl bn_from_montgomery_words
	ldr r0, [sp, #0x10]
	mov r4, #1
	cmp r0, #1
	ble _02237BA0
	mov r0, sl, lsl #2
	str r0, [sp, #0x28]
	add sb, sp, #0x38
_02237B4C:
	sub r3, r4, #1
	ldr r2, [sb, r3, lsl #2]
	ldr r1, [sp, #0x28]
	mov r0, r6
	add r1, r2, r1
	str r1, [sb, r4, lsl #2]
	str sl, [sp]
	ldr r1, [sb, r3, lsl #2]
	mov r2, sl
	mov r3, fp
	bl bn_mul_normal
	str r7, [sp]
	ldr r0, [sb, r4, lsl #2]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl bn_from_montgomery_words
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _02237B4C
_02237BA0:
	ldr r3, [sp, #0x34]
	add r0, r3, #1
	str r0, [sp, #0x34]
	add r2, r0, #1
	ldrb r1, [r3]
	str r2, [sp, #0x34]
	ldrb sb, [r3, #1]
	cmp sb, #0xff
	bne _02237C20
	cmp r1, #0
	bne _02237C20
	add r0, r2, #1
	str r0, [sp, #0x34]
	ldrb r1, [r2]
	b _02237BF0
_02237BDC:
	add sb, sb, #0x100
	ldr r1, [sp, #0x34]
	add r1, r1, #2
	str r1, [sp, #0x34]
	ldrb r1, [r0, #1]
_02237BF0:
	ldr r0, [sp, #0x34]
	ldrb r2, [r0]
	cmp r2, #0xff
	bne _02237C08
	cmp r1, #0
	beq _02237BDC
_02237C08:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r0, [r0]
	add r0, r0, #1
	add sb, sb, r0
_02237C20:
	mov r2, r1, asr #1
	add r0, sp, #0x38
	ldr r0, [r0, r2, lsl #2]
	mov r1, r8
	mov r2, sl, lsl #2
	bl MI_CpuCopy8
	cmp sb, #0
	beq _02237DF8
	mov r0, #0xff
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
_02237C50:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02237C84
	mov r3, r0
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	ldr r3, [r3]
	blx r3
	cmp r0, #0
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	bne _02237E64
_02237C84:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	ands r0, r0, #0x4000
	bne _02237E64
	cmp sb, #0
	ldr r4, [sp, #0x30]
	ble _02237CD8
_02237CA0:
	mov r0, r6
	mov r1, r8
	mov r2, sl
	mov r3, fp
	bl bn_sqr_normal
	str r7, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl bn_from_montgomery_words
	add r4, r4, #1
	cmp r4, sb
	blt _02237CA0
_02237CD8:
	ldr r2, [sp, #0x34]
	add r0, r2, #1
	str r0, [sp, #0x34]
	add r1, r0, #1
	ldrb r0, [r2]
	str r1, [sp, #0x34]
	ldrb sb, [r2, #1]
	cmp sb, #0xff
	bne _02237D58
	cmp r0, #0
	bne _02237D58
	add r0, r1, #1
	str r0, [sp, #0x34]
	ldrb r0, [r1]
	b _02237D28
_02237D14:
	add sb, sb, #0x100
	ldr r0, [sp, #0x34]
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldrb r0, [r1, #1]
_02237D28:
	ldr r1, [sp, #0x34]
	ldrb r2, [r1]
	cmp r2, #0xff
	bne _02237D40
	cmp r0, #0
	beq _02237D14
_02237D40:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r1, [r1]
	add r1, r1, #1
	add sb, sb, r1
_02237D58:
	cmp r0, #0
	bne _02237D68
	cmp sb, #0
	beq _02237DF8
_02237D68:
	cmp sb, #0
	bne _02237D78
	cmp r0, #1
	beq _02237DB4
_02237D78:
	mov r1, r0, asr #1
	str sl, [sp]
	add r0, sp, #0x38
	ldr r3, [r0, r1, lsl #2]
	mov r0, r6
	mov r1, r8
	mov r2, sl
	bl bn_mul_normal
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, sl
	str r7, [sp]
	bl bn_from_montgomery_words
	b _02237DF0
_02237DB4:
	ldr r0, [sp, #0x14]
	str sl, [sp]
	ldr r3, [r0]
	mov r0, r6
	mov r1, r8
	mov r2, sl
	bl bn_mul_normal
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl bn_from_montgomery_words
	b _02237E3C
_02237DF0:
	cmp sb, #0
	bne _02237C50
_02237DF8:
	ldr r0, [sp, #0x24]
	mov r2, sl
	cmp sl, r0
	bge _02237E20
	mov r1, #0
_02237E0C:
	ldr r0, [sp, #0x24]
	str r1, [r8, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r0
	blt _02237E0C
_02237E20:
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0]
	mov r1, r8
	mov r2, r5
	mov r3, sl
	bl bn_from_montgomery_words
_02237E3C:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	ands r0, r0, #0x4000
	bne _02237E64
	ldr r0, [sp, #4]
	mov r1, r0
	str sl, [r1, #4]
	bl bn_fix_top
	mov r0, #1
	str r0, [sp, #8]
_02237E64:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02237E8C
	ldr r3, [r0]
	mov r1, #0xff
	mvn r2, #0
	blx r3
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #8]
_02237E8C:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bne _02237EA8
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02237EA8
	bl BN_MONT_CTX_free
_02237EA8:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0xa0]
	ldr r0, [sp, #8]
	str r2, [r1]
	add sp, sp, #0x7c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end BN_mod_exp_mont

