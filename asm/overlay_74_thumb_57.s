#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A5CC
	.public ov74_0222A650
	.public ov74_0222A688
	.extern ov74_02229F60
	.extern ov74_0222A89C
	.extern ov74_0222CE10
	.extern ov74_0223539C
	.extern ov74_0223C2B0
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
	thumb_func_start ov74_0222A5CC
ov74_0222A5CC: ; 0x0222A5CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl OverlayManager_GetData
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl Save_MysteryGift_Get
	ldr r0, _0222A648 ; =0x000005C8
	ldr r1, [r5, r0]
	cmp r1, #0x1e
	bne _0222A5F2
	mov r1, #1
	add r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov74_0222CE10
_0222A5F2:
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0
	bl ov74_02229F60
	add r4, r5, #0
	ldr r0, [r5, #0x38]
	add r4, #0x38
	cmp r0, #0
	bne _0222A626
	mov r0, #9
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x49
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5]
	add r1, r4, #0
	mov r3, #0xf
	bl AddWindowParameterized
_0222A626:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl DrawFrameAndWindow1
	mov r0, #1
	str r0, [sp]
	ldr r1, _0222A64C ; =ov74_0223C2B0
	add r0, r6, #0
	mov r2, #4
	add r3, r4, #0
	bl ov74_0222A89C
	mov r0, #4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222A648: .word 0x000005C8
_0222A64C: .word ov74_0223C2B0
	thumb_func_end ov74_0222A5CC

	thumb_func_start ov74_0222A650
ov74_0222A650: ; 0x0222A650
	push {r4, lr}
	bl OverlayManager_GetData
	ldr r1, _0222A680 ; =0x000005C8
	add r4, r0, #0
	ldr r2, [r4, r1]
	cmp r2, #0x1e
	bne _0222A66A
	mov r2, #1
	add r1, r1, #4
	str r2, [r4, r1]
	bl ov74_0222CE10
_0222A66A:
	ldr r2, _0222A684 ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x36
	mov r3, #2
	bl ov74_0223539C
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0222A680: .word 0x000005C8
_0222A684: .word 0x000015D8
	thumb_func_end ov74_0222A650

	thumb_func_start ov74_0222A688
ov74_0222A688: ; 0x0222A688
	push {r4, lr}
	bl OverlayManager_GetData
	ldr r1, _0222A6B8 ; =0x000005C8
	add r4, r0, #0
	ldr r2, [r4, r1]
	cmp r2, #0x1e
	bne _0222A6A2
	mov r2, #1
	add r1, r1, #4
	str r2, [r4, r1]
	bl ov74_0222CE10
_0222A6A2:
	ldr r2, _0222A6BC ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x37
	mov r3, #2
	bl ov74_0223539C
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0222A6B8: .word 0x000005C8
_0222A6BC: .word 0x000015D8
	thumb_func_end ov74_0222A688

