#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E7910
	.extern gApplication_TitleScreen
	.extern ov112_021E77E4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E7910
ov112_021E7910: ; 0x021E7910
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	mov r0, #0
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	add r0, r4, #0
	bl ov112_021E77E4
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0x9a
	bl Heap_Destroy
	mov r0, #0x10
	bl sub_0201A738
	ldr r0, _021E7954 ; =FS_OVERLAY_ID(intro_title)
	ldr r1, _021E7958 ; =gApplication_TitleScreen
	bl RegisterMainOverlay
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021E7954: .word FS_OVERLAY_ID(intro_title)
_021E7958: .word gApplication_TitleScreen
	thumb_func_end ov112_021E7910

