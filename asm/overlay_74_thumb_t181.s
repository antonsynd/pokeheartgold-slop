#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02230A84
	.extern ov74_02230A14
	.extern ov74_02230A74
	.extern ov74_02230A7C
	.extern ov74_02231054
	.extern ov74_0223105C
	.extern ov74_02231184
	.extern ov74_02231194
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
	thumb_func_start ov74_02230A84
ov74_02230A84: ; 0x02230A84
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	bl ov74_02231054
	bl ov74_0223105C
	add r4, r0, #0
	mov r0, #0x1f
	add r1, r7, #0
	and r1, r0
	beq _02230AA2
	mov r0, #0x20
	sub r0, r0, r1
	add r7, r7, r0
_02230AA2:
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	mov r0, #4
	strb r0, [r4, #3]
	ldr r0, _02230BA8 ; =0x00400131
	str r0, [r4, #4]
	mov r0, #0xf
	strh r1, [r4, #0xc]
	lsl r0, r0, #8
	str r7, [r4, #0x34]
	add r7, r7, r0
	str r7, [r4, #0x38]
	bl ov74_02230A74
	str r0, [r4, #0x2c]
	add r7, r7, r0
	str r7, [r4, #0x3c]
	bl ov74_02230A7C
	add r7, r7, r0
	str r0, [r4, #0x30]
	add r0, r7, #0
	str r7, [r4, #0x28]
	add r0, #0xc0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x34]
	mov r1, #2
	add r7, #0xe0
	bl WM_Init
	bl ov74_02230A14
	str r0, [r4, #0x10]
	mov r2, #0
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x20]
	ldr r0, [r4, #0x40]
	mov r6, #0xff
	bic r0, r6
	add r3, r0, #0
	mov r1, #0xf
	orr r3, r1
	ldr r0, _02230BAC ; =0xFFFFF0FF
	add r1, #0xf1
	and r0, r3
	orr r1, r0
	ldr r0, _02230BB0 ; =0xFFFF0FFF
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r4, #0x40]
	ldr r3, [r5]
	ldr r1, [r4, #0x44]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x18
	add r0, r4, #0
	bic r1, r6
	lsr r3, r3, #0x18
	orr r3, r1
	ldr r1, _02230BAC ; =0xFFFFF0FF
	str r3, [r4, #0x44]
	and r1, r3
	ldr r3, [r5]
	add r0, #0x44
	lsl r3, r3, #0x14
	lsr r3, r3, #0x1c
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x14
	orr r3, r1
	ldr r1, _02230BB0 ; =0xFFFF0FFF
	str r3, [r4, #0x44]
	and r1, r3
	ldr r3, [r5]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x1c
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x10
	orr r1, r3
	str r1, [r4, #0x44]
	ldr r1, [r0]
	ldr r3, [r5]
	lsl r1, r1, #0x10
	lsr r3, r3, #0x10
	lsr r1, r1, #0x10
	lsl r3, r3, #0x10
	orr r1, r3
	str r1, [r0]
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	add r3, r4, #0
	b _02230B7C
_02230B64:
	ldrh r6, [r0]
	add r5, r3, #0
	add r5, #0x48
	strh r6, [r5]
	add r5, r3, #0
	ldrh r6, [r1]
	add r5, #0x60
	add r3, r3, #2
	strh r6, [r5]
	add r2, r2, #1
	add r0, r0, #2
	add r1, r1, #2
_02230B7C:
	cmp r0, #0
	beq _02230B84
	cmp r2, #0xc
	blo _02230B64
_02230B84:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	str r1, [r4, #0x78]
	str r0, [r4, #0x7c]
	bl ov74_02231194
	bl ov74_02231184
	str r7, [r0, #8]
	ldr r0, [r4, #0x2c]
	add r7, r7, r0
	bl ov74_02231184
	str r7, [r0, #0xc]
	bl WM_GetNextTgid
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230BA8: .word 0x00400131
_02230BAC: .word 0xFFFFF0FF
_02230BB0: .word 0xFFFF0FFF
	thumb_func_end ov74_02230A84

