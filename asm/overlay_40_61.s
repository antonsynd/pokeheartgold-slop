	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222FE68

	.text

	thumb_func_start ov40_0222FE68
ov40_0222FE68: ; 0x0222FE68
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _0222FE88 ; =0x000186A0
	bl SpriteManager_UnloadPlttObjById
	ldr r0, [r4, #0x1c]
	ldr r1, _0222FE88 ; =0x000186A0
	bl SpriteManager_UnloadCellObjById
	ldr r0, [r4, #0x1c]
	ldr r1, _0222FE88 ; =0x000186A0
	bl SpriteManager_UnloadAnimObjById
	pop {r4, pc}
	nop
_0222FE88: .word 0x000186A0
	thumb_func_end ov40_0222FE68

