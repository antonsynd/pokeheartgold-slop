#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222ACD8
	.public ov74_0222AD6C
	.extern ov74_0222ADBC
	.extern ov74_02235414
	.extern ov74_02235464
	.extern ov74_0223546C
	.extern ov74_02235568
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
	thumb_func_start ov74_0222ACD8
ov74_0222ACD8: ; 0x0222ACD8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x5c
	add r5, r0, #0
	ldr r0, _0222AD64 ; =0x0000266C
	ldr r4, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0222ACEC
	mov r4, #0xb
_0222ACEC:
	mov r0, #0x10
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r5]
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	mov r0, #0x54
	bl MessageFormat_New
	mov r1, #2
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, _0222AD68 ; =0x00002670
	mov r1, #0
	ldr r2, [r5, r2]
	mov r3, #5
	add r6, r0, #0
	bl BufferIntegerAsString
	mov r0, #0x1f
	mov r1, #0x9a
	str r0, [sp]
	mov r0, #3
	lsl r1, r1, #6
	mov r3, #0x32
	str r0, [sp, #4]
	add r0, sp, #8
	add r1, r5, r1
	mov r2, #1
	lsl r3, r3, #4
	bl ov74_02235414
	add r0, sp, #8
	mov r1, #0x18
	mov r2, #0x10
	mov r3, #0x64
	bl ov74_02235464
	add r0, sp, #8
	mov r1, #0
	mov r2, #1
	bl ov74_0223546C
	str r6, [sp, #0x1c]
	str r4, [sp]
	mov r2, #4
	ldr r0, [r5]
	add r1, sp, #8
	add r3, r2, #0
	bl ov74_02235568
	add r0, r6, #0
	bl MessageFormat_Delete
	add sp, #0x5c
	pop {r3, r4, r5, r6, pc}
	nop
_0222AD64: .word 0x0000266C
_0222AD68: .word 0x00002670
	thumb_func_end ov74_0222ACD8

	thumb_func_start ov74_0222AD6C
ov74_0222AD6C: ; 0x0222AD6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r1, r0, #0
	add r0, #0x80
	ldr r0, [r0]
	cmp r0, #3
	bne _0222AD82
	mov r4, #0x16
	b _0222ADAC
_0222AD82:
	cmp r0, #4
	bne _0222AD8A
	mov r4, #0x1a
	b _0222ADAC
_0222AD8A:
	cmp r0, #2
	bne _0222AD92
	mov r4, #0x17
	b _0222ADAC
_0222AD92:
	cmp r0, #1
	bne _0222AD9A
	mov r4, #0x1c
	b _0222ADAC
_0222AD9A:
	cmp r0, #5
	bne _0222ADAC
	add r0, r5, #0
	add r1, #0x18
	mov r2, #9
	mov r3, #0x34
	bl ov74_0222ADBC
	pop {r3, r4, r5, pc}
_0222ADAC:
	add r0, r5, #0
	add r1, #0x18
	add r2, r4, #0
	mov r3, #0x33
	bl ov74_0222ADBC
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov74_0222AD6C

