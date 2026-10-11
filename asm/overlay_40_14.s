	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222CBC0

	.text

	thumb_func_start ov40_0222CBC0
ov40_0222CBC0: ; 0x0222CBC0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _0222CBD8 ; =0x00002711
	bl SpriteManager_UnloadCharObjById
	ldr r0, [r4, #0x1c]
	ldr r1, _0222CBDC ; =0x00002712
	bl SpriteManager_UnloadCharObjById
	pop {r4, pc}
	nop
_0222CBD8: .word 0x00002711
_0222CBDC: .word 0x00002712
	thumb_func_end ov40_0222CBC0

