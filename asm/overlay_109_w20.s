	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E5DEC
	.extern ov109_021E7890

	.text

	.text
	thumb_func_start ov109_021E5DEC
ov109_021E5DEC: ; 0x021E5DEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xc5
	ldrb r0, [r0]
	add r7, r1, #0
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xc5
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r7, r0
	bhs _021E5E32
	add r4, r7, #0
	cmp r7, r0
	bhs _021E5E32
	add r6, r5, #0
	add r6, #0xcc
_021E5E12:
	add r0, r4, #1
	lsl r0, r0, #3
	lsl r1, r4, #3
	add r0, r6, r0
	add r1, r6, r1
	mov r2, #8
	bl MI_CpuCopy8
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r4, r0
	blo _021E5E12
_021E5E32:
	add r1, r5, #0
	add r1, #0xcc
	lsl r0, r0, #3
	add r0, r1, r0
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	mov r1, #0xc
	bl _s32_div_f
	strb r0, [r5, #0x1a]
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	mov r1, #0xc
	bl _s32_div_f
	cmp r1, #0
	beq _021E5E66
	ldrb r0, [r5, #0x1a]
	add r0, r0, #1
	strb r0, [r5, #0x1a]
_021E5E66:
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r0, #0
	bne _021E5E74
	mov r0, #1
	strb r0, [r5, #0x1a]
_021E5E74:
	add r0, r5, #0
	add r0, #0xc5
	ldrb r0, [r0]
	cmp r7, r0
	blo _021E5EC0
	cmp r0, #0
	bne _021E5E8E
	mov r0, #3
	strb r0, [r5, #0x1b]
	strb r0, [r5, #0x1c]
	mov r0, #0
	strb r0, [r5, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_021E5E8E:
	cmp r7, #0
	beq _021E5E98
	sub r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021E5E98:
	add r0, r7, #0
	mov r1, #0xc
	bl _s32_div_f
	strb r0, [r5, #0x19]
	add r0, r7, #0
	mov r1, #0xc
	bl _s32_div_f
	ldr r0, _021E5EC4 ; =ov109_021E7890
	ldrb r3, [r0, r1]
	mov r0, #0x1e
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	strb r0, [r5, #0x1b]
	lsr r0, r3, #2
	strb r0, [r5, #0x1c]
_021E5EC0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5EC4: .word ov109_021E7890
	thumb_func_end ov109_021E5DEC

