	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222DA00
	.public ov40_0222DA84
	.public ov40_0222DF60
	.public ov40_0222E8C4
	.public ov40_0222F38C
	.public ov40_0222F6D0
	.public ov40_0222F720
	.public ov40_0222F734
	.public ov40_0222F740
	.public ov40_0222F920
	.public ov40_0222F9D4
	.public ov40_0222FA18
	.public ov40_0222FA24
	.public ov40_0222FA5C
	.public ov40_0222FA88
	.public ov40_022307DC
	.public ov40_02230944
	.public ov40_02230964
	.public ov40_0223DCF0
	.public ov40_0223E520
	.public ov40_022420B4
	.public ov40_02245650
	.public ov40_02245758
	.public ov40_02245784

	.text

	thumb_func_start ov40_0223E520
ov40_0223E520: ; 0x0223E520
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _0223E532
	b _0223E6C8
_0223E532:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E53E: ; jump table
	.short _0223E548 - _0223E53E - 2 ; case 0
	.short _0223E576 - _0223E53E - 2 ; case 1
	.short _0223E60C - _0223E53E - 2 ; case 2
	.short _0223E656 - _0223E53E - 2 ; case 3
	.short _0223E686 - _0223E53E - 2 ; case 4
_0223E548:
	mov r1, #0x71
	bl ov40_0222DF60
	ldr r1, _0223E6D4 ; =0x000004C2
	mov r0, #0xff
	strb r0, [r5, r1]
	ldrb r1, [r5, r1]
	add r0, r4, #0
	bl ov40_0223DCF0
	add r0, r4, #0
	mov r1, #1
	bl ov40_022420B4
	add r0, r4, #0
	mov r1, #0x3d
	mov r2, #7
	bl ov40_022307DC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E6D0
_0223E576:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223E5F2
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _0223E6D8 ; =0x0000047C
	add r1, r4, #0
	add r0, r4, r0
	bl ov40_0222F9D4
	ldr r0, _0223E6DC ; =0x0000049C
	add r0, r4, r0
	bl ov40_0222F734
	add r0, r4, #0
	bl sub_02087E1C
	cmp r0, #1
	ldr r0, _0223E6DC ; =0x0000049C
	bne _0223E5C2
	ldr r2, _0223E6E0 ; =ov40_02245784
	add r0, r4, r0
	add r1, r4, #0
	bl ov40_0222E8C4
	b _0223E5CC
_0223E5C2:
	ldr r2, _0223E6E4 ; =ov40_02245758
	add r0, r4, r0
	add r1, r4, #0
	bl ov40_0222E8C4
_0223E5CC:
	ldr r1, _0223E6D8 ; =0x0000047C
	add r0, r4, r1
	add r1, #0x20
	add r1, r4, r1
	bl ov40_0222FA5C
	ldr r0, _0223E6DC ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	mov r2, #2
	bl ov40_0222F740
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E5F2:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223E6D0
_0223E60C:
	ldr r0, _0223E6D8 ; =0x0000047C
	add r0, r4, r0
	bl ov40_0222FA88
	ldr r1, _0223E6DC ; =0x0000049C
	add r0, r4, r1
	sub r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov40_0222F6D0
	ldr r0, _0223E6DC ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov40_0222F38C
	add r1, r0, #0
	beq _0223E63E
	ldr r0, _0223E6D4 ; =0x000004C2
	strb r1, [r5, r0]
	add r0, r4, #0
	bl ov40_0223DCF0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E63E:
	ldr r0, _0223E6E8 ; =ov40_02245650
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0223E6D0
	add r0, r4, #0
	bl ov40_02230944
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223E6D0
_0223E656:
	ldr r0, _0223E6D8 ; =0x0000047C
	add r0, r4, r0
	bl ov40_0222FA24
	ldr r0, _0223E6DC ; =0x0000049C
	add r0, r4, r0
	bl ov40_0222F720
	ldr r0, _0223E6DC ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov40_0222F920
	ldr r0, _0223E6D8 ; =0x0000047C
	add r0, r4, r0
	bl ov40_0222FA18
	ldr r0, _0223E6DC ; =0x0000049C
	add r0, r4, r0
	bl ov40_0222F734
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E686:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov40_0222DA84
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov40_0222DA00
	cmp r0, #0
	beq _0223E6AE
	add r0, r4, #0
	mov r1, #0
	bl ov40_022420B4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223E6AE:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _0223E6D0
_0223E6C8:
	add r0, r4, #0
	mov r1, #0xb
	bl ov40_0222BF80
_0223E6D0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223E6D4: .word 0x000004C2
_0223E6D8: .word 0x0000047C
_0223E6DC: .word 0x0000049C
_0223E6E0: .word ov40_02245784
_0223E6E4: .word ov40_02245758
_0223E6E8: .word ov40_02245650
	thumb_func_end ov40_0223E520

