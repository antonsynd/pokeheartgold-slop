#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public Bag_Init
	.extern BagApp_GetSaveStructPtrs
	.extern ov15_021F995C
	.extern ov15_021F9984
	.extern ov15_021F99A4
	.extern ov15_021F9AE4
	.extern ov15_021F9CBC
	.extern ov15_021F9D28
	.extern ov15_021F9DB4
	.extern ov15_021F9F08
	.extern ov15_021FA008
	.extern ov15_021FA044
	.extern ov15_021FA070
	.extern ov15_021FA074
	.extern ov15_021FA170
	.extern ov15_021FA620
	.extern ov15_021FD404
	.extern ov15_021FD574
	.extern ov15_021FD93C
	.extern ov15_021FE020
	.extern ov15_021FE4C8
	.extern ov15_021FE528
	.extern ov15_021FE874
	.extern ov15_021FEA5C
	.extern ov15_021FF1E0
	.extern ov15_021FF29C
	.extern ov15_021FF364
	.extern ov15_021FF6BC
	.extern ov15_021FF850
	.extern ov15_021FFECC
	.extern ov15_02200030
	.extern ov15_02200140

	.text

	.text
	thumb_func_start Bag_Init
Bag_Init: ; 0x021F9380
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _021F95EC ; =0xFFFFE0FF
	ldr r3, _021F95F0 ; =0x04001000
	and r2, r1
	str r2, [r0]
	ldr r2, [r3]
	add r0, #0x50
	and r1, r2
	str r1, [r3]
	mov r1, #0
	strh r1, [r0]
	add r3, #0x50
	mov r2, #0x42
	strh r1, [r3]
	mov r0, #3
	mov r1, #6
	lsl r2, r2, #0xc
	bl Heap_Create
	ldr r1, _021F95F4 ; =0x0000094C
	add r0, r5, #0
	mov r2, #6
	bl OverlayManager_CreateAndGetData
	ldr r2, _021F95F4 ; =0x0000094C
	mov r1, #0
	add r4, r0, #0
	bl memset
	add r0, r5, #0
	bl OverlayManager_GetArgs
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl BagApp_GetSaveStructPtrs
	mov r0, #6
	bl BgConfig_Alloc
	str r0, [r4]
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl PlayerProfile_GetTrainerGender
	ldr r1, _021F95F8 ; =0x00000615
	mov r3, #0
	strb r0, [r4, r1]
	mov r1, #6
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #3
	mov r0, #2
	add r2, r1, #0
	bl BeginNormalPaletteFade
	mov r0, #3
	mov r1, #8
	bl SetKeyRepeatTimers
	add r0, r4, #0
	bl ov15_021F9DB4
	add r0, r4, #0
	bl ov15_021F9CBC
	add r0, r4, #0
	bl ov15_021FA008
	add r0, r4, #0
	bl ov15_021F9D28
	add r0, r4, #0
	bl ov15_021FA620
	bl ov15_021F9984
	ldr r0, [r4]
	bl ov15_021F99A4
	add r0, r4, #0
	bl ov15_021F9AE4
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	add r0, r4, #0
	bl ov15_021FE020
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	add r0, r4, #0
	bl ov15_021FE4C8
	add r0, r4, #0
	bl ov15_021FE528
	add r0, r4, #0
	bl ov15_021FEA5C
	add r0, r4, #0
	bl ov15_021FE874
	add r0, r4, #0
	bl ov15_021F9F08
	add r0, r4, #0
	mov r1, #0
	bl ov15_021FF29C
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r3, #0
	add r1, r3, #0
	add r0, #0xa
	add r1, #8
	add r0, r0, r2
	add r1, r1, r2
	add r2, r3, r2
	ldrb r2, [r2, #0xd]
	bl ov15_021FA044
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r0, r3, #0
	add r1, r3, #0
	add r0, #0xa
	add r1, #8
	add r0, r0, r2
	add r1, r1, r2
	add r2, r3, r2
	ldrb r2, [r2, #0xd]
	mov r3, #6
	bl ov15_021FA070
	add r0, r4, #0
	bl ov15_021FF850
	add r0, r4, #0
	bl ov15_021FA074
	mov r1, #0
	add r2, r0, #0
	add r0, r4, #0
	add r3, r1, #0
	bl ov15_021FD574
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	add r0, r4, #0
	add r1, r3, #0
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r3, r1
	mov r2, #0xa
	ldrsh r1, [r1, r2]
	sub r2, #0xb
	mov r3, #0
	bl ov15_021FF364
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r1, #0x64
	ldrb r1, [r1]
	bl ov15_02200030
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r2, #0x64
	ldrb r2, [r2]
	mov r1, #1
	bl ov15_021FD404
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	add r0, r3, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	add r3, r3, r2
	mov r2, #0xa
	ldrb r1, [r3, #0xd]
	ldrsh r2, [r3, r2]
	add r0, r4, #0
	mov r3, #0
	bl ov15_021FF6BC
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	add r0, r4, #0
	bl ov15_021FA074
	add r1, r5, #4
	add r5, #0x64
	add r2, r0, #0
	ldrb r5, [r5]
	mov r3, #0xc
	add r0, r4, #0
	mul r3, r5
	add r1, r1, r3
	mov r3, #1
	bl ov15_02200140
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrh r0, [r0, #8]
	ldr r1, _021F95FC ; =0x00000644
	add r0, #8
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov15_021FFECC
	add r0, r4, #0
	bl ov15_021FA170
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r0, #0x65
	ldrb r0, [r0]
	add r0, #0xfc
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _021F95B6
	add r0, r4, #0
	bl ov15_021FF1E0
_021F95B6:
	add r0, r4, #0
	bl ov15_021FD93C
	ldr r0, _021F9600 ; =ov15_021F995C
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	mov r1, #0
	mov r0, #0x33
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	bl sub_0203A964
	ldr r2, _021F9604 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #4
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021F95EC: .word 0xFFFFE0FF
_021F95F0: .word 0x04001000
_021F95F4: .word 0x0000094C
_021F95F8: .word 0x00000615
_021F95FC: .word 0x00000644
_021F9600: .word ov15_021F995C
_021F9604: .word 0x04000304
	thumb_func_end Bag_Init

