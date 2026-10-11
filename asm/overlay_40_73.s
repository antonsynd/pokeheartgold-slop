	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02230398
	.public ov40_0223064C

	.text

	thumb_func_start ov40_0223064C
ov40_0223064C: ; 0x0223064C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	str r0, [sp]
	ldr r0, [r6, #0x1c]
	ldr r1, _0223069C ; =0x000186A0
	bl SpriteManager_UnloadPlttObjById
	ldr r0, [r6, #0x1c]
	ldr r1, _0223069C ; =0x000186A0
	bl SpriteManager_UnloadCellObjById
	ldr r0, [r6, #0x1c]
	ldr r1, _0223069C ; =0x000186A0
	bl SpriteManager_UnloadAnimObjById
	mov r4, #0
	ldr r5, [sp]
	add r7, r4, #0
_02230670:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _02230688
	ldr r1, _0223069C ; =0x000186A0
	ldr r0, [r6, #0x1c]
	add r1, r4, r1
	bl SpriteManager_UnloadCharObjById
	ldr r0, [r5, #0xc]
	bl Sprite_DeleteAndFreeResources
	str r7, [r5, #0xc]
_02230688:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _02230670
	ldr r0, [sp]
	add r1, r6, #0
	bl ov40_02230398
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223069C: .word 0x000186A0
	thumb_func_end ov40_0223064C

