#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F298C
	.public ov112_021F2A78
	.extern ov112_021F1624
	.extern ov112_021F1F3C
	.extern ov112_021F1F54
	.extern ov112_021F2204
	.extern ov112_021F22B0
	.extern ov112_021F22D0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F298C
ov112_021F298C: ; 0x021F298C
	push {r4, r5, r6, lr}
	ldr r1, _021F2A64 ; =0x0000013D
	add r5, r0, #0
	ldrb r1, [r5, r1]
	mov r4, #0
	mov r2, #1
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r6, [r1]
	add r1, r4, #0
	bl ov112_021F2204
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x84
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #3
	bl ov112_021F22B0
	ldr r0, [r6, #0x7c]
	mov r1, #0x64
	bl _u32_div_f
	ldr r1, _021F2A68 ; =0x0000028F
	cmp r0, r1
	ble _021F29C8
	add r0, r1, #0
_021F29C8:
	add r4, r4, r0
	ldr r0, _021F2A6C ; =0x00000142
	ldrb r1, [r5, r0]
	mov r0, #0xa
	mul r0, r1
	cmp r0, #0x28
	ble _021F29D8
	mov r0, #0x28
_021F29D8:
	add r4, r4, r0
	ldr r0, _021F2A70 ; =0x00000141
	ldrb r1, [r5, r0]
	mov r0, #0xa
	mul r0, r1
	cmp r0, #0x28
	ble _021F29E8
	mov r0, #0x28
_021F29E8:
	add r4, r4, r0
	ldr r0, _021F2A74 ; =0x00000143
	ldrb r1, [r5, r0]
	mov r0, #0xf
	mul r0, r1
	cmp r0, #0x96
	ble _021F29F8
	mov r0, #0x96
_021F29F8:
	mov r2, #0x51
	lsl r2, r2, #2
	ldr r3, [r5, r2]
	add r0, r4, r0
	lsl r1, r3, #0x17
	lsr r4, r1, #0x1f
	lsl r3, r3, #0x16
	mov r1, #0xfa
	add r6, r4, #0
	lsr r3, r3, #0x1f
	mul r6, r1
	add r4, r3, #0
	add r0, r0, r6
	mul r4, r1
	add r0, r0, r4
	add r2, #0xe2
	cmp r0, r2
	blo _021F2A20
	mov r2, #0x48
	b _021F2A4C
_021F2A20:
	add r1, #0x32
	cmp r0, r1
	blo _021F2A2A
	mov r2, #0x49
	b _021F2A4C
_021F2A2A:
	cmp r0, #0xc8
	blo _021F2A32
	mov r2, #0x4a
	b _021F2A4C
_021F2A32:
	cmp r0, #0x96
	blo _021F2A3A
	mov r2, #0x4b
	b _021F2A4C
_021F2A3A:
	cmp r0, #0x64
	blo _021F2A42
	mov r2, #0x4c
	b _021F2A4C
_021F2A42:
	cmp r0, #0x1e
	blo _021F2A4A
	mov r2, #0x4d
	b _021F2A4C
_021F2A4A:
	mov r2, #0x4e
_021F2A4C:
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0xc
	bge _021F2A5A
	mov r1, #0x47
	b _021F2A5C
_021F2A5A:
	mov r1, #0x5a
_021F2A5C:
	add r0, r5, #0
	bl ov112_021F1624
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F2A64: .word 0x0000013D
_021F2A68: .word 0x0000028F
_021F2A6C: .word 0x00000142
_021F2A70: .word 0x00000141
_021F2A74: .word 0x00000143
	thumb_func_end ov112_021F298C

	thumb_func_start ov112_021F2A78
ov112_021F2A78: ; 0x021F2A78
	push {r4, r5, r6, lr}
	ldr r2, _021F2B28 ; =0x0000013D
	add r5, r0, #0
	add r4, r1, #0
	ldrb r1, [r5, r2]
	sub r2, #0x11
	lsl r1, r1, #2
	add r1, r5, r1
	add r1, #0xc0
	ldr r1, [r1]
	add r1, #0x78
	ldrh r6, [r1]
	cmp r6, r2
	blo _021F2AD2
	mov r1, #0
	mov r2, #1
	bl ov112_021F2204
	add r0, r5, #0
	ldr r1, [r5, #0xc]
	add r0, #0x84
	lsl r1, r1, #0x18
	ldr r0, [r0]
	lsr r1, r1, #0x18
	mov r2, #3
	bl ov112_021F22B0
	mov r1, #0xfa
	lsl r1, r1, #4
	cmp r6, r1
	blo _021F2ABA
	mov r1, #0x4f
	b _021F2B1C
_021F2ABA:
	lsr r0, r1, #1
	cmp r6, r0
	blo _021F2AC4
	mov r1, #0x50
	b _021F2B1C
_021F2AC4:
	lsr r0, r1, #2
	cmp r6, r0
	blo _021F2ACE
	mov r1, #0x51
	b _021F2B1C
_021F2ACE:
	mov r1, #0x52
	b _021F2B1C
_021F2AD2:
	mov r1, #0
	mov r2, #1
	bl ov112_021F2204
	add r0, r5, #0
	add r0, #0x98
	mov r1, #0x80
	mov r2, #0x48
	mov r3, #0
	bl ov112_021F1F54
	add r0, r5, #0
	add r0, #0x98
	mov r1, #0
	bl ov112_021F1F3C
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	mov r3, #0xa
	bl ov112_021F22D0
	cmp r4, #0x14
	blo _021F2B06
	cmp r4, #0x18
	bls _021F2B0A
_021F2B06:
	cmp r4, #7
	bhi _021F2B0E
_021F2B0A:
	mov r1, #0x53
	b _021F2B1C
_021F2B0E:
	cmp r4, #0xc
	blo _021F2B1A
	cmp r4, #0x10
	bhi _021F2B1A
	mov r1, #0x54
	b _021F2B1C
_021F2B1A:
	mov r1, #0x55
_021F2B1C:
	add r0, r5, #0
	mov r2, #0
	bl ov112_021F1624
	pop {r4, r5, r6, pc}
	nop
_021F2B28: .word 0x0000013D
	thumb_func_end ov112_021F2A78

