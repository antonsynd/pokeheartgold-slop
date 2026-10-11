	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222D7DC

	.text

	thumb_func_start ov40_0222D7DC
ov40_0222D7DC: ; 0x0222D7DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _0222D7FC ; =0x00002E94
	bl SpriteManager_UnloadCharObjById
	ldr r0, [r4, #0x1c]
	ldr r1, _0222D7FC ; =0x00002E94
	bl SpriteManager_UnloadCellObjById
	ldr r0, [r4, #0x1c]
	ldr r1, _0222D7FC ; =0x00002E94
	bl SpriteManager_UnloadAnimObjById
	pop {r4, pc}
	nop
_0222D7FC: .word 0x00002E94
	thumb_func_end ov40_0222D7DC

