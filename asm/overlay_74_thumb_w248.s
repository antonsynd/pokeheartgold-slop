#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022312C0
	.extern ov74_022311DC
	.extern ov74_02231260
	.extern ov74_02231264
	.extern ov74_0223127C
	.extern ov74_0223145C
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
	thumb_func_start ov74_022312C0
ov74_022312C0: ; 0x022312C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov74_022311DC
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #0xff
	bic r0, r1
	ldr r1, [r4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r1, r0
	ldr r0, _022313E4 ; =0xFFFFF0FF
	str r1, [r5]
	and r0, r1
	ldr r1, [r4]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x14
	orr r1, r0
	ldr r0, _022313E8 ; =0xFFFF0FFF
	str r1, [r5]
	and r0, r1
	ldr r1, [r4]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5]
	bl ov74_02231264
	ldr r1, [r5]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5]
	ldr r2, [r4, #4]
	ldr r1, [r5, #4]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r0, #0xff
	lsl r2, r2, #0x18
	bic r1, r0
	lsr r2, r2, #0x18
	orr r2, r1
	ldr r1, _022313E4 ; =0xFFFFF0FF
	str r2, [r5, #4]
	and r1, r2
	ldr r2, [r4, #4]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x14
	orr r2, r1
	ldr r1, _022313E8 ; =0xFFFF0FFF
	str r2, [r5, #4]
	and r1, r2
	ldr r2, [r4, #4]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x10
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	bic r1, r0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r1, r0
	ldr r0, _022313EC ; =0xFFFF00FF
	and r0, r1
	ldr r1, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5, #8]
	mov r0, #0
	add r1, r7, #0
	add r2, r6, #0
	bl SVC_GetCRC16
	ldr r1, [r5, #8]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5, #8]
	bl ov74_02231260
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	ldr r1, [r5, #0xc]
	mov r2, #0xff
	bic r1, r2
	lsr r0, r0, #0x18
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r6, #8
	orr r0, r1
	str r0, [r5, #0xc]
	cmp r6, #0
	beq _022313BE
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r1, r5, r1
	add r2, r6, #0
	bl MI_CpuCopy8
_022313BE:
	add r0, r5, #0
	bl ov74_0223145C
	ldr r0, [r4]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _022313E2
	ldr r1, [r5, #0xc]
	ldr r0, [r5]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r1, r6, r1
	lsr r0, r0, #0x10
	sub r1, r1, #4
	add r2, r5, #4
	bl ov74_0223127C
_022313E2:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022313E4: .word 0xFFFFF0FF
_022313E8: .word 0xFFFF0FFF
_022313EC: .word 0xFFFF00FF
	thumb_func_end ov74_022312C0

