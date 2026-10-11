	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225A088
	.public ov90_0225A1B8

	.text

	thumb_func_start ov90_0225A088
ov90_0225A088: ; 0x0225A088
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	beq _0225A09E
	bl GF_AssertFail
_0225A09E:
	mov r1, #0
	str r4, [r6]
	add r3, r1, #0
	ldr r0, [r4]
	add r2, r1, #0
	sub r3, #0xff
	bl BgSetPosTextAndCommit
	ldr r0, [r6]
	mov r2, #0
	add r3, r2, #0
	ldr r0, [r0]
	mov r1, #1
	sub r3, #0xff
	bl BgSetPosTextAndCommit
	mov r7, #6
	mov r4, #0
	add r5, r6, #4
	lsl r7, r7, #6
_0225A0C6:
	mov r2, #6
	ldr r0, _0225A100 ; =0x0000FF01
	add r1, r5, #0
	lsl r2, r2, #6
	bl MIi_CpuClear16
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #2
	blt _0225A0C6
	mov r2, #0x61
	lsl r2, r2, #2
	ldr r0, [sp]
	add r1, r6, #4
	add r2, r6, r2
	bl sub_02014A08
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [r6, r1]
	mov r1, #0
	bl sub_02014A78
	ldr r0, _0225A104 ; =ov90_0225A1B8
	add r1, r6, #0
	bl Main_SetHBlankIntrCB
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A100: .word 0x0000FF01
_0225A104: .word ov90_0225A1B8
	thumb_func_end ov90_0225A088

