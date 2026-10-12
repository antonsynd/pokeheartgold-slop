#include "constants/moves.h"
	.include "asm/macros.inc"
	.include "overlay_08.inc"
	.include "global.inc"
	.public ov08_02221D2C
	.extern ov08_0221DB24
	.extern ov08_02221C20
	.extern ov08_02225A56
	.extern ov08_02225A57

	.text

	.text
	thumb_func_start ov08_02221D2C
ov08_02221D2C: ; 0x02221D2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	add r2, r3, #0
	add r3, sp, #0x10
	add r4, r1, #0
	ldrb r3, [r3, #0x10]
	add r1, r7, #0
	str r0, [sp]
	bl ov08_02221C20
	add r1, r0, #0
	ldr r2, _02221E60 ; =ov08_02225A56
	lsl r0, r7, #2
	ldrb r6, [r2, r0]
	ldr r2, _02221E64 ; =ov08_02225A57
	ldrb r0, [r2, r0]
	add r5, r6, #0
	mul r5, r0
	add r0, r4, #0
	lsl r2, r5, #1
	bl memcpy
	cmp r7, #5
	bgt _02221D7A
	cmp r7, #0
	blt _02221E5C
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02221D6E: ; jump table
	.short _02221D82 - _02221D6E - 2 ; case 0
	.short _02221D82 - _02221D6E - 2 ; case 1
	.short _02221D82 - _02221D6E - 2 ; case 2
	.short _02221D82 - _02221D6E - 2 ; case 3
	.short _02221D82 - _02221D6E - 2 ; case 4
	.short _02221D82 - _02221D6E - 2 ; case 5
_02221D7A:
	cmp r7, #0x1b
	beq _02221E3C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02221D82:
	mov r0, #0x50
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _02221E5C
	ldrb r1, [r0, #0x1b]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _02221DE2
	lsl r2, r6, #1
	add r0, r2, #5
	lsl r0, r0, #1
	ldrh r1, [r4, r0]
	add r0, sp, #4
	strh r1, [r0]
	add r1, r6, r2
	add r1, r1, #5
	lsl r1, r1, #1
	ldrh r1, [r4, r1]
	strh r1, [r0, #2]
	mov r1, #0
	add r0, sp, #4
_02221DB4:
	add r5, r1, #2
	lsl r3, r1, #1
	add r7, r5, #0
	mul r7, r6
	lsl r5, r7, #1
	ldrh r3, [r0, r3]
	mov r2, #0
	add r5, r4, r5
_02221DC4:
	lsl r7, r2, #1
	add r2, r2, #1
	lsl r2, r2, #0x18
	add r7, r5, r7
	lsr r2, r2, #0x18
	strh r3, [r7, #0xc]
	cmp r2, #9
	blo _02221DC4
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #2
	blo _02221DB4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02221DE2:
	ldrh r0, [r0, #0x14]
	cmp r0, #0
	bne _02221E0C
	mov r1, #0
	cmp r5, #0
	ble _02221E5C
	mov r3, #2
	ldr r2, _02221E68 ; =0x00000FFF
	lsl r3, r3, #0xc
_02221DF4:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r2
	orr r6, r3
	strh r6, [r4, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blt _02221DF4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02221E0C:
	lsl r1, r7, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov08_0221DB24
	cmp r0, #1
	bne _02221E5C
	mov r1, #0
	cmp r5, #0
	ble _02221E5C
	ldr r2, _02221E68 ; =0x00000FFF
	add r3, r2, #1
_02221E24:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r2
	orr r6, r3
	strh r6, [r4, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blt _02221E24
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02221E3C:
	mov r1, #0
	cmp r5, #0
	ble _02221E5C
	mov r3, #0xa
	ldr r2, _02221E68 ; =0x00000FFF
	lsl r3, r3, #0xc
_02221E48:
	lsl r0, r1, #1
	ldrh r6, [r4, r0]
	and r6, r2
	orr r6, r3
	strh r6, [r4, r0]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, r5
	blt _02221E48
_02221E5C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02221E60: .word ov08_02225A56
_02221E64: .word ov08_02225A57
_02221E68: .word 0x00000FFF
	thumb_func_end ov08_02221D2C

