	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225D078
	.public ov91_0225DBE4
	.public ov91_0225DBF4
	.public ov91_0225DC24
	.public ov91_0225DD50
	.public ov91_0225E40C
	.public ov91_0225E648
	.public ov91_0225E6B0
	.public ov91_0225E6D0
	.public ov91_0225EE9C
	.public ov91_0225F7A8
	.public ov91_022601AC
	.public ov91_022601C8
	.public ov91_022601F4
	.public ov91_02261890
	.public ov91_02261928
	.public ov91_02261B10

	.text

	thumb_func_start ov91_0225D078
ov91_0225D078: ; 0x0225D078
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	ldr r1, _0225D1B8 ; =0x00001F54
	add r4, r0, #0
	ldr r2, [r4, r1]
	mov r6, #1
	cmp r2, #3
	bhi _0225D158
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225D094: ; jump table
	.short _0225D09C - _0225D094 - 2 ; case 0
	.short _0225D0E2 - _0225D094 - 2 ; case 1
	.short _0225D13E - _0225D094 - 2 ; case 2
	.short _0225D156 - _0225D094 - 2 ; case 3
_0225D09C:
	bl ov91_0225E6B0
	add r0, r4, #0
	bl ov91_0225EE9C
	mov r0, #2
	str r0, [sp]
	mov r0, #0x18
	add r1, r0, #0
	sub r1, #0x26
	mov r2, #0
	mov r3, #0x3f
	bl StartBrightnessTransition
	ldr r0, _0225D1BC ; =0x00001AB4
	add r0, r4, r0
	bl ov91_0225DBE4
	ldr r0, _0225D1C0 ; =0x000021A4
	ldr r0, [r4, r0]
	bl ov90_02258CB0
	ldr r0, _0225D1C4 ; =0x000087E4
	add r0, r4, r0
	bl ov91_02261B10
	ldr r0, _0225D1C8 ; =0x0000862C
	add r0, r4, r0
	bl ov91_02261890
	ldr r0, _0225D1B8 ; =0x00001F54
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0225D158
_0225D0E2:
	ldr r0, _0225D1BC ; =0x00001AB4
	add r5, r6, #0
	add r0, r4, r0
	bl ov91_0225DBF4
	cmp r0, #0
	bne _0225D0F2
	mov r5, #0
_0225D0F2:
	add r0, r4, #0
	bl ov91_0225E40C
	add r0, r4, #0
	bl ov91_0225E648
	add r0, r4, #0
	bl ov91_0225E6D0
	cmp r0, #1
	bne _0225D10A
	mov r5, #0
_0225D10A:
	ldr r0, _0225D1BC ; =0x00001AB4
	add r0, r4, r0
	bl ov91_0225DC24
	cmp r0, #0
	bne _0225D118
	mov r5, #0
_0225D118:
	mov r0, #2
	bl IsBrightnessTransitionActive
	cmp r0, #0
	bne _0225D124
	mov r5, #0
_0225D124:
	cmp r5, #1
	bne _0225D158
	cmp r7, #1
	bne _0225D158
	ldr r0, _0225D1CC ; =0x00001F58
	mov r1, #0
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r0, r0, #4
	add r1, r1, #1
	str r1, [r4, r0]
	b _0225D158
_0225D13E:
	add r0, r1, #4
	ldr r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0x40
	blo _0225D158
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	b _0225D158
_0225D156:
	mov r6, #0
_0225D158:
	ldr r0, _0225D1D0 ; =0x00008785
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0225D166
	mov r2, #0x77
	mvn r2, r2
	b _0225D168
_0225D166:
	mov r2, #0x78
_0225D168:
	ldr r1, _0225D1D4 ; =0x000019CC
	add r0, r4, r1
	add r1, r1, #2
	ldrh r1, [r4, r1]
	add r1, r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov91_0225DD50
	ldr r0, _0225D1D8 ; =0x00001F74
	ldr r1, _0225D1D4 ; =0x000019CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_022601C8
	ldr r0, _0225D1D8 ; =0x00001F74
	ldr r1, _0225D1D4 ; =0x000019CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_022601F4
	ldr r0, _0225D1D8 ; =0x00001F74
	ldr r1, _0225D1D4 ; =0x000019CC
	ldr r2, [r4]
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_022601AC
	ldr r1, _0225D1BC ; =0x00001AB4
	add r0, r4, #0
	add r1, r4, r1
	bl ov91_0225F7A8
	ldr r0, _0225D1C8 ; =0x0000862C
	add r0, r4, r0
	bl ov91_02261928
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D1B8: .word 0x00001F54
_0225D1BC: .word 0x00001AB4
_0225D1C0: .word 0x000021A4
_0225D1C4: .word 0x000087E4
_0225D1C8: .word 0x0000862C
_0225D1CC: .word 0x00001F58
_0225D1D0: .word 0x00008785
_0225D1D4: .word 0x000019CC
_0225D1D8: .word 0x00001F74
	thumb_func_end ov91_0225D078

