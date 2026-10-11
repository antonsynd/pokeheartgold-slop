	.include "asm/macros.inc"
	.include "overlay_49_0225CB50.inc"
	.include "global.inc"
	.public ov49_0225CDEC
	.public ov49_0225D4FC
	.public ov49_0225D520
	.public ov49_0225D5FC

    .text

	thumb_func_start ov49_0225CDEC
ov49_0225CDEC: ; 0x0225CDEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0225CE80 ; =0x00000127
	add r7, r3, #0
	strb r2, [r5, r0]
	sub r0, r0, #1
	strb r1, [r5, r0]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r7, #0
	ldr r4, [sp, #0x18]
	bl ov49_0225D4FC
	add r6, r0, #0
	mov r0, #0xcb
	add r1, r7, #0
	bl NARC_New
	add r7, r0, #0
	ldr r0, _0225CE84 ; =0x00000494
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #4
	bl HeapExp_FndInitAllocator
	ldr r0, _0225CE84 ; =0x00000494
	add r1, r7, #0
	add r0, r5, r0
	str r0, [sp]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r6, #0
	add r3, r4, #0
	bl ov49_0225D5FC
	mov r0, #0xa7
	ldr r2, _0225CE84 ; =0x00000494
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	add r2, r5, r2
	add r3, r6, #0
	str r4, [sp]
	bl ov49_0225DC2C
	mov r0, #0x71
	ldr r2, _0225CE84 ; =0x00000494
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	add r2, r5, r2
	add r3, r6, #0
	str r4, [sp]
	bl ov49_0225D854
	add r0, r7, #0
	bl NARC_Delete
	add r0, r6, #0
	bl ov49_0225D520
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	bl ov49_0225D6F0
	mov r0, #0x4a
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225CE80: .word 0x00000127
_0225CE84: .word 0x00000494
	thumb_func_end ov49_0225CDEC

