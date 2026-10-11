	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02241208
	.public ov83_02241254
	.extern ov83_0223FD4C
	.extern ov83_0223FF44
	.extern ov83_02240DB0

    .text

	.text
	thumb_func_start ov83_02241208
ov83_02241208: ; 0x02241208
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd
	ldrsb r0, [r4, r0]
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _02241222
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	b _02241228
_02241222:
	cmp r1, r0
	blt _02241228
	mov r1, #0
_02241228:
	strb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_02240DB0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _02241250 ; =0x000007A4
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov83_0223FD4C
	pop {r4, pc}
	.balign 4, 0
_02241250: .word 0x000007A4
	thumb_func_end ov83_02241208

	thumb_func_start ov83_02241254
ov83_02241254: ; 0x02241254
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd
	ldrsb r0, [r4, r0]
	add r0, r0, r1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _0224126E
	sub r0, r0, #1
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	b _02241274
_0224126E:
	cmp r1, r0
	blt _02241274
	mov r1, #0
_02241274:
	strb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov83_02240DB0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov83_02247768
	add r1, r0, #0
	ldr r0, _0224129C ; =0x000007A4
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov83_0223FF44
	pop {r4, pc}
	.balign 4, 0
_0224129C: .word 0x000007A4
	thumb_func_end ov83_02241254

