	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E9694
	.extern ov102_021E937C
	.extern ov102_021E94A4
	.extern ov102_021EA380
	.extern ov102_021EB1E0
	.extern ov102_021EB6C8
	.extern ov102_021EBCBC
	.extern ov102_021EC240

	.text

	.text
	thumb_func_start ov102_021E9694
ov102_021E9694: ; 0x021E9694
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	ldr r0, [r6, #0x14]
	ldr r7, [r6]
	cmp r0, #0
	beq _021E96AA
	cmp r0, #1
	beq _021E96CC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021E96AA:
	mov r0, #5
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x23
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r6, #0x14]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r6, #0x14]
	pop {r4, r5, r6, r7, pc}
_021E96CC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _021E9784
	mov r0, #0x1e
	ldr r1, [r6]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov102_021EA380
	mov r0, #0x79
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov102_021EB1E0
	mov r0, #0x7a
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov102_021EB6C8
	mov r0, #0x7b
	ldr r1, [r6]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl ov102_021EBCBC
	mov r0, #0x1f
	ldr r1, [r6]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov102_021EC240
	ldr r0, [r6]
	bl ov102_021E937C
	mov r4, #0
	add r5, r7, #0
_021E971A:
	mov r0, #0x1d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E9728
	bl Heap_Free
_021E9728:
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E9736
	bl Heap_Free
_021E9736:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _021E971A
	mov r0, #2
	bl FontID_Release
	ldr r0, [r7, #0x20]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #3
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r7, #0x20]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r2, _021E9788 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add r0, r6, #0
	bl ov102_021E94A4
_021E9784:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E9788: .word 0x04000304
	thumb_func_end ov102_021E9694

