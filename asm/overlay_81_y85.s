	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241FEC
	.public ov81_02242058
	.public ov81_022420B4
	.extern ov81_02242CBC
	.extern ov81_02242D18
	.extern ov81_02242D88
	.extern ov81_02242DFC

	.text

	.text
	thumb_func_start ov81_02241FEC
ov81_02241FEC: ; 0x02241FEC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02242054 ; =0x0000047C
	mov r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	bls _02242052
	mov r7, #0xe7
	add r5, r6, #0
	lsl r7, r7, #2
_02242000:
	ldrb r0, [r6, #0x11]
	cmp r4, r0
	bne _0224201C
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl ov81_02242DFC
	ldr r0, [r5, r7]
	mov r1, #1
	bl ov81_02242D88
	b _02242046
_0224201C:
	cmp r4, r0
	bhs _0224203A
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl ov81_02242DFC
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
	b _02242046
_0224203A:
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
_02242046:
	ldr r0, _02242054 ; =0x0000047C
	add r4, r4, #1
	ldr r0, [r6, r0]
	add r5, r5, #4
	cmp r4, r0
	blo _02242000
_02242052:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02242054: .word 0x0000047C
	thumb_func_end ov81_02241FEC

	thumb_func_start ov81_02242058
ov81_02242058: ; 0x02242058
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _022420AC ; =0x0000047C
	add r7, r1, #0
	ldr r0, [r6, r0]
	mov r4, #0
	cmp r0, #0
	bls _022420A8
	add r5, r6, #0
_0224206A:
	ldr r0, _022420B0 ; =0x00000468
	ldr r0, [r6, r0]
	cmp r4, r0
	bne _02242084
	cmp r7, #1
	bne _02242084
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #3
	bl ov81_02242DFC
	b _02242090
_02242084:
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl ov81_02242DFC
_02242090:
	mov r0, #0xe7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
	ldr r0, _022420AC ; =0x0000047C
	add r4, r4, #1
	ldr r0, [r6, r0]
	add r5, r5, #4
	cmp r4, r0
	blo _0224206A
_022420A8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022420AC: .word 0x0000047C
_022420B0: .word 0x00000468
	thumb_func_end ov81_02242058

	thumb_func_start ov81_022420B4
ov81_022420B4: ; 0x022420B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0224216C ; =0x0000047C
	ldr r0, [r5, r0]
	cmp r0, #3
	bne _022420CA
	mov r0, #0x50
	mov r7, #0x10
	str r0, [sp, #0xc]
	b _022420D0
_022420CA:
	mov r0, #0x70
	mov r7, #0x28
	str r0, [sp, #0xc]
_022420D0:
	mov r6, #0
	add r4, r6, #0
_022420D4:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r6, #0
	add r1, r0, #0
	mul r1, r4
	add r0, r7, r1
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #2
	mov r3, #0
	bl ov81_02242CBC
	lsl r1, r4, #2
	add r2, r5, r1
	mov r1, #0xea
	lsl r1, r1, #2
	str r0, [r2, r1]
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _022420D4
	add r0, r1, #0
	add r0, #0xd4
	ldr r1, [r5, r0]
	cmp r1, #2
	bne _02242124
	sub r0, #0xcc
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
_02242124:
	mov r6, #0
	cmp r4, #6
	bhs _02242166
_0224212A:
	lsl r0, r4, #2
	add r7, r5, r0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #3
	add r2, r6, #0
	mov r3, #0
	bl ov81_02242D18
	mov r1, #0xea
	lsl r1, r1, #2
	str r0, [r7, r1]
	add r0, r1, #0
	ldr r0, [r7, r0]
	mov r1, #0
	bl ov81_02242D88
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _0224212A
_02242166:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224216C: .word 0x0000047C
	thumb_func_end ov81_022420B4

