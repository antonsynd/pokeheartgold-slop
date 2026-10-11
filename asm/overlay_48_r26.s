	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02259650
	.extern ov48_0225B1B0

	.text

	.text
	thumb_func_start ov48_02259650
ov48_02259650: ; 0x02259650
	push {r4, r5, r6, lr}
	ldr r5, _02259680 ; =ov48_0225B1B0
	add r6, r0, #0
	mov r4, #0
_02259658:
	ldr r1, [r5]
	ldr r0, [r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02259658
	ldr r0, [r6]
	bl Heap_Free
	ldr r0, _02259684 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	pop {r4, r5, r6, pc}
	nop
_02259680: .word ov48_0225B1B0
_02259684: .word gSystem + 0x60
	thumb_func_end ov48_02259650

