	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222FF48

	.text

	thumb_func_start ov40_0222FF48
ov40_0222FF48: ; 0x0222FF48
	push {r4, lr}
	add r4, r2, #0
	beq _0222FF5E
	ldr r2, _0222FF60 ; =0x000186A0
	ldr r0, [r0, #0x1c]
	add r1, r1, r2
	bl SpriteManager_UnloadCharObjById
	add r0, r4, #0
	bl Sprite_DeleteAndFreeResources
_0222FF5E:
	pop {r4, pc}
	.balign 4, 0
_0222FF60: .word 0x000186A0
	thumb_func_end ov40_0222FF48

