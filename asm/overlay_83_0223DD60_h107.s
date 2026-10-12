	.include "asm/macros.inc"
	.include "overlay_83_0223DD60.inc"
	.include "global.inc"
	.public ov83_02242DFC
	.public ov83_02242E88
	.extern ov83_0223FC48

    .text

	.text
	thumb_func_start ov83_02242DFC
ov83_02242DFC: ; 0x02242DFC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, #0x24
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	cmp r1, r2
	beq _02242E80
	add r0, r0, #4
	ldr r1, [r4, r0]
	lsl r0, r2, #3
	add r0, r1, r0
	ldr r1, [r0, #4]
	cmp r1, #4
	beq _02242E2E
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _02242E4E
	b _02242E52
_02242E2E:
	ldr r0, _02242E84 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #0
	bl ov83_0224777C
	cmp r0, #3
	bne _02242E42
	mov r2, #0x1b
	b _02242E54
_02242E42:
	cmp r0, #1
	bne _02242E4A
	mov r2, #0x19
	b _02242E54
_02242E4A:
	mov r2, #0x1a
	b _02242E54
_02242E4E:
	mov r2, #0x1c
	b _02242E54
_02242E52:
	mov r2, #0x18
_02242E54:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xb0
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02242E80:
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_02242E84: .word 0x0000050C
	thumb_func_end ov83_02242DFC

	thumb_func_start ov83_02242E88
ov83_02242E88: ; 0x02242E88
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, #0x24
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	cmp r1, r2
	beq _02242F10
	add r0, r0, #4
	ldr r1, [r4, r0]
	lsl r0, r2, #3
	add r0, r1, r0
	ldr r0, [r0, #4]
	cmp r0, #6
	beq _02242EBA
	cmp r0, #7
	beq _02242EBE
	cmp r0, #8
	beq _02242EC2
	b _02242EE2
_02242EBA:
	mov r2, #0x30
	b _02242EE4
_02242EBE:
	mov r2, #0x31
	b _02242EE4
_02242EC2:
	ldr r0, _02242F14 ; =0x0000050C
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #1
	bl ov83_0224777C
	cmp r0, #3
	bne _02242ED6
	mov r2, #0x34
	b _02242EE4
_02242ED6:
	cmp r0, #1
	bne _02242EDE
	mov r2, #0x32
	b _02242EE4
_02242EDE:
	mov r2, #0x33
	b _02242EE4
_02242EE2:
	mov r2, #0x35
_02242EE4:
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xb0
	str r3, [sp, #0x14]
	bl ov83_0223FC48
	mov r0, #0x21
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r0, #8
	add r1, #0x24
	ldrb r1, [r1]
	str r1, [r4, r0]
_02242F10:
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_02242F14: .word 0x0000050C
	thumb_func_end ov83_02242E88

