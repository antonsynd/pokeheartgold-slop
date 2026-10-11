	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222E54C
	.public ov07_0222E5E8
	.public ov07_0222E6A8
	.extern ov07_0221C410
	.extern ov07_0221C448
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_0221C4A8
	.extern ov07_0221FA48
	.extern ov07_02222004
	.extern ov07_02222508
	.extern ov07_022226C4
	.extern ov07_02222768
	.extern ov07_0222E3A4
	.extern ov07_0222E4F8
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_0222E54C
ov07_0222E54C: ; 0x0222E54C
	push {r4, r5, r6, lr}
	mov r1, #0x58
	add r5, r0, #0
	bl ov07_022324D8
	add r4, r0, #0
	str r5, [r4, #4]
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov07_02222004
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov07_0221C4A8
	cmp r0, #0
	bne _0222E598
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov07_0221FA48
	str r0, [r4, #8]
	mov r1, #0
	bl Pokepic_GetAttr
	strh r0, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl Pokepic_GetAttr
	b _0222E5B8
_0222E598:
	add r0, r5, #0
	bl ov07_0221C470
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl ov07_0221FA48
	str r0, [r4, #8]
	mov r1, #0
	bl Pokepic_GetAttr
	strh r0, [r4, #0xc]
	ldr r0, [r4, #8]
	mov r1, #1
	bl Pokepic_GetAttr
_0222E5B8:
	strh r0, [r4, #0xe]
	ldr r0, [r4, #8]
	mov r1, #0xb
	mov r2, #0x32
	bl Pokepic_SetAttr
	cmp r6, #1
	bne _0222E5CC
	mov r0, #0
	b _0222E5CE
_0222E5CC:
	mov r0, #1
_0222E5CE:
	str r0, [r4, #0x54]
	ldr r1, [r4, #0x54]
	add r0, r4, #0
	bl ov07_0222E3A4
	ldr r0, [r4, #4]
	ldr r1, _0222E5E4 ; =ov07_0222E4F8
	add r2, r4, #0
	bl ov07_0221C410
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222E5E4: .word ov07_0222E4F8
	thumb_func_end ov07_0222E54C

	thumb_func_start ov07_0222E5E8
ov07_0222E5E8: ; 0x0222E5E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	mov r5, #0
	cmp r0, #3
	bhi _0222E6A4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E600: ; jump table
	.short _0222E608 - _0222E600 - 2 ; case 0
	.short _0222E638 - _0222E600 - 2 ; case 1
	.short _0222E65A - _0222E600 - 2 ; case 2
	.short _0222E68A - _0222E600 - 2 ; case 3
_0222E608:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov07_02222768
	cmp r0, #0
	beq _0222E630
	add r0, r5, #0
	str r0, [sp]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov07_022226C4
	b _0222E6A4
_0222E630:
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	b _0222E6A4
_0222E638:
	ldr r0, [r4, #0x34]
	sub r0, r0, #1
	str r0, [r4, #0x34]
	bpl _0222E6A4
	ldr r0, [r4, #0x38]
	mov r2, #0xa
	add r0, r0, #1
	str r0, [r4, #0x38]
	mov r0, #8
	add r4, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xf
	add r3, r2, #0
	bl ov07_02222508
	b _0222E6A4
_0222E65A:
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	bl ov07_02222768
	cmp r0, #0
	beq _0222E682
	add r0, r5, #0
	str r0, [sp]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov07_022226C4
	b _0222E6A4
_0222E682:
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	b _0222E6A4
_0222E68A:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf4
	bl Pokepic_SetAttr
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #0xc]
	add r2, #0xf3
	bl Pokepic_SetAttr
	mov r5, #1
_0222E6A4:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov07_0222E5E8

	thumb_func_start ov07_0222E6A8
ov07_0222E6A8: ; 0x0222E6A8
	push {r4, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0222E6BE
	cmp r0, #1
	beq _0222E6D4
	cmp r0, #2
	beq _0222E6E4
	pop {r4, pc}
_0222E6BE:
	add r0, r4, #0
	bl ov07_0222E5E8
	cmp r0, #0
	beq _0222E6F2
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x10
	str r0, [r4, #8]
	pop {r4, pc}
_0222E6D4:
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	bpl _0222E6F2
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_0222E6E4:
	ldr r0, [r4]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
_0222E6F2:
	pop {r4, pc}
	thumb_func_end ov07_0222E6A8

