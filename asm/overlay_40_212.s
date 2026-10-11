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
	.public ov40_0222F740
	.public ov40_0222F920
	.public ov40_0222F9D4
	.public ov40_0222FA24
	.public ov40_0222FA5C
	.public ov40_0222FA88
	.public ov40_022307DC
	.public ov40_02230944
	.public ov40_02230964
	.public ov40_0223DDE8
	.public ov40_0223EDE0
	.public ov40_022420B4
	.public ov40_02245650
	.public ov40_0224572C

	.text

	thumb_func_start ov40_0223EDE0
ov40_0223EDE0: ; 0x0223EDE0
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _0223EDF2
	b _0223EF7C
_0223EDF2:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223EDFE: ; jump table
	.short _0223EE08 - _0223EDFE - 2 ; case 0
	.short _0223EE3E - _0223EDFE - 2 ; case 1
	.short _0223EEB6 - _0223EDFE - 2 ; case 2
	.short _0223EF1A - _0223EDFE - 2 ; case 3
	.short _0223EF3A - _0223EDFE - 2 ; case 4
_0223EE08:
	mov r1, #0x73
	bl ov40_0222DF60
	ldr r2, _0223EF88 ; =0x000004C3
	mov r1, #0xff
	strb r1, [r5, r2]
	add r0, r2, #1
	strb r1, [r5, r0]
	ldrb r1, [r5, r2]
	add r2, r2, #1
	ldrb r2, [r5, r2]
	add r0, r4, #0
	bl ov40_0223DDE8
	add r0, r4, #0
	mov r1, #1
	bl ov40_022420B4
	add r0, r4, #0
	mov r1, #0x39
	mov r2, #7
	bl ov40_022307DC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223EF84
_0223EE3E:
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
	beq _0223EE9C
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	ldr r0, _0223EF8C ; =0x0000047C
	add r1, r4, #0
	add r0, r4, r0
	bl ov40_0222F9D4
	ldr r0, _0223EF90 ; =0x0000049C
	ldr r2, _0223EF94 ; =ov40_0224572C
	add r0, r4, r0
	add r1, r4, #0
	bl ov40_0222E8C4
	ldr r1, _0223EF8C ; =0x0000047C
	add r0, r4, r1
	add r1, #0x20
	add r1, r4, r1
	bl ov40_0222FA5C
	ldr r0, _0223EF90 ; =0x0000049C
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
_0223EE9C:
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
	b _0223EF84
_0223EEB6:
	ldr r0, _0223EF8C ; =0x0000047C
	add r0, r4, r0
	bl ov40_0222FA88
	ldr r1, _0223EF90 ; =0x0000049C
	add r0, r4, r1
	sub r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov40_0222F6D0
	ldr r0, _0223EF90 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov40_0222F38C
	cmp r0, #0
	beq _0223EF02
	ldr r0, _0223EF98 ; =0x0000088C
	ldr r0, [r4, r0]
	bl sub_02031620
	ldr r1, _0223EF88 ; =0x000004C3
	strb r0, [r5, r1]
	ldr r0, _0223EF98 ; =0x0000088C
	ldr r0, [r4, r0]
	bl sub_0203162C
	ldr r2, _0223EF9C ; =0x000004C4
	strb r0, [r5, r2]
	sub r1, r2, #1
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	add r0, r4, #0
	bl ov40_0223DDE8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223EF02:
	ldr r0, _0223EFA0 ; =ov40_02245650
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	beq _0223EF84
	add r0, r4, #0
	bl ov40_02230944
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223EF84
_0223EF1A:
	ldr r0, _0223EF8C ; =0x0000047C
	add r0, r4, r0
	bl ov40_0222FA24
	ldr r0, _0223EF90 ; =0x0000049C
	add r0, r4, r0
	bl ov40_0222F720
	ldr r0, _0223EF90 ; =0x0000049C
	add r1, r4, #0
	add r0, r4, r0
	bl ov40_0222F920
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223EF3A:
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
	beq _0223EF62
	add r0, r4, #0
	mov r1, #0
	bl ov40_022420B4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223EF62:
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
	b _0223EF84
_0223EF7C:
	add r0, r4, #0
	mov r1, #0xb
	bl ov40_0222BF80
_0223EF84:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223EF88: .word 0x000004C3
_0223EF8C: .word 0x0000047C
_0223EF90: .word 0x0000049C
_0223EF94: .word ov40_0224572C
_0223EF98: .word 0x0000088C
_0223EF9C: .word 0x000004C4
_0223EFA0: .word ov40_02245650
	thumb_func_end ov40_0223EDE0

