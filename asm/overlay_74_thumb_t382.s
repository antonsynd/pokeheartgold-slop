#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236258
	.public ov74_02236354
	.extern ov74_02236168
	.extern ov74_022361B8
	.extern ov74_0223648C
	.extern ov74_022365FC
	.extern ov74_022366E8
	.extern ov74_02236768
	.extern ov74_0223D018
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

	thumb_func_start ov74_02236354
ov74_02236354: ; 0x02236354
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0223637A
	bl ov74_022361B8
	mov r0, #9
	bl ov74_02236168
	ldr r0, _02236468 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _0223646C ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02236466
	mov r0, #4
	blx r1
	pop {r3, r4, r5, pc}
_0223637A:
	ldr r0, _02236468 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _02236470 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _022363A6
	bl ov74_0223648C
	cmp r0, #0
	bne _02236466
	mov r0, #9
	bl ov74_02236168
	ldr r0, _02236468 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _0223646C ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02236466
	mov r0, #4
	blx r1
	pop {r3, r4, r5, pc}
_022363A6:
	ldrh r0, [r4, #8]
	cmp r0, #3
	beq _02236466
	cmp r0, #4
	beq _02236448
	cmp r0, #5
	bne _02236448
	mov r0, #0xf
	lsl r0, r0, #8
	add r0, r1, r0
	mov r1, #0xc0
	bl DC_InvalidateRange
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _022363CE
	ldr r1, [r4, #0x3c]
	ldr r0, _02236474 ; =0x00400318
	cmp r1, r0
	beq _022363E0
_022363CE:
	ldr r0, _02236468 ; =ov74_0223E2FC
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _02236448
	ldr r0, _02236478 ; =ov74_0223D018
	ldr r1, [r4, #0x3c]
	ldr r2, _02236474 ; =0x00400318
	blx r3
	b _02236448
_022363E0:
	ldr r1, _02236468 ; =ov74_0223E2FC
	ldrh r3, [r4, #0x12]
	ldr r2, [r1]
	ldr r0, _0223647C ; =0x0000116C
	str r3, [r2, r0]
	ldr r1, [r1]
	sub r0, #0x14
	ldrh r0, [r1, r0]
	cmp r0, #2
	bne _0223642C
	add r0, r4, #0
	add r0, #0x48
	bl ov74_022366E8
	ldr r2, _02236468 ; =ov74_0223E2FC
	ldr r1, _02236480 ; =0x00001170
	mov r0, #0
_02236402:
	add r3, r4, r0
	ldrb r5, [r3, #0xa]
	ldr r3, [r2]
	add r3, r3, r0
	add r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, #6
	blt _02236402
	ldr r1, _02236468 ; =ov74_0223E2FC
	ldr r0, _02236484 ; =0x00001176
	ldr r3, [r1]
	ldrh r2, [r3, r0]
	sub r2, #0xf
	strh r2, [r3, r0]
	ldr r1, [r1]
	add r0, r0, #6
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _0223642C
	mov r0, #1
	blx r1
_0223642C:
	add r4, #0x48
	add r0, r4, #0
	bl ov74_02236768
	cmp r0, #0
	beq _02236448
	ldr r0, _02236468 ; =ov74_0223E2FC
	mov r2, #4
	ldr r1, [r0]
	ldr r0, _02236488 ; =0x00001158
	strh r2, [r1, r0]
	bl ov74_022365FC
	pop {r3, r4, r5, pc}
_02236448:
	bl ov74_02236258
	cmp r0, #0
	bne _02236466
	mov r0, #9
	bl ov74_02236168
	ldr r0, _02236468 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _0223646C ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02236466
	mov r0, #4
	blx r1
_02236466:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02236468: .word ov74_0223E2FC
_0223646C: .word 0x0000117C
_02236470: .word 0x00001150
_02236474: .word 0x00400318
_02236478: .word ov74_0223D018
_0223647C: .word 0x0000116C
_02236480: .word 0x00001170
_02236484: .word 0x00001176
_02236488: .word 0x00001158
	thumb_func_end ov74_02236354

