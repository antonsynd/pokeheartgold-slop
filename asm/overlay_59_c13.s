	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02238124
	.public ov59_02238218
	.extern ov59_02238AB0
	.extern ov59_02238C40
	.extern ov59_02238F58
	.extern ov59_02238FB4
	.extern ov59_02238FF4
	.extern ov59_022390A8
	.extern ov59_0223919C
	.extern ov59_0223A05C

	.text

	.text
	thumb_func_start ov59_02238124
ov59_02238124: ; 0x02238124
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x3c]
	cmp r1, #3
	bhi _0223820C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223813A: ; jump table
	.short _02238142 - _0223813A - 2 ; case 0
	.short _02238160 - _0223813A - 2 ; case 1
	.short _0223817E - _0223813A - 2 ; case 2
	.short _022381DA - _0223813A - 2 ; case 3
_02238142:
	mov r1, #2
	bl ov59_02238FF4
	add r0, r4, #0
	mov r1, #1
	bl ov59_02238AB0
	add r0, r4, #0
	mov r1, #0xb
	bl ov59_02238C40
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _02238214
_02238160:
	bl ov59_0223A05C
	cmp r0, #6
	beq _02238214
	add r1, r4, #0
	add r1, #0x48
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #4
	add r0, #0x51
	strb r1, [r0]
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _02238214
_0223817E:
	add r1, r4, #0
	add r1, #0x51
	ldrb r3, [r1]
	add r1, r4, #0
	add r1, #0x51
	ldrb r1, [r1]
	sub r2, r1, #1
	add r1, r4, #0
	add r1, #0x51
	strb r2, [r1]
	cmp r3, #0
	bne _02238214
	add r1, r4, #0
	add r1, #0x48
	ldrb r1, [r1]
	cmp r1, #1
	bne _022381BE
	mov r1, #0
	bl ov59_02238FF4
	add r0, r4, #0
	mov r1, #0
	bl ov59_02238AB0
	add r0, r4, #0
	mov r1, #0xa
	bl ov59_02238C40
	mov r0, #0
	strh r0, [r4, #0x3c]
	mov r0, #5
	pop {r4, pc}
_022381BE:
	mov r1, #0xc
	bl ov59_02238C40
	add r0, r4, #0
	mov r1, #0
	bl ov59_02238AB0
	add r0, r4, #0
	bl ov59_02238F58
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _02238214
_022381DA:
	bl ov59_02238FB4
	cmp r0, #0
	blt _02238214
	mov r1, #0
	strh r1, [r4, #0x3c]
	cmp r0, #0
	beq _022381FE
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x4d
	add r4, #0x4e
	ldrb r1, [r1]
	ldrb r2, [r4]
	bl ApricornBox_SetKurtApricorn
	mov r0, #1
	pop {r4, pc}
_022381FE:
	add r0, r4, #0
	bl ov59_02238FF4
	add r0, r4, #0
	mov r1, #0xa
	bl ov59_02238C40
_0223820C:
	mov r0, #0
	strh r0, [r4, #0x3c]
	mov r0, #5
	pop {r4, pc}
_02238214:
	mov r0, #6
	pop {r4, pc}
	thumb_func_end ov59_02238124

	thumb_func_start ov59_02238218
ov59_02238218: ; 0x02238218
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #0x3c]
	cmp r1, #3
	bhi _022382D6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223822E: ; jump table
	.short _02238236 - _0223822E - 2 ; case 0
	.short _02238244 - _0223822E - 2 ; case 1
	.short _0223826A - _0223822E - 2 ; case 2
	.short _0223828A - _0223822E - 2 ; case 3
_02238236:
	mov r1, #2
	bl ov59_02238FF4
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _022382DE
_02238244:
	mov r1, #1
	bl ov59_022390A8
	cmp r0, #0
	beq _022382DE
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov59_0223919C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov59_0223919C
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
	b _022382DE
_0223826A:
	add r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	bne _022382DE
	ldr r0, _022382E4 ; =0x000008E6
	bl PlaySE
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x15
	bl Sprite_SetAnimCtrlSeq
	ldrh r0, [r4, #0x3c]
	add r0, r0, #1
	strh r0, [r4, #0x3c]
_0223828A:
	ldr r0, _022382E8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _022382A2
	mov r0, #0
	strh r0, [r4, #0x3c]
	ldr r0, _022382EC ; =0x000005EA
	bl PlaySE
	mov r0, #0xa
	pop {r4, pc}
_022382A2:
	mov r0, #2
	tst r0, r1
	beq _022382B6
	mov r0, #0
	strh r0, [r4, #0x3c]
	ldr r0, _022382F0 ; =0x00000682
	bl PlaySE
	mov r0, #9
	pop {r4, pc}
_022382B6:
	bl System_GetTouchNew
	cmp r0, #0
	beq _022382DE
	mov r0, #0
	strh r0, [r4, #0x3c]
	ldr r0, _022382F0 ; =0x00000682
	bl PlaySE
	ldr r0, [r4, #0x40]
	cmp r0, #1
	beq _022382D2
	mov r0, #0
	str r0, [r4, #0x40]
_022382D2:
	mov r0, #9
	pop {r4, pc}
_022382D6:
	mov r0, #0
	strh r0, [r4, #0x3c]
	mov r0, #4
	pop {r4, pc}
_022382DE:
	mov r0, #7
	pop {r4, pc}
	nop
_022382E4: .word 0x000008E6
_022382E8: .word gSystem
_022382EC: .word 0x000005EA
_022382F0: .word 0x00000682
	thumb_func_end ov59_02238218

