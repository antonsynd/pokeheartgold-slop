	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0224355C
	.extern ov40_0224320C
	.extern ov40_02244054

	.text

	.text
	thumb_func_start ov40_0224355C
ov40_0224355C: ; 0x0224355C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	mov r0, #0x64
	mov r1, #0x6d
	bl String_New
	mov r1, #0xb2
	str r0, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r7, r1]
	mov r6, #0
	add r0, r1, #4
	str r6, [r7, r0]
	add r0, r1, #0
	add r0, #8
	sub r1, #0xc4
	str r6, [r7, r0]
	ldr r0, [r7, r1]
	cmp r0, #0
	ble _022435FC
	mov r0, #0xb3
	lsl r0, r0, #2
	add r4, r7, #0
	add r5, r7, r0
_02243590:
	ldr r0, [r4]
	cmp r0, #0
	bne _022435A8
	mov r0, #1
	str r0, [r4]
	ldr r1, [r4, #8]
	bl ov40_02244054
	add r1, r0, #0
	ldr r0, [r4, #0xc]
	bl ManagedSprite_SetAnim
_022435A8:
	ldr r0, [r4]
	sub r0, r0, #1
	str r0, [sp, #8]
	cmp r6, #0
	beq _022435C2
	ldr r0, [r5]
	ldr r1, [r5, #4]
	mov r2, #0xa
	mov r3, #0
	bl _ll_mul
	str r0, [r5]
	str r1, [r5, #4]
_022435C2:
	ldr r2, [r5]
	ldr r1, [sp, #8]
	ldr r0, [r5, #4]
	add r2, r2, r1
	ldr r1, _02243610 ; =0x00000000
	str r2, [r5]
	adc r0, r1
	str r0, [r5, #4]
	mov r0, #1
	str r0, [sp]
	mov r2, #1
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r3, r2, #0
	bl String16_FormatInteger
	mov r0, #0xb
	lsl r0, r0, #6
	ldr r0, [r7, r0]
	ldr r1, [sp, #4]
	bl String_Cat
	mov r0, #0x81
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r6, r6, #1
	add r4, #0x1c
	cmp r6, r0
	blt _02243590
_022435FC:
	ldr r0, [sp, #4]
	bl String_Delete
	add r0, r7, #0
	mov r1, #3
	bl ov40_0224320C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02243610: .word 0x00000000
	thumb_func_end ov40_0224355C

