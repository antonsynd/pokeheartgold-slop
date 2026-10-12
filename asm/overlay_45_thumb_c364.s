#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E4A8
	.extern ov45_0222E5B4
	.extern ov45_02254BCA
	.extern ov45_02254BD2

	.text

	.text
	thumb_func_start ov45_0222E4A8
ov45_0222E4A8: ; 0x0222E4A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #4]
	ldr r1, [r6, #8]
	add r7, r2, #0
	str r3, [sp, #8]
	bl ov45_0222E5B4
	cmp r0, #0
	bne _0222E4C4
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222E4C4:
	ldr r2, [r6, #4]
	add r0, r7, #0
	mov r1, #0
	bl BufferWiFiPlazaActivityName
	ldr r1, [r6, #8]
	mov r4, #0
	cmp r1, #0
	bls _0222E4FC
	ldr r0, _0222E534 ; =gGameLanguage
	add r5, r6, #0
	ldrb r0, [r0]
	str r0, [sp, #0xc]
_0222E4DE:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r1, r4, #1
	str r0, [sp, #4]
	ldr r2, [r5, #0x10]
	add r0, r7, #0
	mov r3, #0
	bl BufferString
	ldr r1, [r6, #8]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r1
	blo _0222E4DE
_0222E4FC:
	ldr r0, [r6, #4]
	cmp r0, #1
	bhi _0222E510
	lsl r2, r1, #1
	ldr r1, _0222E538 ; =ov45_02254BCA
	ldr r0, [sp, #8]
	ldrh r1, [r1, r2]
	bl NewString_ReadMsgData
	b _0222E51C
_0222E510:
	lsl r2, r1, #1
	ldr r1, _0222E53C ; =ov45_02254BD2
	ldr r0, [sp, #8]
	ldrh r1, [r1, r2]
	bl NewString_ReadMsgData
_0222E51C:
	add r4, r0, #0
	ldr r1, [sp, #0x28]
	add r0, r7, #0
	add r2, r4, #0
	bl StringExpandPlaceholders
	add r0, r4, #0
	bl String_Delete
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222E534: .word gGameLanguage
_0222E538: .word ov45_02254BCA
_0222E53C: .word ov45_02254BD2
	thumb_func_end ov45_0222E4A8

