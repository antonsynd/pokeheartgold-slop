	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225ADA4
	.extern ov89_0225C8BC
	.extern ov89_0225CD3C
	.extern ov89_0225CD40
	.extern ov89_0225CD44
	.extern ov89_0225CD48

	.text

	.text
	thumb_func_start ov89_0225ADA4
ov89_0225ADA4: ; 0x0225ADA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldrh r0, [r1, #2]
	ldrb r1, [r1, #8]
	add r5, r2, #0
	add r6, r3, #0
	bl ov89_0225C8BC
	add r7, r0, #0
	cmp r7, #3
	blo _0225ADC0
	bl GF_AssertFail
_0225ADC0:
	add r0, r4, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl sub_020182B0
	ldr r1, _0225AE98 ; =ov89_0225CD3C
	lsl r0, r7, #4
	ldr r2, [sp, #0x14]
	ldr r1, [r1, r0]
	add r1, r2, r1
	str r1, [r5]
	ldr r1, _0225AE9C ; =ov89_0225CD40
	ldr r2, [sp, #0x14]
	ldr r1, [r1, r0]
	add r1, r2, r1
	str r1, [r5, #4]
	ldr r1, _0225AEA0 ; =ov89_0225CD44
	ldr r2, [sp, #0x10]
	ldr r1, [r1, r0]
	add r1, r2, r1
	str r1, [r5, #8]
	ldr r1, _0225AEA4 ; =ov89_0225CD48
	ldr r2, [sp, #0x10]
	ldr r0, [r1, r0]
	add r0, r2, r0
	str r0, [r5, #0xc]
	cmp r6, #1
	bne _0225AE92
	add r0, r4, #0
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl sub_020182CC
	ldr r1, [r5, #4]
	ldr r0, [r5]
	mov r2, #0x64
	sub r4, r1, r0
	ldr r0, [sp, #8]
	mov r3, #0
	asr r1, r0, #0x1f
	asr r6, r4, #0x1f
	bl _ll_mul
	mov r2, #1
	lsl r2, r2, #0xc
	mov r3, #0
	bl _ll_sdiv
	add r2, r4, #0
	add r3, r6, #0
	bl _ll_mul
	mov r2, #0x64
	mov r3, #0
	bl _ll_sdiv
	sub r0, r0, r4
	sbc r1, r6
	mov r2, #2
	mov r3, #0
	bl _ll_sdiv
	ldr r1, [r5, #4]
	mov r2, #0x64
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5]
	mov r3, #0
	sub r0, r1, r0
	str r0, [r5]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	sub r4, r1, r0
	ldr r0, [sp, #4]
	asr r6, r4, #0x1f
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #1
	lsl r2, r2, #0xc
	mov r3, #0
	bl _ll_sdiv
	add r2, r4, #0
	add r3, r6, #0
	bl _ll_mul
	mov r2, #0x64
	mov r3, #0
	bl _ll_sdiv
	sub r0, r0, r4
	sbc r1, r6
	mov r2, #2
	mov r3, #0
	bl _ll_sdiv
	ldr r1, [r5, #8]
	add r1, r1, r0
	str r1, [r5, #8]
	ldr r1, [r5, #0xc]
	sub r0, r1, r0
	str r0, [r5, #0xc]
_0225AE92:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225AE98: .word ov89_0225CD3C
_0225AE9C: .word ov89_0225CD40
_0225AEA0: .word ov89_0225CD44
_0225AEA4: .word ov89_0225CD48
	thumb_func_end ov89_0225ADA4

