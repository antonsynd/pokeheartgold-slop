	.include "asm/macros.inc"
	.include "overlay_88.inc"
	.include "global.inc"
	.public ov88_02258C60
	.extern ov88_02259944

	.text

	.text
	thumb_func_start ov88_02258C60
ov88_02258C60: ; 0x02258C60
	push {r4, r5, r6, lr}
	ldr r5, _02258C90 ; =ov88_02259944
	add r6, r0, #0
	mov r4, #0
_02258C68:
	ldr r1, [r5]
	ldr r0, [r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _02258C68
	ldr r0, [r6]
	bl Heap_Free
	ldr r0, _02258C94 ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	pop {r4, r5, r6, pc}
	nop
_02258C90: .word ov88_02259944
_02258C94: .word gSystem + 0x60
	thumb_func_end ov88_02258C60

