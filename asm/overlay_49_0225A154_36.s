	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A7C0

    .text

	thumb_func_start ov49_0225A7C0
ov49_0225A7C0: ; 0x0225A7C0
	push {r3, lr}
	ldr r0, [r0, #4]
	bl SpriteList_RenderAndAnimateSprites
	bl thunk_UpdateCellTransferStateManager
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_0225A7C0

