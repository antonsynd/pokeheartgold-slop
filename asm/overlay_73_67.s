#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E847C

	.text

	thumb_func_start ov73_021E847C
ov73_021E847C: ; 0x021E847C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021E84C0 ; =0x00000D34
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeleteCharTransferTask
	ldr r0, _021E84C4 ; =0x00000D38
	ldr r0, [r6, r0]
	bl SpriteTransfer_DeletePlttTransferTask
	ldr r7, _021E84C8 ; =0x00000D24
	mov r4, #0
	add r5, r6, #0
_021E8496:
	ldr r0, [r5, r7]
	bl Destroy2DGfxResObjMan
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021E8496
	ldr r0, _021E84CC ; =0x00000BF8
	ldr r0, [r6, r0]
	bl SpriteList_Delete
	ldr r0, _021E84CC ; =0x00000BF8
	mov r1, #0
	str r1, [r6, r0]
	bl OamManager_Free
	bl ObjCharTransfer_Destroy
	bl ObjPlttTransfer_Destroy
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E84C0: .word 0x00000D34
_021E84C4: .word 0x00000D38
_021E84C8: .word 0x00000D24
_021E84CC: .word 0x00000BF8
	thumb_func_end ov73_021E847C

