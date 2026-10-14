	.include "macros.inc"
	.include "overlay_116.inc"
	.include "global.inc"
	.public ov116_0225F054
	.extern ov116_0225F020
	.extern ov116_0225F3AC
	.extern ov116_0225F3B6

	.text

	.text
	thumb_func_start ov116_0225F054
ov116_0225F054: ; 0x0225F054
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #0xc]
	cmp r0, #7
	bls _0225F066
	b _0225F1A6
_0225F066:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225F072: ; jump table
	.short _0225F082 - _0225F072 - 2 ; case 0
	.short _0225F0BA - _0225F072 - 2 ; case 1
	.short _0225F0D2 - _0225F072 - 2 ; case 2
	.short _0225F0E0 - _0225F072 - 2 ; case 3
	.short _0225F104 - _0225F072 - 2 ; case 4
	.short _0225F140 - _0225F072 - 2 ; case 5
	.short _0225F162 - _0225F072 - 2 ; case 6
	.short _0225F178 - _0225F072 - 2 ; case 7
_0225F082:
	mov r0, #4
	mov r1, #0x10
	bl Heap_Alloc
	str r0, [r4, #0xc]
	mov r2, #0x10
	mov r1, #0
_0225F090:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0225F090
	mov r0, #2
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #8
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F0BA:
	mov r0, #1
	mov r1, #0x10
	str r0, [sp]
	add r2, r1, #0
	add r3, r4, #4
	bl ov01_021EFCF8
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F0D2:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0225F1A6
	add r0, r0, #1
	add sp, #0xc
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F0E0:
	mov r0, #3
	mov r1, #0xf
	bl ov01_021F467C
	mov r2, #0
	str r0, [r5]
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0225F1AC ; =ov116_0225F3B6
	str r2, [r5, #8]
	ldrh r0, [r0, r1]
	add sp, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F104:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
	bpl _0225F1A6
	ldr r2, [r5, #8]
	mov r1, #0xc
	ldr r3, _0225F1B0 ; =ov116_0225F3AC
	mul r1, r2
	ldr r0, [r4, #0x10]
	add r1, r3, r1
	bl ov116_0225F020
	ldr r0, [r5, #8]
	add r2, r0, #1
	str r2, [r5, #8]
	cmp r2, #0x10
	blo _0225F130
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F130:
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0225F1AC ; =ov116_0225F3B6
	add sp, #0xc
	ldrh r0, [r0, r1]
	str r0, [r5, #0xc]
	pop {r3, r4, r5, r6, pc}
_0225F140:
	mov r0, #0xa
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _0225F1B4 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F162:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225F1A6
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F178:
	ldr r1, _0225F1B4 ; =0x00007FFF
	mov r0, #1
	bl sub_0200FBF4
	add r0, r5, #0
	bl ov01_021F46DC
	ldr r0, _0225F1B8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _0225F196
	mov r0, #1
	str r0, [r1]
_0225F196:
	add r0, r4, #0
	add r1, r6, #0
	bl ov01_021EFCDC
	ldr r1, _0225F1B4 ; =0x00007FFF
	mov r0, #1
	bl sub_0200FBF4
_0225F1A6:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0225F1AC: .word ov116_0225F3B6
_0225F1B0: .word ov116_0225F3AC
_0225F1B4: .word 0x00007FFF
_0225F1B8: .word 0x04000050
	thumb_func_end ov116_0225F054

