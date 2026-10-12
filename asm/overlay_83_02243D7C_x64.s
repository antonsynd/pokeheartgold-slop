	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_02245D48

    .text

	.text
	thumb_func_start ov83_02245D48
ov83_02245D48: ; 0x02245D48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02245EDC ; =0x0000055C
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r6, r0, #0
	bl AcquireMonLock
	str r0, [sp, #4]
	ldr r0, _02245EE0 ; =0x000005BC
	str r6, [r5, r0]
	add r0, r6, #0
	bl Mon_GetBoxMon
	mov r1, #0x17
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	ldr r1, _02245EE4 ; =0x000005C4
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa1
	bl GetMonData
	ldr r1, _02245EE8 ; =0x000005C7
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa
	bl GetMonData
	ldr r1, _02245EEC ; =0x000005C8
	strb r0, [r5, r1]
	add r0, r6, #0
	bl GetMonNature
	ldr r1, _02245EF0 ; =0x000005C9
	mov r2, #0
	strb r0, [r5, r1]
	add r0, r6, #0
	mov r1, #6
	bl GetMonData
	ldr r1, _02245EF4 ; =0x000005CA
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa3
	bl GetMonData
	mov r1, #0x5d
	lsl r1, r1, #4
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	ldr r1, _02245EF8 ; =0x000005D2
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa5
	bl GetMonData
	ldr r1, _02245EFC ; =0x000005D4
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl GetMonData
	ldr r1, _02245F00 ; =0x000005D6
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa6
	bl GetMonData
	ldr r1, _02245F04 ; =0x000005D8
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa9
	bl GetMonData
	ldr r1, _02245F08 ; =0x000005DA
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xa7
	bl GetMonData
	ldr r1, _02245F0C ; =0x000005DC
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0x70
	bl GetMonData
	ldr r1, _02245F10 ; =0x000005DE
	strb r0, [r5, r1]
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl GetMonData
	ldr r1, _02245F14 ; =0x000005CC
	mov r2, #0
	str r0, [r5, r1]
	add r0, r6, #0
	mov r1, #0xb0
	bl GetMonData
	cmp r0, #1
	ldr r1, _02245F18 ; =0x000005C6
	bne _02245E54
	ldrb r2, [r5, r1]
	mov r0, #0x80
	bic r2, r0
	strb r2, [r5, r1]
	b _02245E5C
_02245E54:
	ldrb r2, [r5, r1]
	mov r0, #0x80
	orr r0, r2
	strb r0, [r5, r1]
_02245E5C:
	add r0, r6, #0
	bl GetMonGender
	ldr r3, _02245F18 ; =0x000005C6
	mov r2, #0x7f
	ldrb r1, [r5, r3]
	mov r4, #0
	bic r1, r2
	mov r2, #0x7f
	and r0, r2
	orr r0, r1
	strb r0, [r5, r3]
_02245E74:
	lsl r0, r4, #1
	add r0, r5, r0
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	mov r1, #0x5e
	ldr r2, [sp]
	lsl r1, r1, #4
	strh r0, [r2, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3a
	mov r2, #0
	add r7, r5, r4
	bl GetMonData
	ldr r1, _02245F1C ; =0x000005E8
	mov r2, #0
	strb r0, [r7, r1]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x3e
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x5e
	lsl r1, r1, #0x18
	ldr r2, [sp]
	lsl r0, r0, #4
	ldrh r0, [r2, r0]
	lsr r1, r1, #0x18
	bl GetMoveMaxPP
	ldr r1, _02245F20 ; =0x000005EC
	strb r0, [r7, r1]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _02245E74
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ReleaseMonLock
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245EDC: .word 0x0000055C
_02245EE0: .word 0x000005BC
_02245EE4: .word 0x000005C4
_02245EE8: .word 0x000005C7
_02245EEC: .word 0x000005C8
_02245EF0: .word 0x000005C9
_02245EF4: .word 0x000005CA
_02245EF8: .word 0x000005D2
_02245EFC: .word 0x000005D4
_02245F00: .word 0x000005D6
_02245F04: .word 0x000005D8
_02245F08: .word 0x000005DA
_02245F0C: .word 0x000005DC
_02245F10: .word 0x000005DE
_02245F14: .word 0x000005CC
_02245F18: .word 0x000005C6
_02245F1C: .word 0x000005E8
_02245F20: .word 0x000005EC
	thumb_func_end ov83_02245D48

