#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E9D6C
	.public ov73_021E9DE0
	.extern ov73_021E83EC
	.extern ov73_021E844C
	.extern ov73_021E9FF8
	.extern ov73_021EA180

	.text

	.text
	thumb_func_start ov73_021E9D6C
ov73_021E9D6C: ; 0x021E9D6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021E9DD4 ; =0x00000F1C
	mov r4, #0
	ldr r0, [r5, r0]
	add r0, r0, #7
	cmp r0, #9
	bhi _021E9DAE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E9D88: ; jump table
	.short _021E9DA8 - _021E9D88 - 2 ; case 0
	.short _021E9D9C - _021E9D88 - 2 ; case 1
	.short _021E9DAE - _021E9D88 - 2 ; case 2
	.short _021E9DA8 - _021E9D88 - 2 ; case 3
	.short _021E9DAC - _021E9D88 - 2 ; case 4
	.short _021E9D9C - _021E9D88 - 2 ; case 5
	.short _021E9DA4 - _021E9D88 - 2 ; case 6
	.short _021E9DAE - _021E9D88 - 2 ; case 7
	.short _021E9DA0 - _021E9D88 - 2 ; case 8
	.short _021E9DA4 - _021E9D88 - 2 ; case 9
_021E9D9C:
	mov r4, #0xd
	b _021E9DAE
_021E9DA0:
	mov r4, #0xb
	b _021E9DAE
_021E9DA4:
	mov r4, #0xc
	b _021E9DAE
_021E9DA8:
	mov r4, #0xe
	b _021E9DAE
_021E9DAC:
	mov r4, #0xf
_021E9DAE:
	add r0, r5, #0
	bl ov73_021EA180
	ldr r0, _021E9DD8 ; =0x00000F0F
	ldr r1, _021E9DDC ; =0x00000BD4
	str r0, [sp]
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r5, #0
	mov r1, #0x2f
	mov r2, #0x36
	bl ov73_021E83EC
	mov r0, #3
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E9DD4: .word 0x00000F1C
_021E9DD8: .word 0x00000F0F
_021E9DDC: .word 0x00000BD4
	thumb_func_end ov73_021E9D6C

	thumb_func_start ov73_021E9DE0
ov73_021E9DE0: ; 0x021E9DE0
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0xf9
	add r4, r0, #0
	lsl r1, r1, #4
	ldrsh r2, [r4, r1]
	cmp r2, #3
	bhi _021E9E7C
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021E9DFC: ; jump table
	.short _021E9E04 - _021E9DFC - 2 ; case 0
	.short _021E9E20 - _021E9DFC - 2 ; case 1
	.short _021E9E44 - _021E9DFC - 2 ; case 2
	.short _021E9E60 - _021E9DFC - 2 ; case 3
_021E9E04:
	sub r1, #0x81
	str r1, [sp]
	ldr r1, _021E9EA0 ; =0x00000BD4
	mov r2, #0x10
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	mov r0, #0xf9
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _021E9E98
_021E9E20:
	ldr r0, _021E9EA4 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021E9E98
	bl sub_0203946C
	bl ov00_021EC8D8
	mov r0, #0xf9
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _021E9E98
_021E9E44:
	sub r1, #0x81
	str r1, [sp]
	ldr r1, _021E9EA0 ; =0x00000BD4
	mov r2, #0x11
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	mov r0, #0xf9
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _021E9E98
_021E9E60:
	ldr r0, _021E9EA4 ; =0x00000BF4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _021E9E98
	mov r0, #0xf9
	lsl r0, r0, #4
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _021E9E98
_021E9E7C:
	ldr r0, _021E9EA8 ; =0x00000F92
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _021E9E98
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov73_021E844C
	mov r0, #0x2e
	str r0, [r4, #0x1c]
_021E9E98:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E9EA0: .word 0x00000BD4
_021E9EA4: .word 0x00000BF4
_021E9EA8: .word 0x00000F92
	thumb_func_end ov73_021E9DE0

