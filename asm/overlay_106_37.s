#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E6814
	.extern ov106_021E63E0
	.extern ov106_021E6408
	.extern ov106_021E6418
	.extern ov106_021E6520
	.extern ov106_021E70E0

	.text

	.text
	thumb_func_start ov106_021E6814
ov106_021E6814: ; 0x021E6814
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	mov r0, #0
	bl GfGfx_EngineASetPlanes
	mov r0, #0
	bl GfGfx_EngineBSetPlanes
	ldr r0, _021E688C ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _021E6890 ; =0x04001050
	ldr r2, _021E6894 ; =0x04000304
	strh r1, [r0]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r1, _021E6898 ; =0x00006040
	mov r0, #0x99
	bl Heap_Alloc
	ldr r1, _021E689C ; =0x00000418
	ldr r2, _021E6898 ; =0x00006040
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _021E689C ; =0x00000418
	mov r1, #0x99
	ldr r4, [r5, r0]
	ldr r0, _021E68A0 ; =ov106_021E70E0
	str r0, [r4, #0x14]
	mov r0, #0xf7
	bl NARC_New
	str r0, [r4, #4]
	bl ov106_021E6408
	add r0, r4, #0
	bl ov106_021E6418
	add r0, r5, #0
	bl ov106_021E6520
	ldr r1, _021E689C ; =0x00000418
	ldr r0, _021E68A4 ; =ov106_021E63E0
	ldr r1, [r5, r1]
	bl Main_SetVBlankIntrCB
	mov r0, #4
	pop {r3, r4, r5, pc}
	nop
_021E688C: .word 0x04000050
_021E6890: .word 0x04001050
_021E6894: .word 0x04000304
_021E6898: .word 0x00006040
_021E689C: .word 0x00000418
_021E68A0: .word ov106_021E70E0
_021E68A4: .word ov106_021E63E0
	thumb_func_end ov106_021E6814

