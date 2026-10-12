#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EDE1C
	.public ov112_021EDE68
	.extern ov112_021E7464
	.extern ov112_021EA08C
	.extern ov112_021ED640
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EDE1C
ov112_021EDE1C: ; 0x021EDE1C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _021EDE64 ; =0x0001E524
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021EDE5E
	mov r2, #0
	str r2, [r4, #4]
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
	ldr r0, [r4, #0xc]
	add sp, #0x10
	str r0, [r4, #8]
	pop {r4, pc}
_021EDE5E:
	mov r0, #0x22
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_021EDE64: .word 0x0001E524
	thumb_func_end ov112_021EDE1C

	thumb_func_start ov112_021EDE68
ov112_021EDE68: ; 0x021EDE68
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl ov112_021E7464
	add r0, r4, #0
	bl ov112_021ED640
	cmp r0, #0
	bne _021EDE96
	mov r1, #0xad
	lsl r1, r1, #8
	mov r2, #0xbf
	mov r0, #0
	add r1, r4, r1
	lsl r2, r2, #2
	bl MIi_CpuClearFast
	ldr r1, _021EDEF8 ; =0x0000AABC
	mov r0, #0x20
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
_021EDE96:
	ldr r3, _021EDEFC ; =0x0001E42C
	ldr r2, [r4, r3]
	cmp r2, #0
	beq _021EDEAA
	add r3, #0x1c
	ldr r0, [r4, r3]
	mov r1, #1
	bl BufferBoxMonNickname
	b _021EDEBA
_021EDEAA:
	add r0, r3, #0
	add r0, #0x1c
	add r2, r3, #4
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #1
	bl BufferBoxMonNickname
_021EDEBA:
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r3, r2, #0
	bl FillBgTilemapRect
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl BgCommitTilemapBufferToVram
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x18
	bl ov112_021EA08C
	ldr r1, _021EDF00 ; =0x0001E524
	str r0, [r4, r1]
	ldr r0, _021EDF04 ; =0x000004A2
	bl PlayFanfare
	mov r0, #0x24
	add sp, #0x10
	pop {r4, pc}
	nop
_021EDEF8: .word 0x0000AABC
_021EDEFC: .word 0x0001E42C
_021EDF00: .word 0x0001E524
_021EDF04: .word 0x000004A2
	thumb_func_end ov112_021EDE68

