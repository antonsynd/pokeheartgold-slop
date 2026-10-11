	.include "asm/macros.inc"
	.include "overlay_49_0225CB50.inc"
	.include "global.inc"
	.public ov49_0225D098
	.public ov49_0225D1C4

    .text

	thumb_func_start ov49_0225D098
ov49_0225D098: ; 0x0225D098
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov49_0225DBF8
	mov r1, #0xa7
	lsl r1, r1, #2
	add r2, r7, r1
	ldr r1, [sp]
	str r0, [sp, #0xc]
	lsl r1, r1, #4
	add r0, r0, #4
	add r1, r2, r1
	bl sub_020181B0
	ldr r5, [sp, #0xc]
	ldr r0, [sp]
	mov r1, #0xc
	mul r1, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r6, #0
	lsl r0, r0, #4
	add r4, r7, r1
	add r5, #0x7c
	str r0, [sp, #0x14]
_0225D0D8:
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _0225D0F2
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r1, r3, r1
	ldr r3, _0225D15C ; =0x00000494
	add r3, r7, r3
	bl sub_020180E8
_0225D0F2:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #3
	blt _0225D0D8
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r0, r0, #4
	bl sub_020182A0
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	lsl r0, r0, #4
	strh r0, [r1]
	ldr r0, [sp, #8]
	mov r3, sp
	lsl r0, r0, #4
	strh r0, [r1, #2]
	ldrh r2, [r1]
	sub r3, r3, #4
	ldr r0, [sp, #0xc]
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov49_0225D1C4
	ldr r0, [sp, #0xc]
	mov r2, #1
	ldr r1, [sp]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r1, #0x14
	add r0, #0xcc
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	lsl r1, r2, #0xc
	add r0, #0xdc
	str r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r0, #0xe0
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0x1f
	add r0, #0xe1
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, #0xe2
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225D15C: .word 0x00000494
	thumb_func_end ov49_0225D098

