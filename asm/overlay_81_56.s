	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_022409B0
	.public ov81_02242218
	.public ov81_02242D88
	.public ov81_02242E08
	.public ov81_02242E14

	.text

	thumb_func_start ov81_02242218
ov81_02242218: ; 0x02242218
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, r3
	bhs _022422FA
	add r0, r4, #0
	add r1, r6, #0
	bl Party_GetMonByIndex
	mov r1, #5
	mov r2, #0
	str r0, [sp, #0x1c]
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	ldr r0, [sp, #0x1c]
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	mov r1, #0
	bl GetMonIconNaixEx
	add r1, r0, #0
	mov r0, #0x64
	str r0, [sp]
	mov r0, #0x14
	mov r2, #0
	add r3, sp, #0x24
	bl GfGfxLoader_GetCharData
	str r0, [sp, #0x20]
	mov r0, #0x12
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r2, #2
	lsl r1, r1, #2
	add r1, r5, r1
	sub r0, #0xec
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x24]
	lsl r2, r2, #8
	ldr r1, [r1, #0x14]
	mov r3, #2
	bl ov81_02242E14
	ldr r0, [sp, #0x20]
	bl Heap_Free
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	mov r2, #0
	bl GetMonIconPaletteEx
	add r1, r0, #0
	mov r0, #0x12
	lsl r0, r0, #6
	ldr r2, [r5, r0]
	sub r0, #0xec
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r0, [r2, r0]
	bl ov81_02242E08
	mov r0, #0x12
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	sub r0, #0xec
	lsl r1, r1, #2
	add r1, r5, r1
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov81_02242D88
	mov r1, #0x12
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	mov r0, #1
	eor r0, r2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	sub r1, #0xec
	lsl r0, r0, #2
	add r0, r5, r0
	ldr r0, [r0, r1]
	mov r1, #0
	bl ov81_02242D88
	mov r1, #0
	lsl r2, r6, #0x18
	str r1, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	str r1, [sp, #0x10]
	add r5, #0xd0
	add r1, r5, #0
	lsr r2, r2, #0x18
	mov r3, #4
	str r4, [sp, #0x14]
	bl ov81_022409B0
_022422FA:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov81_02242218

