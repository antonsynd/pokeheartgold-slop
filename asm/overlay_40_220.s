	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0223FCB8
	.public ov40_0223FCF8
	.public ov40_022428D4
	.public ov40_02242AEC

	.text

	thumb_func_start ov40_0223FCB8
ov40_0223FCB8: ; 0x0223FCB8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ov40_02242AEC
	cmp r0, #0
	beq _0223FCF0
	ldr r1, _0223FCF4 ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0223FCE8
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _0223FCF4 ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_0223FCDA:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _0223FCDA
_0223FCE8:
	add r0, r4, #0
	mov r1, #0x12
	bl ov40_0222BF80
_0223FCF0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223FCF4: .word 0x00004138
	thumb_func_end ov40_0223FCB8

	thumb_func_start ov40_0223FCF8
ov40_0223FCF8: ; 0x0223FCF8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	bl ov40_022428D4
	cmp r0, #0
	beq _0223FD30
	ldr r1, _0223FD34 ; =0x00004138
	mov r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0223FD28
	mov r1, #0x9a
	lsl r1, r1, #6
	add r5, r4, r1
	ldr r2, _0223FD34 ; =0x00004138
	add r6, r4, #0
	sub r1, #0x78
_0223FD1A:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	add r0, r0, #1
	add r5, #0xe4
	add r6, r6, #4
	cmp r0, r3
	blt _0223FD1A
_0223FD28:
	add r0, r4, #0
	mov r1, #0x12
	bl ov40_0222BF80
_0223FD30:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223FD34: .word 0x00004138
	thumb_func_end ov40_0223FCF8

