	.include "macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02241BC4
	.extern ov83_0223FD14
	.extern ov83_02240C6C
	.extern ov83_02241730
	.extern ov83_02241770
	.extern ov83_02247D48
	.extern ov83_02247D5A

    .text

	.text
	thumb_func_start ov83_02241BC4
ov83_02241BC4: ; 0x02241BC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r2, [sp]
	ldrb r0, [r5, #9]
	add r6, r1, #0
	mov r1, #0
	bl ov80_02237B24
	ldr r0, [sp]
	cmp r0, #4
	beq _02241BE0
	mov r0, #1
	b _02241BE2
_02241BE0:
	mov r0, #0
_02241BE2:
	ldrb r7, [r5, #0x15]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r7, #0
	add r1, r6, #0
	bl ov83_0224776C
	bl sub_0203769C
	cmp r0, #0
	bne _02241CC4
	cmp r6, r7
	bhs _02241C92
	add r0, r5, #0
	mov r1, #5
	bl ov83_02240C6C
	ldr r0, _02241DC4 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov83_0224777C
	add r2, r0, #0
	mov r0, #6
	add r6, r4, #0
	mul r6, r0
	ldr r3, _02241DC8 ; =ov83_02247D48
	lsl r2, r2, #1
	add r3, r3, r6
	ldrb r1, [r5, #9]
	ldrh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl ov80_02237FA4
	ldr r0, _02241DC4 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov83_0224777C
	add r7, r0, #0
	ldr r0, _02241DC4 ; =0x0000050C
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	str r0, [sp, #4]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205C174
	str r0, [sp, #8]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205C174
	bl sub_0205C268
	add r3, r7, #1
	add r2, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	lsr r3, r3, #0x10
	bl sub_02031108
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #1
	beq _02241C72
	b _02241D8C
_02241C72:
	ldr r0, [sp]
	ldrb r1, [r5, #0xe]
	cmp r0, #4
	bne _02241C86
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x20
	orr r0, r1
	strb r0, [r5, #0xe]
	b _02241D8C
_02241C86:
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x40
	orr r0, r1
	strb r0, [r5, #0xe]
	b _02241D8C
_02241C92:
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02241DCC ; =0x000007FF
	add r6, r4, #0
	add r1, r5, r0
	ldrb r7, [r1, r4]
	mov r0, #6
	mul r6, r0
	ldr r0, _02241DCC ; =0x000007FF
	ldr r2, _02241DC8 ; =ov83_02247D48
	add r0, r0, #3
	lsl r3, r7, #1
	add r2, r2, r6
	ldrh r0, [r5, r0]
	ldrh r2, [r3, r2]
	sub r0, r0, r2
	ldr r2, _02241DCC ; =0x000007FF
	add r2, r2, #3
	strh r0, [r5, r2]
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	b _02241D8C
_02241CC4:
	cmp r6, r7
	bhs _02241CFA
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov83_022477C4
	ldr r0, _02241DCC ; =0x000007FF
	add r6, r4, #0
	add r1, r5, r0
	ldrb r7, [r1, r4]
	mov r0, #6
	mul r6, r0
	ldr r0, _02241DCC ; =0x000007FF
	ldr r2, _02241DC8 ; =ov83_02247D48
	add r0, r0, #3
	lsl r3, r7, #1
	add r2, r2, r6
	ldrh r0, [r5, r0]
	ldrh r2, [r3, r2]
	sub r0, r0, r2
	ldr r2, _02241DCC ; =0x000007FF
	add r2, r2, #3
	strh r0, [r5, r2]
	ldrb r0, [r1, r4]
	add r0, r0, #1
	strb r0, [r1, r4]
	b _02241D8C
_02241CFA:
	add r0, r5, #0
	mov r1, #5
	bl ov83_02240C6C
	ldr r0, _02241DC4 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov83_0224777C
	add r2, r0, #0
	mov r0, #6
	add r6, r4, #0
	mul r6, r0
	ldr r3, _02241DC8 ; =ov83_02247D48
	lsl r2, r2, #1
	add r3, r3, r6
	ldrb r1, [r5, #9]
	ldrh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl ov80_02237FA4
	ldr r0, _02241DC4 ; =0x0000050C
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl ov83_0224777C
	add r7, r0, #0
	ldr r0, _02241DC4 ; =0x0000050C
	ldr r0, [r5, r0]
	bl Save_Frontier_GetStatic
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205C174
	str r0, [sp, #0x10]
	ldrb r0, [r5, #9]
	add r1, r4, #0
	bl sub_0205C174
	bl sub_0205C268
	add r3, r7, #1
	add r2, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsr r3, r3, #0x10
	bl sub_02031108
	ldrb r0, [r5, #9]
	bl ov80_02237D8C
	cmp r0, #1
	bne _02241D8C
	ldr r0, [sp]
	ldrb r1, [r5, #0xe]
	cmp r0, #4
	bne _02241D82
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x20
	orr r0, r1
	strb r0, [r5, #0xe]
	b _02241D8C
_02241D82:
	mov r0, #0x60
	bic r1, r0
	mov r0, #0x40
	orr r0, r1
	strb r0, [r5, #0xe]
_02241D8C:
	add r0, r5, #0
	bl ov83_02241730
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov83_02241770
	ldr r0, _02241DD0 ; =0x00000508
	ldr r0, [r5, r0]
	bl Options_GetFrame
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xb0
	bl ov83_02247944
	ldr r1, _02241DD4 ; =ov83_02247D5A
	lsl r2, r7, #1
	add r1, r1, r6
	ldrh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #1
	bl ov83_0223FD14
	strb r0, [r5, #0xa]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02241DC4: .word 0x0000050C
_02241DC8: .word ov83_02247D48
_02241DCC: .word 0x000007FF
_02241DD0: .word 0x00000508
_02241DD4: .word ov83_02247D5A
	thumb_func_end ov83_02241BC4

