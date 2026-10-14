	.include "asm/macros.inc"
	.include "overlay_82.inc"
	.include "global.inc"
	.public ov82_0223DF74
	.extern ov82_0223E8C4

	.text

	.text
	thumb_func_start ov82_0223DF74
ov82_0223DF74: ; 0x0223DF74
	push {r4, lr}
	add r4, r0, #0
	bl OverlayManager_GetData
	mov r1, #0x21
	lsl r1, r1, #4
	ldrb r2, [r0, #0xd]
	ldr r1, [r0, r1]
	strh r2, [r1]
	bl ov82_0223E8C4
	add r0, r4, #0
	bl OverlayManager_FreeData
	ldr r2, _0223DFB4 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x69
	bl Heap_Destroy
	ldr r0, _0223DFB8 ; =FS_OVERLAY_ID(OVY_80)
	bl UnloadOverlayByID
	mov r0, #1
	pop {r4, pc}
	nop
_0223DFB4: .word 0x04000304
_0223DFB8: .word FS_OVERLAY_ID(OVY_80)
	thumb_func_end ov82_0223DF74

