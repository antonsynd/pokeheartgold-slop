#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A078
	.public ov74_0222A0E4
	.extern ov74_02229DD4
	.extern ov74_02235F58
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
	thumb_func_start ov74_0222A078
ov74_0222A078: ; 0x0222A078
	push {r3, r4, r5, r6, r7, lr}
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, _0222A0DC ; =0x000015D4
	add r5, r4, #0
	add r6, r4, #0
	ldr r0, [r4, r0]
	add r5, #0xdc
	add r6, #0x8c
	cmp r0, #1
	beq _0222A096
	cmp r0, #3
	beq _0222A0BC
	b _0222A0D6
_0222A096:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl ov74_02229DD4
	mov r2, #0xd6
	add r1, r0, #0
	add r0, r5, #0
	lsl r2, r2, #2
	bl memcpy
	add r0, r4, #0
	add r4, #0xdc
	add r0, #0x8c
	add r1, r4, #0
	mov r2, #0x54
	bl ov74_02235F58
	b _0222A0D6
_0222A0BC:
	ldr r7, _0222A0E0 ; =0x000005D4
	mov r2, #0xd6
	add r1, r4, r7
	add r0, r5, #0
	add r1, #0x50
	lsl r2, r2, #2
	bl memcpy
	add r0, r6, #0
	add r1, r4, r7
	mov r2, #0x50
	bl memcpy
_0222A0D6:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222A0DC: .word 0x000015D4
_0222A0E0: .word 0x000005D4
	thumb_func_end ov74_0222A078

	thumb_func_start ov74_0222A0E4
ov74_0222A0E4: ; 0x0222A0E4
	push {r3, lr}
	ldrh r1, [r0]
	cmp r1, #3
	bgt _0222A0FC
	cmp r1, #1
	blt _0222A12C
	beq _0222A10E
	cmp r1, #2
	beq _0222A10E
	cmp r1, #3
	beq _0222A104
	b _0222A12C
_0222A0FC:
	cmp r1, #0xd
	bne _0222A12C
	mov r0, #1
	pop {r3, pc}
_0222A104:
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _0222A12C
	mov r0, #1
	pop {r3, pc}
_0222A10E:
	add r0, #8
	mov r1, #0x98
	mov r2, #0
	bl GetMonData
	cmp r0, #3
	blt _0222A120
	cmp r0, #0xe
	ble _0222A128
_0222A120:
	cmp r0, #0x41
	blt _0222A12C
	cmp r0, #0x47
	bgt _0222A12C
_0222A128:
	mov r0, #1
	pop {r3, pc}
_0222A12C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov74_0222A0E4

