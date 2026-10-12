	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225C10C
	.extern ov27_0225CF94
	.extern ov27_0225CFC8

	.text

	.text
	thumb_func_start ov27_0225C10C
ov27_0225C10C: ; 0x0225C10C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _0225C160 ; =ov27_0225CFC8
	mov r4, #0
	add r6, r5, #0
_0225C116:
	ldr r0, _0225C164 ; =0x0000051C
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1c
	lsl r0, r0, #3
	add r0, r7, r0
	ldrb r1, [r4, r0]
	cmp r1, #0xd
	beq _0225C14C
	cmp r1, #7
	bge _0225C13A
	ldr r0, [r5, #0x10]
	bl FieldSystem_ShouldDrawStartMenuIcon
	ldr r1, _0225C168 ; =0x00000514
	add r2, r5, r4
	strb r0, [r2, r1]
	b _0225C14C
_0225C13A:
	ldr r0, _0225C16C ; =ov27_0225CF94
	lsl r1, r1, #2
	add r0, r0, r1
	ldrh r0, [r0, #2]
	add r1, r5, r4
	lsl r0, r0, #0x10
	lsr r2, r0, #0x1f
	ldr r0, _0225C168 ; =0x00000514
	strb r2, [r1, r0]
_0225C14C:
	ldr r0, _0225C168 ; =0x00000514
	add r1, r5, r4
	ldrb r1, [r1, r0]
	sub r0, #0xa4
	add r4, r4, #1
	strb r1, [r6, r0]
	add r6, #8
	cmp r4, #7
	blt _0225C116
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225C160: .word ov27_0225CFC8
_0225C164: .word 0x0000051C
_0225C168: .word 0x00000514
_0225C16C: .word ov27_0225CF94
	thumb_func_end ov27_0225C10C

