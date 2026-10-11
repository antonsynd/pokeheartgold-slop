	.include "asm/macros.inc"
	.include "overlay_41_02246B34.inc"
	.include "global.inc"
	.public ov41_02246DE0
	.public ov41_02246F08
	.extern ov41_02247240
	.extern ov41_0224726C
	.extern ov41_02247288
	.extern ov41_02247334
	.extern ov41_02247478
	.extern ov41_02247480
	.extern ov41_022474D4
	.extern ov41_02247578
	.extern ov41_0224765C
	.extern ov41_022476B8

    .text

	.text
	thumb_func_start ov41_02246DE0
ov41_02246DE0: ; 0x02246DE0
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl Heap_Create
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl Heap_Create
	mov r1, #0x6f
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0xd
	bl OverlayManager_CreateAndGetData
	mov r2, #0x6f
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	ldr r0, _02246EF0 ; =ov41_02247478
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	add r0, r5, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r1, _02246EF4 ; =0x000006DC
	str r0, [r4, r1]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02246E3E
	bl MenuInputStateMgr_GetState
	ldr r1, _02246EF8 ; =0x000006EC
	b _02246E42
_02246E3E:
	mov r0, #0
	add r1, #0x10
_02246E42:
	str r0, [r4, r1]
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r5, #8]
	add r1, r4, r1
	bl ov41_02248E84
	add r0, r4, #0
	bl ov41_02247240
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x8d
	mov r2, #0xd
	bl ov41_022499B4
	mov r0, #0xaf
	lsl r0, r0, #2
	mov r1, #0xd
	bl ov41_02245EA0
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r5]
	add r0, r4, #0
	mov r2, #0xa
	mov r3, #0
	bl ov41_02247288
	add r0, r4, #0
	bl ov41_02247334
	add r0, r4, #0
	mov r1, #0
	bl ov41_02247480
	add r0, r4, #0
	bl ov41_022474D4
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	bl ov41_0224765C
	ldr r0, _02246EFC ; =0x00000568
	mov r2, #0xfd
	add r1, r4, r0
	str r1, [sp]
	mov r1, #1
	sub r0, #0xd0
	lsl r2, r2, #2
	str r1, [sp, #4]
	add r1, r4, r2
	sub r2, #0x8c
	add r0, r4, r0
	add r2, r4, r2
	add r3, r4, #0
	bl ov41_02248F18
	mov r0, #0xd
	bl YesNoPrompt_Create
	ldr r1, _02246F00 ; =0x000006B8
	str r0, [r4, r1]
	mov r0, #0xd
	mov r1, #1
	bl AllocWindows
	ldr r2, _02246F04 ; =0x000006BC
	mov r1, #0
	str r0, [r4, r2]
	sub r2, #0xc
	str r1, [r4, r2]
	mov r0, #0x35
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02246EF0: .word ov41_02247478
_02246EF4: .word 0x000006DC
_02246EF8: .word 0x000006EC
_02246EFC: .word 0x00000568
_02246F00: .word 0x000006B8
_02246F04: .word 0x000006BC
	thumb_func_end ov41_02246DE0

	thumb_func_start ov41_02246F08
ov41_02246F08: ; 0x02246F08
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	add r0, r7, #0
	mov r6, #0
	bl OverlayManager_GetArgs
	ldr r1, [r5]
	cmp r1, #0xc
	bhi _02246FD6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246F30: ; jump table
	.short _02246F4A - _02246F30 - 2 ; case 0
	.short _02246F4A - _02246F30 - 2 ; case 1
	.short _02246F66 - _02246F30 - 2 ; case 2
	.short _02246F76 - _02246F30 - 2 ; case 3
	.short _02246FA4 - _02246F30 - 2 ; case 4
	.short _02246FC6 - _02246F30 - 2 ; case 5
	.short _02246FF4 - _02246F30 - 2 ; case 6
	.short _0224702A - _02246F30 - 2 ; case 7
	.short _02247050 - _02246F30 - 2 ; case 8
	.short _02247094 - _02246F30 - 2 ; case 9
	.short _022470D0 - _02246F30 - 2 ; case 10
	.short _022470EE - _02246F30 - 2 ; case 11
	.short _0224710C - _02246F30 - 2 ; case 12
_02246F4A:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r1, #5
	add r2, r1, #0
	add r3, r6, #0
	bl BeginNormalPaletteFade
	mov r0, #2
	str r0, [r5]
	b _0224712A
_02246F66:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02246FD6
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_02246F76:
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	bne _02246F9E
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _02247138 ; =0x00000568
	mov r1, #0x1b
	add r0, r4, r0
	mov r2, #0xd7
	mov r3, #0x2f
	bl ov41_0224AC40
	mov r1, #0x6e
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_02246F9E:
	mov r0, #6
	str r0, [r5]
	b _0224712A
_02246FA4:
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _02246FD6
	ldr r0, _02247138 ; =0x00000568
	add r0, r4, r0
	bl ov41_0224AC80
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_02246FC6:
	ldr r0, _0224713C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #3
	and r1, r0
	ldr r0, _02247140 ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	orr r0, r1
	bne _02246FD8
_02246FD6:
	b _0224712A
_02246FD8:
	ldr r0, _02247138 ; =0x00000568
	mov r1, #0x1b
	add r0, r4, r0
	mov r2, #0xd7
	mov r3, #0x30
	bl ov41_0224AC08
	add r0, r6, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_02246FF4:
	mov r1, #0x6b
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r0, #3
	bne _0224700C
	add r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	bl ov41_022476B8
	mov r0, #7
	str r0, [r5]
_0224700C:
	ldr r0, _02247144 ; =0x00000498
	add r0, r4, r0
	bl ov41_02248E44
	add r0, r4, #0
	bl ov41_02247D44
	ldr r0, _02247138 ; =0x00000568
	add r0, r4, r0
	bl ov41_0224ABF0
	add r0, r4, #0
	bl ov41_02247578
	b _0224712A
_0224702A:
	ldr r0, _02247148 ; =0x000006B4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0224712A
	add r1, r6, #0
	str r1, [r4, r0]
	mov r1, #8
	str r1, [r5]
	mov r1, #4
	sub r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _0224714C ; =0x0000047C
	mov r2, #0xe
	add r0, r4, r1
	sub r1, #0x88
	add r1, r4, r1
	bl ov41_0224B4E8
	b _0224712A
_02247050:
	mov r1, #0x6b
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	cmp r0, #9
	bne _0224706A
	add r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	bl ov41_02247828
	mov r0, #0xa
	str r0, [r5]
	b _0224712A
_0224706A:
	cmp r0, #8
	bne _0224707E
	mov r0, #9
	str r0, [r5]
	mov r0, #5
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov41_02247D64
	b _0224712A
_0224707E:
	add r0, r4, #0
	bl ov41_02247B7C
	mov r1, #0x6b
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _0224714C ; =0x0000047C
	add r0, r4, r0
	bl ov41_0224B50C
	b _0224712A
_02247094:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #6
	bne _022470AA
	mov r1, #1
	add r0, #0x10
	str r1, [r4, r0]
	mov r0, #0xb
	str r0, [r5]
	b _0224712A
_022470AA:
	cmp r1, #7
	bne _022470BA
	add r1, r6, #0
	add r0, #0x10
	str r1, [r4, r0]
	mov r0, #0xb
	str r0, [r5]
	b _0224712A
_022470BA:
	add r0, r4, #0
	bl ov41_02247DF8
	mov r1, #0x6b
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _0224714C ; =0x0000047C
	add r0, r4, r0
	bl ov41_0224B50C
	b _0224712A
_022470D0:
	ldr r0, _02247148 ; =0x000006B4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0224712A
	add r2, r6, #0
	str r2, [r4, r0]
	mov r1, #6
	str r1, [r5]
	sub r0, r0, #4
	str r2, [r4, r0]
	ldr r0, _0224714C ; =0x0000047C
	add r0, r4, r0
	bl ov41_0224B518
	b _0224712A
_022470EE:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	add r1, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _0224712A
_0224710C:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0224712A
	add r0, r6, #0
	str r0, [r5]
	mov r0, #0x6b
	mov r1, #0xa
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _0224714C ; =0x0000047C
	mov r6, #1
	add r0, r4, r0
	bl ov41_0224B518
_0224712A:
	add r0, r4, #0
	bl ov41_0224726C
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02247138: .word 0x00000568
_0224713C: .word gSystem
_02247140: .word gSystem + 0x40
_02247144: .word 0x00000498
_02247148: .word 0x000006B4
_0224714C: .word 0x0000047C
	thumb_func_end ov41_02246F08

