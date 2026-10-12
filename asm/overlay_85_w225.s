	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E9C84
	.extern ov85_021EA0EC
	.extern ov85_021EA17C
	.extern ov85_021EA19C

	.text

	.text
	thumb_func_start ov85_021E9C84
ov85_021E9C84: ; 0x021E9C84
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x13
	bgt _021E9CAC
	bge _021E9D12
	cmp r4, #8
	bgt _021E9CA6
	cmp r4, #2
	blt _021E9D92
	beq _021E9CBA
	cmp r4, #7
	beq _021E9D8C
	cmp r4, #8
	beq _021E9D8C
	pop {r4, r5, r6, pc}
_021E9CA6:
	cmp r4, #0xd
	beq _021E9CC0
	pop {r4, r5, r6, pc}
_021E9CAC:
	cmp r4, #0x19
	bgt _021E9CB4
	beq _021E9CDA
	pop {r4, r5, r6, pc}
_021E9CB4:
	cmp r4, #0x1f
	beq _021E9D60
	pop {r4, r5, r6, pc}
_021E9CBA:
	bl ov85_021EA19C
	b _021E9D8C
_021E9CC0:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E9D8C
	mov r1, #0x66
	bl Clear2dMenuWindowAndDelete
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _021E9D8C
_021E9CDA:
	ldr r0, [r5, #0x5c]
	bl ov85_021EA17C
	cmp r0, #0
	bne _021E9CEE
	ldr r0, [r5, #0x5c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_021E9CEE:
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl ov85_021EA0EC
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E9D8C
	mov r1, #0x66
	bl Clear2dMenuWindowAndDelete
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _021E9D8C
_021E9D12:
	ldr r0, _021E9D94 ; =0x00004A50
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _021E9D92
	add r0, r6, #0
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl BufferPlayersName
	bl sub_0203769C
	cmp r6, r0
	beq _021E9D92
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E9D4A
	mov r1, #0x66
	bl Clear2dMenuWindowAndDelete
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021E9D4A:
	bl sub_0203769C
	cmp r0, #0
	bne _021E9D8C
	ldr r2, [r5, #0x10]
	ldr r0, _021E9D98 ; =0x0000FFFF
	ldr r1, [r2, #0x30]
	eor r0, r6
	and r0, r1
	str r0, [r2, #0x30]
	b _021E9D8C
_021E9D60:
	ldr r0, [r5, #0x5c]
	bl ov85_021EA17C
	cmp r0, #0
	bne _021E9D74
	ldr r0, [r5, #0x5c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl RemoveTextPrinter
_021E9D74:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021E9D8C
	mov r1, #0x66
	bl Clear2dMenuWindowAndDelete
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021E9D8C:
	mov r0, #0xd5
	lsl r0, r0, #2
	str r4, [r5, r0]
_021E9D92:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E9D94: .word 0x00004A50
_021E9D98: .word 0x0000FFFF
	thumb_func_end ov85_021E9C84

