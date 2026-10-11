	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02238680
	.public ov72_02239BEC
	.public ov72_02239C14
	.public ov72_0223A280
	.public ov72_0223A588

	.text

	thumb_func_start ov72_02239BEC
ov72_02239BEC: ; 0x02239BEC
	push {r4, lr}
	add r4, r0, #0
	bl ov72_0223A588
	cmp r0, #0
	beq _02239C10
	ble _02239C0C
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0x20
	bl ov72_02238680
	b _02239C10
_02239C0C:
	mov r0, #0x17
	str r0, [r4, #0x1c]
_02239C10:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov72_02239BEC

	thumb_func_start ov72_02239C14
ov72_02239C14: ; 0x02239C14
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x98
	ldr r2, [r0]
	cmp r2, #0x64
	blt _02239C4C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xbd
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	mov r3, #3
	bl BufferIntegerAsString
	ldr r0, _02239C84 ; =0x00000F0F
	ldr r1, _02239C88 ; =0x00000BD4
	str r0, [sp]
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0xa
	mov r3, #1
	bl ov72_0223A280
	b _02239C72
_02239C4C:
	mov r3, #2
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xbd
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl BufferIntegerAsString
	ldr r0, _02239C84 ; =0x00000F0F
	ldr r1, _02239C88 ; =0x00000BD4
	str r0, [sp]
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #6
	mov r3, #1
	bl ov72_0223A280
_02239C72:
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #0x21
	bl ov72_02238680
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_02239C84: .word 0x00000F0F
_02239C88: .word 0x00000BD4
	thumb_func_end ov72_02239C14

