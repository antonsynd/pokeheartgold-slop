#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02230138
	.public ov74_0223026C
	.extern ov74_0222FE4C
	.extern ov74_0222FE5C
	.extern ov74_0222FE68
	.extern ov74_0222FE78
	.extern ov74_0222FEA0
	.extern ov74_02231070
	.extern ov74_0223110C
	.extern ov74_02231154
	.extern ov74_0223115C
	.extern ov74_022311AC
	.extern ov74_022311BC
	.extern ov74_022311CC
	.extern ov74_02231448
	.extern ov74_0223144C
	.extern ov74_02231458
	.extern ov74_02231670
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
	thumb_func_start ov74_02230138
ov74_02230138: ; 0x02230138
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5, #8]
	bl ov74_0223144C
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0223014C
	b _0223025E
_0223014C:
	bl ov74_0223115C
	add r4, r0, #0
	mov r0, #8
	bl ov74_02231070
	bl ov74_0222FE78
	cmp r0, #0
	beq _02230162
	b _02230266
_02230162:
	add r0, r4, #0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #1
	bne _02230174
	add r0, r4, #0
	mov r1, #2
	add r0, #0x60
	strb r1, [r0]
_02230174:
	ldrh r0, [r5, #8]
	cmp r0, #7
	bgt _0223018C
	bge _022301AE
	cmp r0, #2
	bgt _02230266
	cmp r0, #0
	blt _02230266
	beq _02230194
	add sp, #0xc
	cmp r0, #2
	pop {r4, r5, pc}
_0223018C:
	cmp r0, #9
	beq _02230254
	add sp, #0xc
	pop {r4, r5, pc}
_02230194:
	bl ov74_02231670
	cmp r0, #0
	bne _022301A4
	bl ov74_0222FE4C
	add sp, #0xc
	pop {r4, r5, pc}
_022301A4:
	mov r0, #0
	bl ov74_0223110C
	add sp, #0xc
	pop {r4, r5, pc}
_022301AE:
	bl ov74_0223115C
	bl ov74_02231458
	add r4, #0x60
	ldrb r0, [r4]
	cmp r0, #2
	bne _02230266
	add r4, r5, #0
	add r4, #0x14
	bl ov74_022311AC
	ldr r1, [r5, #0x14]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02230266
	bl ov74_022311BC
	ldr r1, [r4]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02230266
	bl ov74_022311CC
	ldr r1, [r4, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _02230266
	bl ov74_0223115C
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xa
	bl ov74_0222FE5C
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xa
	bl ov74_0222FE68
	add r1, sp, #0
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r2, [sp, #8]
	add r3, r4, #0
	strh r0, [r1, #2]
	mov r0, #0
_02230212:
	ldr r1, [r3]
	cmp r1, r2
	bne _0223022A
	mov r1, #0xc
	mul r1, r0
	ldrh r0, [r5, #0x10]
	add r1, r4, r1
	add sp, #0xc
	strh r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xa]
	pop {r4, r5, pc}
_0223022A:
	cmp r1, #0
	bne _02230248
	mov r1, #0xc
	mul r1, r0
	str r2, [r4, r1]
	add r0, sp, #0
	ldrh r0, [r0, #2]
	add r1, r4, r1
	add sp, #0xc
	strh r0, [r1, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xa]
	pop {r4, r5, pc}
_02230248:
	add r0, r0, #1
	add r3, #0xc
	cmp r0, #8
	blt _02230212
	add sp, #0xc
	pop {r4, r5, pc}
_02230254:
	ldrh r0, [r5, #0x10]
	bl ov74_0222FEA0
	add sp, #0xc
	pop {r4, r5, pc}
_0223025E:
	bl ov74_02231448
	bl ov74_0222FE4C
_02230266:
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov74_02230138

	thumb_func_start ov74_0223026C
ov74_0223026C: ; 0x0223026C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r0, [sp]
	bl ov74_02231154
	add r7, r0, #0
	add r0, r4, #4
	bl ov74_0222FE5C
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #4
	bl ov74_0222FE68
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r6, [sp, #0xc]
	add r1, r7, #0
	strh r0, [r2, #2]
	ldrh r3, [r2, #2]
	mov r0, #0
_0223029A:
	ldr r2, [r1]
	add r5, r1, #0
	add r5, #0x34
	cmp r2, r6
	bne _022302B0
	ldrh r5, [r5]
	cmp r5, r3
	bne _022302B0
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022302B0:
	cmp r2, #0
	bne _022302FC
	mov r1, #0x38
	mul r1, r0
	ldr r0, [sp, #0xc]
	add r5, r4, #0
	str r0, [r7, r1]
	add r0, r7, r1
	add r5, #0x58
	add r3, r0, #4
	mov r2, #0xc
_022302C6:
	ldrh r0, [r5]
	add r5, r5, #2
	strh r0, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _022302C6
	add r3, r7, r1
	add r4, #0x70
	add r3, #0x1c
	mov r2, #0xc
_022302DA:
	ldrh r0, [r4]
	add r4, r4, #2
	strh r0, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _022302DA
	add r0, sp, #4
	ldrh r0, [r0, #2]
	add r1, r7, r1
	strh r0, [r1, #0x34]
	ldr r0, [sp]
	add r1, #0x36
	ldrh r0, [r0, #0x12]
	add sp, #0x10
	strb r0, [r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022302FC:
	add r0, r0, #1
	add r1, #0x38
	cmp r0, #8
	blt _0223029A
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov74_0223026C

