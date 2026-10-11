	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public _021E954C
	.public ov99_021E5D2C

	.text

	thumb_func_start ov99_021E5D2C
ov99_021E5D2C: ; 0x021E5D2C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	bl NARC_Delete
	ldr r6, _021E5D54 ; =_021E954C
	mov r4, #0
_021E5D3A:
	ldrb r1, [r6, r4]
	ldr r0, [r5, #4]
	bl FreeBgTilemapBuffer
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #8
	blo _021E5D3A
	ldr r0, [r5, #4]
	bl Heap_Free
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E5D54: .word _021E954C
	thumb_func_end ov99_021E5D2C

