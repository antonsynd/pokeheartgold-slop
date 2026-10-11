#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02229F94
	.extern ov45_0222A0F0
	.extern ov45_0222CD68

	.text

	.text
	thumb_func_start ov45_02229F94
ov45_02229F94: ; 0x02229F94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl SysTask_Destroy
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	ldr r0, [r4, #8]
	bl ov45_0222CD68
	ldr r0, [r4, #4]
	bl ov45_0222A0F0
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x6f
	bl Heap_Destroy
	ldr r0, _02229FDC ; =FS_OVERLAY_ID(OVY_42)
	bl UnloadOverlayByID
	bl UnloadOVY38
	bl UnloadDwcOverlay
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02229FDC: .word FS_OVERLAY_ID(OVY_42)
	thumb_func_end ov45_02229F94

