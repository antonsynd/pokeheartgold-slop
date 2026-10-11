	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221F47C

	.text

	.text
	thumb_func_start ov10_0221F47C
ov10_0221F47C: ; 0x0221F47C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	ldr r2, _0221F5E8 ; =0x00000137
	add r7, r0, #0
	add r4, r1, #0
	cmp r3, r2
	bgt _0221F494
	blt _0221F48E
	b _0221F590
_0221F48E:
	cmp r3, #0xed
	beq _0221F536
	b _0221F5E2
_0221F494:
	add r0, r2, #0
	add r0, #0x34
	cmp r3, r0
	bgt _0221F4A4
	add r2, #0x34
	cmp r3, r2
	beq _0221F4AC
	b _0221F5E2
_0221F4A4:
	add r2, #0x8a
	cmp r3, r2
	beq _0221F4B8
	b _0221F5E2
_0221F4AC:
	add r0, r4, #0
	add r1, r6, #0
	bl GetNaturalGiftType
	add r5, r0, #0
	b _0221F5E4
_0221F4B8:
	add r0, r4, #0
	add r1, r6, #0
	bl GetBattlerHeldItemEffect
	sub r0, #0x7e
	cmp r0, #0xf
	bhi _0221F532
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221F4D2: ; jump table
	.short _0221F512 - _0221F4D2 - 2 ; case 0
	.short _0221F516 - _0221F4D2 - 2 ; case 1
	.short _0221F51E - _0221F4D2 - 2 ; case 2
	.short _0221F51A - _0221F4D2 - 2 ; case 3
	.short _0221F526 - _0221F4D2 - 2 ; case 4
	.short _0221F4F2 - _0221F4D2 - 2 ; case 5
	.short _0221F4FA - _0221F4D2 - 2 ; case 6
	.short _0221F4FE - _0221F4D2 - 2 ; case 7
	.short _0221F4F6 - _0221F4D2 - 2 ; case 8
	.short _0221F522 - _0221F4D2 - 2 ; case 9
	.short _0221F506 - _0221F4D2 - 2 ; case 10
	.short _0221F502 - _0221F4D2 - 2 ; case 11
	.short _0221F50A - _0221F4D2 - 2 ; case 12
	.short _0221F52A - _0221F4D2 - 2 ; case 13
	.short _0221F52E - _0221F4D2 - 2 ; case 14
	.short _0221F50E - _0221F4D2 - 2 ; case 15
_0221F4F2:
	mov r5, #1
	b _0221F5E4
_0221F4F6:
	mov r5, #2
	b _0221F5E4
_0221F4FA:
	mov r5, #3
	b _0221F5E4
_0221F4FE:
	mov r5, #4
	b _0221F5E4
_0221F502:
	mov r5, #5
	b _0221F5E4
_0221F506:
	mov r5, #6
	b _0221F5E4
_0221F50A:
	mov r5, #7
	b _0221F5E4
_0221F50E:
	mov r5, #8
	b _0221F5E4
_0221F512:
	mov r5, #0xa
	b _0221F5E4
_0221F516:
	mov r5, #0xb
	b _0221F5E4
_0221F51A:
	mov r5, #0xc
	b _0221F5E4
_0221F51E:
	mov r5, #0xd
	b _0221F5E4
_0221F522:
	mov r5, #0xe
	b _0221F5E4
_0221F526:
	mov r5, #0xf
	b _0221F5E4
_0221F52A:
	mov r5, #0x10
	b _0221F5E4
_0221F52E:
	mov r5, #0x11
	b _0221F5E4
_0221F532:
	mov r5, #0
	b _0221F5E4
_0221F536:
	ldr r0, _0221F5EC ; =0x00002D54
	add r1, r4, r0
	mov r0, #0xc0
	mul r0, r6
	ldr r4, [r1, r0]
	lsl r0, r4, #2
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r5, r0, #0x1a
	lsl r0, r4, #7
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r3, r0, #0x1b
	lsl r0, r4, #0xc
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r2, r0, #0x1c
	lsl r0, r4, #0x11
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	lsl r0, r4, #0x1b
	lsl r4, r4, #0x16
	lsr r4, r4, #0x1b
	lsr r6, r0, #0x1b
	mov r0, #1
	lsl r4, r4, #0x1f
	and r0, r6
	lsr r4, r4, #0x1e
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r1, r5, #0
	orr r1, r0
	mov r0, #0xf
	mul r0, r1
	mov r1, #0x3f
	bl _s32_div_f
	add r5, r0, #1
	cmp r5, #9
	blt _0221F5E4
	add r5, r5, #1
	b _0221F5E4
_0221F590:
	mov r2, #0xd
	str r2, [sp]
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _0221F5E4
	mov r0, #0x4c
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _0221F5E4
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, _0221F5F0 ; =0x000080FF
	tst r1, r0
	beq _0221F5E4
	mov r1, #3
	tst r1, r0
	beq _0221F5C8
	mov r5, #0xb
_0221F5C8:
	mov r1, #0xc
	tst r1, r0
	beq _0221F5D0
	mov r5, #5
_0221F5D0:
	mov r1, #0x30
	tst r1, r0
	beq _0221F5D8
	mov r5, #0xa
_0221F5D8:
	mov r1, #0xc0
	tst r0, r1
	beq _0221F5E4
	mov r5, #0xf
	b _0221F5E4
_0221F5E2:
	mov r5, #0
_0221F5E4:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221F5E8: .word 0x00000137
_0221F5EC: .word 0x00002D54
_0221F5F0: .word 0x000080FF
	thumb_func_end ov10_0221F47C

