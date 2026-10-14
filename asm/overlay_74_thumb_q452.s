#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236258
	.extern ov74_022361B8
	.extern ov74_02236354
	.extern ov74_0223E2FC
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
	thumb_func_start ov74_02236258
ov74_02236258: ; 0x02236258
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02236330 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _02236334 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _0223626C
	bl OS_Terminate
	mov r0, #0
_0223626C:
	bl WM_GetAllowedChannel
	add r4, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r4, r0
	bne _02236284
	mov r0, #3
	bl ov74_022361B8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02236284:
	cmp r4, #0
	bne _02236292
	mov r0, #0x16
	bl ov74_022361B8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02236292:
	ldr r0, _02236330 ; =ov74_0223E2FC
	ldr r2, [r0]
	ldr r0, _02236338 ; =0x00001176
	ldrh r1, [r2, r0]
	cmp r1, #0x10
	blo _022362D4
	sub r1, #0x10
	mov r5, #0
	mov r7, #0xd
	mov r6, #1
	b _022362BA
_022362A8:
	add r0, r1, #1
	add r1, r7, #0
	bl _s32_div_f
	add r0, r6, #0
	lsl r0, r1
	tst r0, r4
	bne _022362BE
	add r5, r5, #1
_022362BA:
	cmp r5, #0xd
	blt _022362A8
_022362BE:
	ldr r2, _02236330 ; =ov74_0223E2FC
	add r4, r1, #0
	ldr r3, [r2]
	ldr r0, _02236338 ; =0x00001176
	add r4, #0x10
	strh r4, [r3, r0]
	add r3, r1, #1
	ldr r1, [r2]
	ldr r0, _0223633C ; =0x00000FC4
	strh r3, [r1, r0]
	b _022362D8
_022362D4:
	ldr r0, _0223633C ; =0x00000FC4
	strh r1, [r2, r0]
_022362D8:
	ldr r2, _02236330 ; =ov74_0223E2FC
	ldr r0, _02236340 ; =0x00000FC6
	ldr r1, [r2]
	mov r3, #0xdc
	strh r3, [r1, r0]
	add r1, r0, #0
	ldr r3, [r2]
	sub r1, #0xc6
	add r1, r3, r1
	sub r0, r0, #6
	str r1, [r3, r0]
	ldr r1, [r2]
	ldr r0, _02236344 ; =0x00001158
	ldrh r0, [r1, r0]
	cmp r0, #3
	bne _0223630E
	mov r5, #0
	ldr r0, _02236348 ; =0x00001170
	ldr r1, _0223634C ; =0x00000FC8
	b _0223630A
_02236300:
	ldr r3, [r2]
	add r4, r3, r5
	ldrb r3, [r4, r0]
	add r5, r5, #1
	strb r3, [r4, r1]
_0223630A:
	cmp r5, #6
	blt _02236300
_0223630E:
	ldr r1, _02236330 ; =ov74_0223E2FC
	ldr r0, _02236350 ; =ov74_02236354
	ldr r2, [r1]
	mov r1, #0x3f
	lsl r1, r1, #6
	add r1, r2, r1
	bl WM_StartScan
	cmp r0, #2
	beq _0223632A
	bl ov74_022361B8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223632A:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02236330: .word ov74_0223E2FC
_02236334: .word 0x00001150
_02236338: .word 0x00001176
_0223633C: .word 0x00000FC4
_02236340: .word 0x00000FC6
_02236344: .word 0x00001158
_02236348: .word 0x00001170
_0223634C: .word 0x00000FC8
_02236350: .word ov74_02236354
	thumb_func_end ov74_02236258

