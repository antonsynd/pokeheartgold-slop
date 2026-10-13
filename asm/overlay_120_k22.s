	.include "asm/macros.inc"
	.include "overlay_120.inc"
	.include "global.inc"
	.public ov120_0225F9D4
	.extern ov120_022601F4
	.extern ov120_022601F8
	.extern ov120_022601FC
	.extern ov120_02260200

	.text

	.text
	thumb_func_start ov120_0225F9D4
ov120_0225F9D4: ; 0x0225F9D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	add r5, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	cmp r0, #2
	bne _0225F9EA
	bl GF_AssertFail
_0225F9EA:
	ldr r0, [sp, #0x30]
	ldr r3, _0225FA48 ; =ov120_02260200
	lsl r6, r0, #4
	mov r0, #1
	str r0, [sp]
	ldr r0, _0225FA4C ; =ov120_022601F4
	ldr r3, [r3, r6]
	ldr r0, [r0, r6]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, _0225FA50 ; =ov120_022601FC
	add r2, r7, #0
	ldr r0, [r0, r6]
	str r0, [sp, #8]
	ldr r0, _0225FA54 ; =ov120_022601F8
	ldr r0, [r0, r6]
	str r0, [sp, #0xc]
	ldr r0, _0225FA58 ; =0x000927C0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	bl ov01_021F0614
	mov r0, #0
	str r0, [sp]
	mov r2, #2
	mov r3, #6
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	lsl r2, r2, #0x12
	lsl r3, r3, #0x10
	bl ov01_021F0718
	str r0, [r5]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r5]
	mov r1, #0x10
	bl Sprite_SetDrawPriority
	ldr r0, [r5]
	mov r1, #1
	bl Sprite_SetPriority
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FA48: .word ov120_02260200
_0225FA4C: .word ov120_022601F4
_0225FA50: .word ov120_022601FC
_0225FA54: .word ov120_022601F8
_0225FA58: .word 0x000927C0
	thumb_func_end ov120_0225F9D4

