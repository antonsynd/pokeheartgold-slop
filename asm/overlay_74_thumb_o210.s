#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02230404
	.public ov74_02230478
	.public ov74_02230520
	.extern ov74_0222FE4C
	.extern ov74_0222FE5C
	.extern ov74_0222FE78
	.extern ov74_0222FFAC
	.extern ov74_0223030C
	.extern ov74_02230320
	.extern ov74_02231054
	.extern ov74_02231070
	.extern ov74_02231094
	.extern ov74_02231100
	.extern ov74_02231154
	.extern ov74_022311A0
	.extern ov74_022311AC
	.extern ov74_022311BC
	.extern ov74_022311CC
	.extern ov74_02231448
	.extern ov74_0223144C
	.extern ov74_02231450
	.extern ov74_02231454
	.extern ov74_02231584
	.extern ov74_0223161C
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
	thumb_func_start ov74_02230404
ov74_02230404: ; 0x02230404
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov74_0223144C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0223046A
	bl ov74_02231100
	bl ov74_02231450
	mov r0, #6
	bl ov74_02231070
	bl ov74_0222FE78
	cmp r0, #0
	bne _02230472
	bl ov74_02231094
	cmp r0, #1
	bne _02230444
	bl ov74_02231154
	ldr r2, _02230474 ; =0x000001C3
	mov r1, #0xf0
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r0, r2]
_02230444:
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _02230458
	cmp r0, #5
	bne _0223045E
	add r0, r4, #0
	bl ov74_02230320
	cmp r0, #0
	bne _02230472
_02230458:
	bl ov74_0223030C
	pop {r4, pc}
_0223045E:
	ldrh r0, [r4, #2]
	bl ov74_02231448
	bl ov74_0222FE4C
	pop {r4, pc}
_0223046A:
	bl ov74_02231448
	bl ov74_0222FE4C
_02230472:
	pop {r4, pc}
	.balign 4, 0
_02230474: .word 0x000001C3
	thumb_func_end ov74_02230404

	thumb_func_start ov74_02230478
ov74_02230478: ; 0x02230478
	push {r4, r5, r6, lr}
	sub sp, #8
	bl ov74_02231100
	add r4, r0, #0
	bl ov74_02231154
	add r6, r0, #0
	bl ov74_02231054
	bl ov74_0222FE78
	cmp r0, #0
	beq _0223049A
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223049A:
	add r0, r4, #0
	mov r1, #0xc0
	bl DC_InvalidateRange
	bl ov74_02231154
	bl ov74_02231454
	ldrh r0, [r4, #0x3c]
	cmp r0, #8
	blo _02230514
	bl ov74_022311A0
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _02230514
	add r5, r4, #0
	add r5, #0x50
	bl ov74_022311AC
	ldr r1, [r4, #0x50]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02230514
	bl ov74_022311BC
	ldr r1, [r5]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02230514
	bl ov74_022311CC
	ldr r1, [r5, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _02230514
	add r0, r4, #4
	bl ov74_0222FE5C
	ldr r1, _0223051C ; =0x000001C3
	str r0, [sp]
	ldrb r1, [r6, r1]
	str r0, [sp, #4]
	lsl r1, r1, #0x1c
	lsr r2, r1, #0x1c
	mov r1, #0x38
	mul r1, r2
	ldr r1, [r6, r1]
	cmp r1, r0
	bne _02230514
	bl ov74_0223161C
	cmp r0, #0
	bne _0223050E
	bl ov74_0222FE4C
_0223050E:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02230514:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223051C: .word 0x000001C3
	thumb_func_end ov74_02230478

	thumb_func_start ov74_02230520
ov74_02230520: ; 0x02230520
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov74_0223144C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02230580
	bl ov74_02231154
	ldr r2, _0223058C ; =0x000001C3
	mov r1, #0xf0
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x20
	orr r1, r3
	strb r1, [r0, r2]
	mov r0, #6
	bl ov74_02231070
	bl ov74_0222FE78
	cmp r0, #0
	bne _02230588
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _02230562
	cmp r0, #5
	bne _02230574
	bl ov74_02230478
	cmp r0, #0
	bne _02230588
_02230562:
	bl ov74_0222FFAC
	bl ov74_02231584
	cmp r0, #0
	bne _02230588
	bl ov74_0222FE4C
	pop {r4, pc}
_02230574:
	ldrh r0, [r4, #2]
	bl ov74_02231448
	bl ov74_0222FE4C
	pop {r4, pc}
_02230580:
	bl ov74_02231448
	bl ov74_0222FE4C
_02230588:
	pop {r4, pc}
	nop
_0223058C: .word 0x000001C3
	thumb_func_end ov74_02230520

