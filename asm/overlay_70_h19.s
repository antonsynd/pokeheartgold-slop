#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02238430
	.public ov70_022385C0
	.extern ov70_022378DC
	.extern ov70_02238818
	.extern ov70_02238880
	.extern ov70_02238DF8
	.extern ov70_02238E20
	.extern ov70_02238E70
	.extern ov70_02238E98
	.extern ov70_02238F04
	.extern ov70_02238F24
	.extern ov70_02239C6C
	.extern ov70_02239CF8
	.extern ov70_02240D74
	.extern ov70_02241184
	.extern ov70_022451F8
	.extern ov70_022463EC
	.extern ov70_02246944

	.text

	.text
	thumb_func_start ov70_02238430
ov70_02238430: ; 0x02238430
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _02238446
	cmp r0, #1
	bne _02238444
	b _0223856E
_02238444:
	b _02238582
_02238446:
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02238588 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _0223858C ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	bl ov70_02238880
	mov r2, #7
	mov r0, #3
	mov r1, #0x3d
	lsl r2, r2, #0x10
	bl Heap_Create
	bl LoadDwcOverlay
	bl LoadOVY38
	mov r0, #0x3d
	bl sub_02039FD8
	ldr r1, _02238590 ; =0x00001608
	add r0, r6, #0
	mov r2, #0x3d
	bl OverlayManager_CreateAndGetData
	ldr r2, _02238590 ; =0x00001608
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x3d
	bl BgConfig_Alloc
	str r0, [r4, #4]
	ldr r0, _02238594 ; =ov70_02246944
	add r2, sp, #0
	ldr r3, _02238598 ; =ov70_022451F8
	str r4, [r0, #4]
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r7, #0
	bl SetBothScreensModesAndDisable
	mov r0, #4
	mov r1, #0x3d
	bl FontID_Alloc
	mov r0, #0xb
	mov r1, #0x40
	mov r2, #0x3d
	bl MessageFormat_New_Custom
	ldr r1, _0223859C ; =0x00000B9C
	ldr r2, _022385A0 ; =0x00000307
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x3d
	bl NewMsgDataFromNarc
	mov r1, #0xba
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _022385A4 ; =0x0000030A
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x3d
	bl NewMsgDataFromNarc
	ldr r1, _022385A8 ; =0x00000BA8
	mov r2, #0x32
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1b
	lsl r2, r2, #4
	mov r3, #0x3d
	bl NewMsgDataFromNarc
	ldr r1, _022385AC ; =0x00000BAC
	mov r2, #0xed
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x3d
	bl NewMsgDataFromNarc
	ldr r1, _022385B0 ; =0x00000BA4
	ldr r2, _022385B4 ; =0x0000031E
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x3d
	bl NewMsgDataFromNarc
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	add r0, r4, #0
	add r1, r6, #0
	bl ov70_02238818
	add r0, r4, #0
	bl ov70_02238E70
	ldr r1, _022385B8 ; =0x0000047D
	mov r0, #0xb
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	ldr r1, _022385BC ; =0x00020020
	mov r0, #0x3d
	bl Heap_Alloc
	str r0, [r4, #0x4c]
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	mov r1, #2
	lsl r1, r1, #0x10
	mov r2, #0
	bl NNS_FndCreateExpHeapEx
	str r0, [r4, #0x50]
	mov r0, #1
	str r0, [r5]
	b _02238582
_0223856E:
	bl sub_02034D8C
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	mov r0, #0
	str r0, [r5]
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02238582:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02238588: .word 0xFFFFE0FF
_0223858C: .word 0x04001000
_02238590: .word 0x00001608
_02238594: .word ov70_02246944
_02238598: .word ov70_022451F8
_0223859C: .word 0x00000B9C
_022385A0: .word 0x00000307
_022385A4: .word 0x0000030A
_022385A8: .word 0x00000BA8
_022385AC: .word 0x00000BAC
_022385B0: .word 0x00000BA4
_022385B4: .word 0x0000031E
_022385B8: .word 0x0000047D
_022385BC: .word 0x00020020
	thumb_func_end ov70_02238430

	thumb_func_start ov70_022385C0
ov70_022385C0: ; 0x022385C0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	bl ov00_021ECB40
	bl ov70_022378DC
	ldr r1, [r5]
	cmp r1, #5
	bhi _022386BA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022385E4: ; jump table
	.short _022385F0 - _022385E4 - 2 ; case 0
	.short _0223860C - _022385E4 - 2 ; case 1
	.short _02238634 - _022385E4 - 2 ; case 2
	.short _02238642 - _022385E4 - 2 ; case 3
	.short _02238656 - _022385E4 - 2 ; case 4
	.short _022386B6 - _022385E4 - 2 ; case 5
_022385F0:
	bl sub_02034DB8
	cmp r0, #0
	beq _022386BA
	ldr r1, [r4, #0x50]
	ldr r0, _022386D8 ; =ov70_02246944
	str r1, [r0]
	ldr r0, _022386DC ; =ov70_02238DF8
	ldr r1, _022386E0 ; =ov70_02238E20
	bl ov00_021EC294
	mov r0, #1
	str r0, [r5]
	b _022386BA
_0223860C:
	ldr r3, [r4, #0x14]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _022386E4 ; =ov70_022463EC
	add r0, r4, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r5]
	bl ov70_02238880
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022386BA
	add r0, r4, #0
	bl ov70_02238E98
	b _022386BA
_02238634:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _022386BA
	mov r0, #3
	str r0, [r5]
	b _022386BA
_02238642:
	ldr r3, [r4, #0x14]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _022386E8 ; =ov70_022463EC + 4
	add r0, r4, #0
	ldr r2, [r2, r6]
	blx r2
	str r0, [r5]
	b _022386BA
_02238656:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _022386BA
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022386A0
	add r0, r4, #0
	bl ov70_02238E70
	ldr r0, [r4]
	ldr r0, [r0, #0x1c]
	bl PlayerProfile_GetTrainerGender
	add r1, r0, #0
	add r0, r4, #0
	bl ov70_02240D74
	mov r1, #0x4a
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov70_02241184
	add r0, r4, #0
	bl ov70_02239C6C
	add r0, r4, #0
	bl ov70_02239CF8
	mov r0, #0x45
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_022386A0:
	ldr r3, [r4, #0x14]
	mov r2, #0xc
	add r6, r3, #0
	mul r6, r2
	ldr r2, _022386EC ; =ov70_022463EC + 8
	ldr r1, [r5]
	ldr r2, [r2, r6]
	add r0, r4, #0
	blx r2
	str r0, [r5]
	b _022386BA
_022386B6:
	mov r0, #1
	pop {r4, r5, r6, pc}
_022386BA:
	add r0, r4, #0
	bl ov70_02238F04
	add r0, r4, #0
	bl ov70_02238F24
	ldr r0, _022386F0 ; =0x00000BF4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022386D2
	bl SpriteList_RenderAndAnimateSprites
_022386D2:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_022386D8: .word ov70_02246944
_022386DC: .word ov70_02238DF8
_022386E0: .word ov70_02238E20
_022386E4: .word ov70_022463EC
_022386E8: .word ov70_022463EC + 4
_022386EC: .word ov70_022463EC + 8
_022386F0: .word 0x00000BF4
	thumb_func_end ov70_022385C0

