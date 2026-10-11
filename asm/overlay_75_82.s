	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02249780
	.extern ov75_02249ACC
	.extern ov75_02249AD0
	.extern ov75_02249ADC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02249780
ov75_02249780: ; 0x02249780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	mov r4, #0
	add r5, r1, #0
	ldr r2, _02249828 ; =ov75_02249ACC
	str r0, [sp]
	add r1, r4, #0
	add r0, r2, #0
	add r3, r4, #0
_02249794:
	add r6, r1, #0
	ldrsb r6, [r0, r6]
	add r2, r2, #1
	add r1, r1, #1
	strb r6, [r5, r4]
	ldrsb r6, [r2, r3]
	add r4, r4, #1
	cmp r6, #0
	bne _02249794
	add r0, r7, #0
	mov r1, #0xc8
	bl Heap_Alloc
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, #0x64
	bl CopyStringToU16Array
	ldr r7, [sp, #4]
	mov r6, #0
_022497BE:
	ldrh r1, [r7]
	ldr r0, _0224982C ; =0x0000FFFF
	cmp r1, r0
	bne _022497CC
	mov r2, #0
	strb r2, [r5, r4]
	b _02249802
_022497CC:
	ldr r2, [sp, #4]
	lsl r3, r6, #1
	ldrh r3, [r2, r3]
	ldr r1, _02249830 ; =ov75_02249ADC
	mov r0, #0
_022497D6:
	ldrh r2, [r1]
	cmp r2, r3
	bne _022497EA
	ldr r1, _02249830 ; =ov75_02249ADC
	lsl r2, r0, #2
	add r2, r1, r2
	mov r1, #2
	ldrsb r1, [r2, r1]
	strb r1, [r5, r4]
	b _022497F2
_022497EA:
	add r0, r0, #1
	add r1, r1, #4
	cmp r0, #0xa
	blo _022497D6
_022497F2:
	cmp r0, #0xa
	blo _022497FA
	bl GF_AssertFail
_022497FA:
	add r4, r4, #1
	add r7, r7, #2
	add r6, r6, #1
	b _022497BE
_02249802:
	ldr r1, _02249834 ; =ov75_02249AD0
	add r3, r2, #0
	add r0, r1, #0
_02249808:
	add r6, r2, #0
	ldrsb r6, [r0, r6]
	add r1, r1, #1
	add r2, r2, #1
	strb r6, [r5, r4]
	ldrsb r6, [r1, r3]
	add r4, r4, #1
	cmp r6, #0
	bne _02249808
	mov r0, #0
	strb r0, [r5, r4]
	ldr r0, [sp, #4]
	bl Heap_Free
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02249828: .word ov75_02249ACC
_0224982C: .word 0x0000FFFF
_02249830: .word ov75_02249ADC
_02249834: .word ov75_02249AD0
	thumb_func_end ov75_02249780

