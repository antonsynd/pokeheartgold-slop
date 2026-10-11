#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02235A74
	.public ov74_02235AC4
	.public ov74_02235B14
	.extern _0223B73C
	.extern ov74_0223D454
	.extern ov74_0223E2D4
	.public gApplication_TitleScreen
	.public sub_020342C0

	.public MainMenuApp_Init
	.public MainMenuApp_Main
	.public MainMenuApp_Exit
	.public ov74_0223B2C0
	.public ov74_0223B2CC
	.public ov74_0223B2D8
	.public ov74_0223B2E8
	.public gApp_MainMenu_SelectOption_ConnectToRanger
	.public gApp_MainMenu_SelectOption_MigrateFromAgb
	.public gApp_MainMenu_SelectOption_MysteryGift

	.text

	.text
	thumb_func_start ov74_02235A74
ov74_02235A74: ; 0x02235A74
	push {r4, lr}
	ldr r0, _02235AB0 ; =ov74_0223E2D4
	ldr r4, _02235AB4 ; =ov74_0223D454
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02235A8E
	ldr r1, _02235AB8 ; =0x00000EA4
	add r0, r4, #0
	ldr r1, [r4, r1]
	blx r1
	ldr r0, _02235AB8 ; =0x00000EA4
	mov r1, #0
	str r1, [r4, r0]
_02235A8E:
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r0, [r4]
	cmp r0, #0
	beq _02235AA0
	bl DoScheduledBgGpuUpdates
_02235AA0:
	ldr r3, _02235ABC ; =0x027E0000
	ldr r1, _02235AC0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02235AB0: .word ov74_0223E2D4
_02235AB4: .word ov74_0223D454
_02235AB8: .word 0x00000EA4
_02235ABC: .word 0x027E0000
_02235AC0: .word 0x00003FF8
	thumb_func_end ov74_02235A74

	thumb_func_start ov74_02235AC4
ov74_02235AC4: ; 0x02235AC4
	push {r4}
	sub sp, #0x24
	ldr r4, _02235B10 ; =_0223B73C
	add r3, sp, #0
	mov r2, #0x22
_02235ACE:
	ldrb r1, [r4]
	add r4, r4, #1
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02235ACE
	add r1, sp, #0
	ldrb r2, [r1]
	mov r3, #0
	sub r1, r3, #1
	cmp r2, r1
	beq _02235B08
	add r4, sp, #0
	sub r1, r3, #1
_02235AEA:
	ldrb r2, [r4]
	cmp r0, r2
	bne _02235AFE
	add r0, sp, #0
	lsl r1, r3, #1
	add r0, #1
	add sp, #0x24
	ldrb r0, [r0, r1]
	pop {r4}
	bx lr
_02235AFE:
	add r4, r4, #2
	ldrb r2, [r4]
	add r3, r3, #1
	cmp r2, r1
	bne _02235AEA
_02235B08:
	mov r0, #0
	add sp, #0x24
	pop {r4}
	bx lr
	.balign 4, 0
_02235B10: .word _0223B73C
	thumb_func_end ov74_02235AC4

	thumb_func_start ov74_02235B14
ov74_02235B14: ; 0x02235B14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r1, #0
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r5, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x44]
	bl GetMonGender
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl MonIsShiny
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r7, #0x18
	ldr r2, [sp, #0x24]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0
	lsl r1, r5, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	mov r3, #2
	bl GetMonSpriteCharAndPlttNarcIdsEx
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl GetMonData
	mov r3, #0
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x40]
	ldr r2, _02235BCC ; =ov74_0223D454
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, [r2, #8]
	bl sub_02014494
	mov r1, #0x32
	ldr r0, [sp, #0x40]
	lsl r1, r1, #6
	bl DC_FlushRange
	ldr r0, [sp, #0x20]
	bl Sprite_GetImageProxy
	mov r1, #2
	bl NNS_G2dGetImageLocation
	mov r2, #0x32
	add r1, r0, #0
	lsl r2, r2, #6
	ldr r0, [sp, #0x40]
	add r1, r1, r2
	bl GXS_LoadOBJ
	ldr r0, [sp, #0x20]
	bl Sprite_GetPaletteProxy
	mov r1, #2
	bl NNS_G2dGetImagePaletteLocation
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _02235BCC ; =ov74_0223D454
	mov r2, #5
	ldr r0, [r0, #8]
	add r3, #0x60
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldrh r1, [r4, #4]
	bl GfGfxLoader_GXLoadPal
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02235BCC: .word ov74_0223D454
	thumb_func_end ov74_02235B14

