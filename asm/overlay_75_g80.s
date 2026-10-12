	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_022495B0
	.extern ov75_02246CE8
	.extern ov75_022494CC
	.extern ov75_02249534
	.extern ov75_02249884
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_022495B0
ov75_022495B0: ; 0x022495B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	ldr r4, [r6]
	bl ov75_02249534
	cmp r0, #1
	bne _022495C8
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022495C8:
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _022495D8
	cmp r0, #1
	beq _0224963C
	b _02249640
_022495D8:
	add r0, r4, #0
	bl ov75_02246CE8
	add r5, r0, #0
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_020317BC
	cmp r5, r0
	bne _0224961E
	ldr r0, [r4, #4]
	bl sub_02031774
	add r1, sp, #8
	mov r2, #0x73
	bl ov75_02249884
	mov r4, #0
	add r5, sp, #8
	mov r7, #2
_02249600:
	str r7, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	ldr r2, [r5]
	add r1, r4, #0
	mov r3, #4
	bl BufferIntegerAsString
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _02249600
	mov r2, #0x29
	b _02249620
_0224961E:
	mov r2, #0x28
_02249620:
	ldr r0, _02249648 ; =0x00000F0F
	mov r3, #1
	str r0, [sp]
	ldr r1, [r6, #0x34]
	add r0, r6, #0
	bl ov75_022494CC
	add r0, r6, #0
	add r0, #0x94
	ldr r0, [r0]
	add r6, #0x94
	add r0, r0, #1
	str r0, [r6]
	b _02249640
_0224963C:
	mov r0, #0
	str r0, [r6, #8]
_02249640:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249648: .word 0x00000F0F
	thumb_func_end ov75_022495B0

