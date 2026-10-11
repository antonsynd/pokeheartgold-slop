#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222D11C
	.extern ov74_0223C320
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
	thumb_func_start ov74_0222D11C
ov74_0222D11C: ; 0x0222D11C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _0222D1C4 ; =0x00002BCC
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r7, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _0222D134
	bl ListMenuItems_Delete
_0222D134:
	ldr r0, _0222D1C8 ; =0x00002BC8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222D144
	mov r1, #0
	add r2, r1, #0
	bl DestroyListMenu
_0222D144:
	add r0, r7, #0
	mov r1, #0x55
	bl ListMenuItems_New
	ldr r1, _0222D1C4 ; =0x00002BCC
	mov r2, #0xf7
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #0x1b
	mov r3, #0x55
	bl NewMsgDataFromNarc
	ldr r1, _0222D1CC ; =0x00002A04
	mov r6, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _0222D17E
_0222D166:
	ldr r0, _0222D1C4 ; =0x00002BCC
	ldr r1, _0222D1CC ; =0x00002A04
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl ListMenuItems_AppendFromMsgData
	add r6, r6, #1
	add r4, #8
	cmp r6, r7
	blt _0222D166
_0222D17E:
	ldr r0, _0222D1CC ; =0x00002A04
	ldr r0, [r5, r0]
	bl DestroyMsgData
	ldr r4, _0222D1D0 ; =ov74_0223C320
	add r3, sp, #4
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _0222D1C4 ; =0x00002BCC
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #0x55
	str r0, [sp, #4]
	add r0, sp, #4
	strh r7, [r0, #0x10]
	ldr r0, [sp]
	str r0, [sp, #0x10]
	add r0, r2, #0
	ldr r2, [sp, #0x38]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl ListMenuInit
	ldr r1, _0222D1C8 ; =0x00002BC8
	str r0, [r5, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0222D1C4: .word 0x00002BCC
_0222D1C8: .word 0x00002BC8
_0222D1CC: .word 0x00002A04
_0222D1D0: .word ov74_0223C320
	thumb_func_end ov74_0222D11C

