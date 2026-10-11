	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_022459AC

    .text

	.text
	thumb_func_start ov83_022459AC
ov83_022459AC: ; 0x022459AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldrb r0, [r6, #9]
	mov r1, #1
	bl ov80_02237B24
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02245A34
	add r5, r6, #0
_022459C4:
	ldr r0, _02245A38 ; =0x0000055C
	add r1, r4, #0
	ldr r0, [r6, r0]
	bl Party_GetMonByIndex
	str r0, [sp, #4]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov80_0222A43C
	add r1, r0, #0
	ldr r0, _02245A3C ; =0x000004E4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02245A2A
	bl ov83_02247600
	ldrb r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	bl ov83_02247768
	cmp r4, r0
	bne _02245A14
	ldrb r1, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	cmp r1, r0
	blo _02245A20
_02245A14:
	ldr r0, _02245A3C ; =0x000004E4
	mov r1, #0
	ldr r0, [r5, r0]
	bl ov83_0224760C
	b _02245A2A
_02245A20:
	ldr r0, _02245A3C ; =0x000004E4
	mov r1, #1
	ldr r0, [r5, r0]
	bl ov83_0224760C
_02245A2A:
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _022459C4
_02245A34:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02245A38: .word 0x0000055C
_02245A3C: .word 0x000004E4
	thumb_func_end ov83_022459AC

