#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F179C
	.extern ov112_021FF2F4
	.extern ov112_021FF434
	.extern ov112_021FF4C0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F179C
ov112_021F179C: ; 0x021F179C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl BgConfig_Alloc
	add r3, sp, #4
	ldr r4, _021F1808 ; =ov112_021FF2F4
	str r0, [r5, #0x14]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021F180C ; =ov112_021FF434
	add r3, sp, #0x14
	mov r2, #0x11
_021F17C4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F17C4
	ldr r0, [r4]
	ldr r4, _021F1810 ; =ov112_021FF4C0
	str r0, [r3]
	mov r7, #0
	add r6, sp, #0x14
_021F17D6:
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	add r2, r6, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	mov r2, #0
	mov r3, #1
	bl BG_FillCharDataRange
	add r7, r7, #1
	add r6, #0x1c
	add r4, r4, #1
	cmp r7, #5
	blt _021F17D6
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1808: .word ov112_021FF2F4
_021F180C: .word ov112_021FF434
_021F1810: .word ov112_021FF4C0
	thumb_func_end ov112_021F179C

