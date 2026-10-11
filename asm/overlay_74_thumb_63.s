#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222A89C
	.public ov74_0222A94C
	.extern ov74_0222AA18
	.extern ov74_0223C220
	.extern ov74_0223C270
	.extern ov74_0223C2A0
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
	thumb_func_start ov74_0222A89C
ov74_0222A89C: ; 0x0222A89C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp]
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0222A8B8
	bl ListMenuItems_Delete
_0222A8B8:
	add r0, r7, #0
	mov r1, #0x54
	bl ListMenuItems_New
	str r0, [r4, #0x7c]
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xf7
	mov r3, #0x54
	bl NewMsgDataFromNarc
	mov r6, #0
	str r0, [r4, #0x10]
	cmp r7, #0
	ble _0222A8EA
_0222A8D6:
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x10]
	ldr r2, [r5]
	ldr r3, [r5, #4]
	bl ListMenuItems_AppendFromMsgData
	add r6, r6, #1
	add r5, #8
	cmp r6, r7
	blt _0222A8D6
_0222A8EA:
	ldr r0, [r4, #0x10]
	bl DestroyMsgData
	ldr r3, _0222A948 ; =ov74_0223C270
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x7c]
	str r0, [sp, #8]
	add r0, sp, #8
	strh r7, [r0, #0x12]
	ldrh r1, [r0, #0x12]
	strh r1, [r0, #0x10]
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0222A922
	mov r1, #0
	add r2, r1, #0
	bl DestroyListMenu
_0222A922:
	mov r1, #0
	add r0, sp, #8
	add r2, r1, #0
	mov r3, #0x54
	bl ListMenuInit
	str r0, [r4, #0x78]
	mov r0, #0
	ldr r2, [sp, #0x40]
	mvn r0, r0
	cmp r2, r0
	beq _0222A944
	add r4, #0x18
	ldr r0, [sp]
	add r1, r4, #0
	bl ov74_0222AA18
_0222A944:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222A948: .word ov74_0223C270
	thumb_func_end ov74_0222A89C

	thumb_func_start ov74_0222A94C
ov74_0222A94C: ; 0x0222A94C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #0x14]
	add r7, r1, #0
	str r2, [sp, #0x20]
	bl OverlayManager_GetData
	str r0, [sp, #0x1c]
	ldr r0, [r0, #4]
	mov r5, #0
	bl Save_MysteryGift_Get
	ldr r1, _0222AA10 ; =ov74_0223C220
	ldr r4, [sp, #0x1c]
	ldr r2, [r1, #0x70]
	ldr r1, [r1, #0x74]
	str r0, [sp, #0x18]
	add r4, #0x28
	add r5, r5, #1
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	bl SaveMysteryGift_HasAnyCard
	cmp r0, #0
	beq _0222A992
	lsl r6, r5, #3
	add r0, sp, #0x24
	add r1, r0, r6
	ldr r0, _0222AA10 ; =ov74_0223C220
	add r5, r5, #1
	ldr r3, [r0, #0x78]
	ldr r2, [r0, #0x7c]
	add r0, sp, #0x24
	str r3, [r0, r6]
	str r2, [r1, #4]
_0222A992:
	ldr r0, [sp, #0x18]
	bl SaveMysteryGift_SpecialCardTagIsValid
	cmp r0, #0
	beq _0222A9B0
	lsl r6, r5, #3
	add r0, sp, #0x24
	add r1, r0, r6
	ldr r0, _0222AA14 ; =ov74_0223C2A0
	add r5, r5, #1
	ldr r3, [r0]
	ldr r2, [r0, #4]
	add r0, sp, #0x24
	str r3, [r0, r6]
	str r2, [r1, #4]
_0222A9B0:
	lsl r6, r5, #3
	add r0, sp, #0x24
	add r1, r0, r6
	ldr r0, _0222AA14 ; =ov74_0223C2A0
	ldr r3, [r0, #8]
	ldr r2, [r0, #0xc]
	add r0, sp, #0x24
	str r3, [r0, r6]
	str r2, [r1, #4]
	ldr r0, [r4]
	cmp r0, #0
	bne _0222A9EE
	mov r0, #7
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	add r0, r5, #1
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r2, #0
	lsl r0, r7, #0x10
	str r2, [sp, #0xc]
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	ldr r0, [r0]
	mov r3, #6
	bl AddWindowParameterized
_0222A9EE:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl DrawFrameAndWindow1
	ldr r0, [sp, #0x20]
	add r1, sp, #0x24
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r5, #1
	add r3, r4, #0
	bl ov74_0222A89C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0222AA10: .word ov74_0223C220
_0222AA14: .word ov74_0223C2A0
	thumb_func_end ov74_0222A94C

