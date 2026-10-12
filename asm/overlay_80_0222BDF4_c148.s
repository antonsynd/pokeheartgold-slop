	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222E198

	.text

	.text
	thumb_func_start ov80_0222E198
ov80_0222E198: ; 0x0222E198
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02037454
	cmp r0, #2
	bge _0222E1A8
	mov r4, #1
	b _0222E1B8
_0222E1A8:
	add r0, r5, #0
	add r0, #0x78
	ldrh r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02037B38
	add r4, r0, #0
_0222E1B8:
	cmp r4, #0
	bne _0222E210
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetData
	add r6, r0, #0
	beq _0222E210
	add r0, #0x6f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0222E210
	add r0, r6, #0
	add r0, #0x74
	ldrh r1, [r0]
	cmp r1, #1
	beq _0222E1E0
	ldr r0, _0222E214 ; =0x0000FFFE
	cmp r1, r0
	bne _0222E1EA
_0222E1E0:
	ldr r0, [r5]
	mov r4, #1
	add r0, #0x39
	strb r4, [r0]
	b _0222E210
_0222E1EA:
	cmp r1, #0
	bne _0222E210
	bl sub_0203769C
	mov r1, #1
	eor r0, r1
	bl sub_02034818
	bl PlayerProfile_GetVersion
	cmp r0, #0xc
	bne _0222E210
	add r0, r6, #0
	mov r1, #0
	add r0, #0x6f
	strb r1, [r0]
	add r0, r6, #0
	bl sub_02096BF8
_0222E210:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222E214: .word 0x0000FFFE
	thumb_func_end ov80_0222E198

