#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022360B0
	.public ov74_02236128
	.extern ov74_0223D454
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
	thumb_func_start ov74_022360B0
ov74_022360B0: ; 0x022360B0
	push {r3, r4, r5, lr}
	ldr r0, _02236120 ; =ov74_0223D454
	ldr r4, _02236124 ; =ov74_0223D454
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bhi _0223611C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022360C8: ; jump table
	.short _022360D2 - _022360C8 - 2 ; case 0
	.short _022360E8 - _022360C8 - 2 ; case 1
	.short _0223611C - _022360C8 - 2 ; case 2
	.short _0223611C - _022360C8 - 2 ; case 3
	.short _0223611C - _022360C8 - 2 ; case 4
_022360D2:
	mov r0, #4
	bl sub_0201A728
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl Save_PrepareForAsyncWrite
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _0223611C
_022360E8:
	ldr r0, [r4, #0x18]
	bl Save_WriteFileAsync
	add r5, r0, #0
	cmp r5, #3
	bne _022360FA
	mov r0, #3
	str r0, [r4, #0x14]
	b _0223610C
_022360FA:
	cmp r5, #2
	bne _02236104
	mov r0, #2
	str r0, [r4, #0x14]
	b _0223610C
_02236104:
	cmp r5, #1
	bne _0223610C
	mov r0, #4
	str r0, [r4, #0x14]
_0223610C:
	sub r0, r5, #2
	cmp r0, #1
	bhi _02236118
	mov r0, #4
	bl sub_0201A738
_02236118:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_0223611C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02236120: .word ov74_0223D454
_02236124: .word ov74_0223D454
	thumb_func_end ov74_022360B0

	thumb_func_start ov74_02236128
ov74_02236128: ; 0x02236128
	ldr r0, _02236138 ; =ov74_0223D454
	ldr r1, _0223613C ; =ov74_0223D454
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bne _02236136
	mov r0, #1
	str r0, [r1, #0x14]
_02236136:
	bx lr
	.balign 4, 0
_02236138: .word ov74_0223D454
_0223613C: .word ov74_0223D454
	thumb_func_end ov74_02236128

