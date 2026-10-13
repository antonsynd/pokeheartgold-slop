#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222FD98
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
	thumb_func_start ov74_0222FD98
ov74_0222FD98: ; 0x0222FD98
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl Save_MysteryGift_Get
	mov r1, #0
	ldr r4, [r5, #0x48]
	mvn r1, r1
	add r6, r0, #0
	cmp r4, r1
	bne _0222FDCC
	add r2, r5, #0
	add r2, #0x4c
	ldrh r2, [r2]
	lsr r1, r1, #0x10
	cmp r2, r1
	bne _0222FDCC
	bl Save_MysteryGift_Init
	add r0, r7, #0
	mov r1, #0
	bl Save_NowWriteFile_AfterMGInit
	mov r0, #0
	bl OS_ResetSystem
_0222FDCC:
	add r0, r5, #0
	add r0, #0x4c
	ldrh r1, [r0]
	cmp r1, #0x64
	blo _0222FDE0
	cmp r1, #0x98
	bhi _0222FDE0
	mov r0, #0x46
	lsl r0, r0, #6
	orr r4, r0
_0222FDE0:
	cmp r4, #0
	bne _0222FDE8
	mov r4, #0
	mvn r4, r4
_0222FDE8:
#ifdef HEARTGOLD
	mov r0, #0x80
#else
	mov r0, #1
	lsl r0, r0, #8
#endif
	tst r0, r4
	bne _0222FDF2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222FDF2:
	add r0, r5, #0
	add r0, #0x4e
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0222FE0E
	add r0, r6, #0
	bl SaveMysteryGift_ReceivedFlagTest
	cmp r0, #1
	bne _0222FE0E
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0222FE0E:
	add r0, r5, #0
	add r0, #0x4e
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0222FE2A
	add r0, r6, #0
	bl SaveMysteryGift_CardFindAvailable
	cmp r0, #0
	bne _0222FE2A
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0222FE2A:
	add r0, r6, #0
	bl SaveMysteryGift_FindAvailable
	cmp r0, #0
	bne _0222FE38
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0222FE38:
	add r5, #0x4e
	ldrb r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0222FE48
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0222FE48:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov74_0222FD98

