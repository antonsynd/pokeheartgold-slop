	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E5BB4
	.public ov99_021E5EB4
	.public ov99_021E5FE8

	.text

	thumb_func_start ov99_021E5FE8
ov99_021E5FE8: ; 0x021E5FE8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	bl ov99_021E5BB4
	cmp r0, #0
	beq _021E6006
	add r0, r5, #0
	add r5, #0x84
	ldr r2, [r5]
	add r1, r4, #0
	bl ov99_021E5EB4
	pop {r3, r4, r5, pc}
_021E6006:
	ldr r0, [r5, #4]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r0, [r5, #4]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	pop {r3, r4, r5, pc}
	thumb_func_end ov99_021E5FE8

