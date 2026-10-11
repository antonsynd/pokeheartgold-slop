#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E7768
	.extern ov112_021E79A8
	.extern ov112_021E79D0
	.extern ov112_021E79F0
	.extern ov112_021E7B18
	.extern ov112_021E7C18
	.extern ov112_021E9A78
	.extern ov112_021E9C98
	.extern ov112_021EA1AC
	.extern ov112_021EA4F4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E7768
ov112_021E7768: ; 0x021E7768
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x9a
	bl BgConfig_Alloc
	str r0, [r4, #0x18]
	mov r0, #4
	mov r1, #0x9a
	bl FontID_Alloc
	add r0, r4, #0
	bl ov112_021E7C18
	bl ov112_021E79D0
	ldr r0, [r4, #0x18]
	bl ov112_021E79F0
	add r0, r4, #0
	bl ov112_021E7B18
	add r0, r4, #0
	mov r1, #0
	bl ov112_021E9A78
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E9A78
	add r0, r4, #0
	bl ov112_021EA1AC
	add r0, r4, #0
	bl ov112_021EA4F4
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	add r0, r4, #0
	bl ov112_021E9C98
	ldr r0, _021E77D8 ; =ov112_021E79A8
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	ldr r2, _021E77DC ; =0x04000304
	ldr r0, _021E77E0 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r0, #4
	mov r1, #1
	bl ToggleBgLayer
	pop {r4, pc}
	nop
_021E77D8: .word ov112_021E79A8
_021E77DC: .word 0x04000304
_021E77E0: .word 0xFFFF7FFF
	thumb_func_end ov112_021E7768

