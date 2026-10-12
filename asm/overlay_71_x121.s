	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02249B64
	.extern ov71_022476C4
	.extern ov71_02247704
	.extern ov71_02247738
	.extern ov71_02249A60
	.extern ov71_02249A98
	.extern ov71_02249C90

	.text

	.text
	thumb_func_start ov71_02249B64
ov71_02249B64: ; 0x02249B64
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0x68]
	cmp r1, #0x3c
	bge _02249B74
	add r1, r1, #1
	str r1, [r4, #0x68]
_02249B74:
	ldr r1, [r4, #0x60]
	cmp r1, #4
	bls _02249B7C
	b _02249C8C
_02249B7C:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02249B88: ; jump table
	.short _02249B92 - _02249B88 - 2 ; case 0
	.short _02249BC6 - _02249B88 - 2 ; case 1
	.short _02249C04 - _02249B88 - 2 ; case 2
	.short _02249C4A - _02249B88 - 2 ; case 3
	.short _02249C7A - _02249B88 - 2 ; case 4
_02249B92:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov71_02249A98
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	ldr r0, [r4, #0xc]
	bl ov71_02247738
	cmp r0, #0
	beq _02249C8C
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249BC6:
	ldr r0, [r4, #0xc]
	bl ov71_02247738
	cmp r0, #0
	bne _02249BE0
	ldr r0, [r4]
	bl ov71_02249C90
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249BE0:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov71_02249A98
	ldr r0, [r4, #0xc]
	add r4, #0x28
	add r1, r4, #0
	bl ov71_022476C4
	add sp, #4
	pop {r3, r4, pc}
_02249C04:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x3c]
	add r0, r1, r0
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x40]
	add r0, r1, r0
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov71_02249A98
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	ldr r0, [r4, #0x68]
	cmp r0, #0x3c
	blt _02249C8C
	mov r1, #2
	lsl r1, r1, #0xa
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	lsr r3, r1, #2
	bl ov71_02249A60
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249C4A:
	add r0, r4, #0
	bl ov71_02249A98
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x28
	bl ov71_022476C4
	ldr r0, [r4, #0x64]
	add r0, r0, #1
	str r0, [r4, #0x64]
	cmp r0, #0xc
	blt _02249C8C
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov71_02247704
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, pc}
_02249C7A:
	ldr r1, [r4, #0x64]
	add r1, r1, #1
	str r1, [r4, #0x64]
	cmp r1, #8
	ble _02249C8C
	mov r1, #0
	str r1, [r4, #4]
	bl SysTask_Destroy
_02249C8C:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov71_02249B64

