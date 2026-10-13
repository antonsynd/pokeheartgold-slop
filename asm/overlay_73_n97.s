#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E7E4C
	.extern _021EA940
	.extern ov73_021E8148
	.extern ov73_021E8454
	.extern ov73_021EA68C

	.text

	.text
	thumb_func_start ov73_021E7E4C
ov73_021E7E4C: ; 0x021E7E4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021E7E62
	cmp r0, #1
	bne _021E7E60
	b _021E7F62
_021E7E60:
	b _021E7F78
_021E7E62:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021E7F80 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021E7F84 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r2, #5
	mov r0, #3
	mov r1, #0x96
	lsl r2, r2, #0x10
	bl Heap_Create
	ldr r1, _021E7F88 ; =0x000012CC
	add r0, r6, #0
	mov r2, #0x96
	bl OverlayManager_CreateAndGetData
	ldr r2, _021E7F88 ; =0x000012CC
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x96
	bl BgConfig_Alloc
	str r0, [r4, #4]
	ldr r0, _021E7F8C ; =_021EA940
	add r2, sp, #0
	ldr r3, _021E7F90 ; =ov73_021EA68C
	str r4, [r0]
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	bl SetBothScreensModesAndDisable
	mov r0, #0xb
	mov r1, #0x20
	mov r2, #0x96
	bl MessageFormat_New_Custom
	mov r1, #0xbd
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _021E7F94 ; =0x0000031F
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x96
	bl NewMsgDataFromNarc
	ldr r1, _021E7F98 ; =0x00000BD4
	ldr r2, _021E7F9C ; =0x0000030A
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x96
	bl NewMsgDataFromNarc
	ldr r1, _021E7FA0 ; =0x00000BD8
	mov r2, #0x32
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1b
	lsl r2, r2, #4
	mov r3, #0x96
	bl NewMsgDataFromNarc
	ldr r1, _021E7FA4 ; =0x00000BDC
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	add r0, r4, #0
	add r1, r6, #0
	bl ov73_021E8148
	add r0, r4, #0
	bl ov73_021E8454
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	ldr r1, _021E7FA8 ; =0x00020020
	mov r0, #0x96
	bl Heap_Alloc
	str r0, [r4, #0x24]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl NNS_FndCreateExpHeapEx
	str r0, [r4, #0x28]
	ldr r1, _021E7FAC ; =0x0000047D
	mov r0, #0xb
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	ldr r2, _021E7FB0 ; =0x04000304
	ldr r0, _021E7FB4 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	mov r0, #1
	str r0, [r5]
	b _021E7F78
_021E7F62:
	bl LoadDwcOverlay
	bl LoadOVY38
	bl sub_02034D8C
	mov r0, #0
	str r0, [r5]
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E7F78:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7F80: .word 0xFFFFE0FF
_021E7F84: .word 0x04001000
_021E7F88: .word 0x000012CC
_021E7F8C: .word _021EA940
_021E7F90: .word ov73_021EA68C
_021E7F94: .word 0x0000031F
_021E7F98: .word 0x00000BD4
_021E7F9C: .word 0x0000030A
_021E7FA0: .word 0x00000BD8
_021E7FA4: .word 0x00000BDC
_021E7FA8: .word 0x00020020
_021E7FAC: .word 0x0000047D
_021E7FB0: .word 0x04000304
_021E7FB4: .word 0xFFFF7FFF
	thumb_func_end ov73_021E7E4C

