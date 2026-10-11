#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E808C
	.public ov73_021E8164
	.public ov73_021E847C

	.text

	thumb_func_start ov73_021E808C
ov73_021E808C: ; 0x021E808C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl Heap_Free
	bl UnloadOVY38
	bl UnloadDwcOverlay
	add r0, r4, #0
	bl ov73_021E847C
	ldr r0, _021E80F4 ; =0x00000BDC
	ldr r0, [r4, r0]
	bl DestroyMsgData
	ldr r0, _021E80F8 ; =0x00000BD8
	ldr r0, [r4, r0]
	bl DestroyMsgData
	ldr r0, _021E80FC ; =0x00000BD4
	ldr r0, [r4, r0]
	bl DestroyMsgData
	mov r0, #0xbd
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl MessageFormat_Delete
	add r0, r4, #0
	bl ov73_021E8164
	bl sub_02034DE0
	ldr r0, [r4, #4]
	bl Heap_Free
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x96
	bl Heap_Destroy
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E80F4: .word 0x00000BDC
_021E80F8: .word 0x00000BD8
_021E80FC: .word 0x00000BD4
	thumb_func_end ov73_021E808C

