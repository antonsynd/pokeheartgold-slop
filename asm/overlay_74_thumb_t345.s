#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02235308
	.extern _0223B720
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
	thumb_func_start ov74_02235308
ov74_02235308: ; 0x02235308
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r5, _0223538C ; =_0223B720
	add r6, r3, #0
	add r7, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	cmp r2, #4
	str r0, [r3]
	add r0, sp, #0
	strb r2, [r0, #0x10]
	bhi _02235362
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223533A: ; jump table
	.short _02235362 - _0223533A - 2 ; case 0
	.short _02235344 - _0223533A - 2 ; case 1
	.short _0223534C - _0223533A - 2 ; case 2
	.short _02235354 - _0223533A - 2 ; case 3
	.short _0223535C - _0223533A - 2 ; case 4
_02235344:
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	b _02235362
_0223534C:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _02235362
_02235354:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _02235362
_0223535C:
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #8]
_02235362:
	lsr r1, r6, #0xb
	add r0, sp, #0
	strb r1, [r0, #0x12]
	ldr r1, [sp, #0x30]
	add r2, sp, #0
	lsr r1, r1, #0xe
	strb r1, [r0, #0x13]
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r3, #0
	bl InitBgFromTemplate
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223538C: .word _0223B720
	thumb_func_end ov74_02235308

