	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222C15C
	.extern ov40_0222DD94
	.extern ov40_0222DD9C

	.text

	.text
	thumb_func_start ov40_0222C15C
ov40_0222C15C: ; 0x0222C15C
	push {r4, r5, r6, lr}
	ldr r3, _0222C218 ; =0x000006E4
	add r5, r0, #0
	ldr r1, _0222C21C ; =0x00000818
	ldr r4, [r5, r3]
	mov r3, #0x24
	ldr r2, [r5, r1]
	mul r3, r4
	add r2, r2, r3
	ldr r4, [r2, #0x18]
	ldr r2, [r5]
	mov r6, #1
	cmp r2, #6
	bhi _0222C192
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0222C184: ; jump table
	.short _0222C192 - _0222C184 - 2 ; case 0
	.short _0222C192 - _0222C184 - 2 ; case 1
	.short _0222C1EA - _0222C184 - 2 ; case 2
	.short _0222C200 - _0222C184 - 2 ; case 3
	.short _0222C200 - _0222C184 - 2 ; case 4
	.short _0222C1AE - _0222C184 - 2 ; case 5
	.short _0222C1D2 - _0222C184 - 2 ; case 6
_0222C192:
	cmp r4, #3
	bhi _0222C200
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0222C220 ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0222C200
	ldr r1, _0222C224 ; =0x0000010D
	add r0, r5, #0
	bl ov40_0222DD9C
	mov r6, #0
	b _0222C200
_0222C1AE:
	cmp r4, #0
	bne _0222C200
	add r1, #0x18
	ldr r0, [r5, r1]
	bl Save_FashionData_Get
	add r1, r4, #0
	bl sub_0202B9B8
	bl sub_0202BC10
	add r6, r0, #0
	bne _0222C200
	ldr r1, _0222C228 ; =0x00000122
	add r0, r5, #0
	bl ov40_0222DD9C
	b _0222C200
_0222C1D2:
	cmp r4, #0x64
	bne _0222C200
	bl ov40_0222DD94
	cmp r0, #0
	beq _0222C200
	ldr r1, _0222C22C ; =0x00000111
	add r0, r5, #0
	bl ov40_0222DD9C
	mov r6, #0
	b _0222C200
_0222C1EA:
	ldr r2, _0222C230 ; =0x0000270F
	cmp r4, r2
	bne _0222C200
	add r1, #0x64
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _0222C200
	mov r1, #0x81
	bl ov40_0222DD9C
	mov r6, #0
_0222C200:
	cmp r6, #0
	bne _0222C20C
	ldr r0, _0222C234 ; =0x0000057C
	bl PlaySE
	b _0222C212
_0222C20C:
	ldr r0, _0222C238 ; =0x0000057B
	bl PlaySE
_0222C212:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0222C218: .word 0x000006E4
_0222C21C: .word 0x00000818
_0222C220: .word 0x0000087C
_0222C224: .word 0x0000010D
_0222C228: .word 0x00000122
_0222C22C: .word 0x00000111
_0222C230: .word 0x0000270F
_0222C234: .word 0x0000057C
_0222C238: .word 0x0000057B
	thumb_func_end ov40_0222C15C

