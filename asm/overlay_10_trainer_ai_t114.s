	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221EE88

	.text

	.text
	thumb_func_start ov10_0221EE88
ov10_0221EE88: ; 0x0221EE88
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0x3d
	lsl r2, r2, #4
	str r1, [sp]
	ldrb r1, [r1, r2]
	mov r7, #0x37
	lsl r7, r7, #4
	mov lr, r1
	mov r3, lr
	lsl r4, r3, #1
	ldr r3, [sp]
	ldr r2, [sp]
	lsl r1, r1, #3
	add r4, r3, r4
	ldr r3, _0221EEEC ; =0x0000307C
	mov r0, #0
	add r5, r2, r1
	mov ip, r1
	ldrh r3, [r4, r3]
	add r1, r5, #0
	add r2, r0, #0
	add r6, r7, #0
_0221EEB4:
	ldrh r4, [r1, r6]
	cmp r3, r4
	beq _0221EEEA
	add r4, r5, r2
	ldrh r4, [r4, r7]
	cmp r4, #0
	bne _0221EEE0
	mov r1, lr
	lsl r2, r1, #1
	ldr r1, [sp]
	ldr r3, [sp]
	add r2, r1, r2
	ldr r1, _0221EEEC ; =0x0000307C
	lsl r0, r0, #1
	ldrh r1, [r2, r1]
	mov r2, ip
	add r2, r3, r2
	add r2, r2, r0
	mov r0, #0x37
	lsl r0, r0, #4
	strh r1, [r2, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221EEE0:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _0221EEB4
_0221EEEA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221EEEC: .word 0x0000307C
	thumb_func_end ov10_0221EE88

