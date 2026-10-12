#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0223547C
	.public ov74_02235568
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
	thumb_func_start ov74_0223547C
ov74_0223547C: ; 0x0223547C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	ldr r4, _02235564 ; =ov74_0223D454
	cmp r1, r0
	beq _0223555A
	ldr r0, [r5, #0x4c]
	cmp r0, r1
	beq _0223555A
	str r1, [r5, #0x4c]
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _022354A6
	add r1, r5, #0
	add r1, #0x48
	ldrb r1, [r1]
	ldr r0, [r5, #0x10]
	bl FillWindowPixelBuffer
_022354A6:
	mov r0, #0
	ldr r1, [r5, #0x4c]
	mvn r0, r0
	cmp r1, r0
	beq _0223555A
	ldr r2, [r5, #0x34]
	ldr r3, [r4, #8]
	mov r0, #1
	mov r1, #0x1b
	bl NewMsgDataFromNarc
	ldr r6, [r5, #0x14]
	str r0, [sp, #0x10]
	cmp r6, #0
	bne _022354CC
	ldr r0, [r4, #8]
	bl MessageFormat_New
	add r6, r0, #0
_022354CC:
	ldr r1, [sp, #0x10]
	ldr r2, [r5, #0x4c]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl ReadMsgData_ExpandPlaceholders
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02235500
	ldr r0, [r5, #0x24]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x20]
	bl AddTextPrinterParameterizedWithColor
	add r7, r0, #0
	b _02235542
_02235500:
	ldr r0, [r5, #0x40]
	mov r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl GetFontAttribute
	add r2, r0, #0
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl FontID_String_GetWidth
	add r7, r0, #0
	ldr r0, [r5, #0x10]
	bl GetWindowWidth
	lsl r0, r0, #3
	sub r3, r0, r7
	ldr r0, [r5, #0x24]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x40]
	bl AddTextPrinterParameterizedWithColor
	add r7, r0, #0
	mov r0, #0
	str r0, [r5, #0xc]
_02235542:
	add r0, r4, #0
	bl String_Delete
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02235554
	add r0, r6, #0
	bl MessageFormat_Delete
_02235554:
	ldr r0, [sp, #0x10]
	bl DestroyMsgData
_0223555A:
	mov r0, #0xff
	str r0, [r5, #0x50]
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02235564: .word ov74_0223D454
	thumb_func_end ov74_0223547C

	thumb_func_start ov74_02235568
ov74_02235568: ; 0x02235568
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	add r6, r2, #0
	ldr r2, [r1]
	add r5, r3, #0
	cmp r2, #0
	bne _022355BA
	lsl r2, r5, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	ldr r2, [r4, #0x18]
	lsl r3, r6, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0x1c]
	lsr r3, r3, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #8]
	ldr r2, [r4, #0x30]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r2, [r4, #0x28]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #0x10]
	ldr r2, [r4, #0x2c]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl AddWindowParameterized
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov74_0223547C
	add r5, r0, #0
	b _022355E8
_022355BA:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _022355CC
	add r0, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl SetWindowX
_022355CC:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _022355DE
	lsl r1, r5, #0x18
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x18
	bl SetWindowY
_022355DE:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov74_0223547C
	add r5, r0, #0
_022355E8:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _0223562E
	ldr r0, [r4]
	cmp r0, #0
	beq _022355FC
	cmp r0, #1
	beq _02235612
	cmp r0, #2
	b _02235628
_022355FC:
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r4, #0x10]
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl DrawFrameAndWindow1
	b _0223562E
_02235612:
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r4, #0x10]
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl DrawFrameAndWindow2
	b _0223562E
_02235628:
	ldr r0, [r4, #0x10]
	bl CopyWindowToVram
_0223562E:
	add r0, r5, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov74_02235568

