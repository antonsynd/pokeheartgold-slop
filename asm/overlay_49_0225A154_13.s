	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A2C4
	.public ov49_0225AFD8

    .text

	thumb_func_start ov49_0225A2C4
ov49_0225A2C4: ; 0x0225A2C4
	push {r3, lr}
	mov r1, #0xce
	lsl r1, r1, #2
	add r0, r0, r1
	bl ov49_0225AFD8
	cmp r0, #0
	beq _0225A2EA
	cmp r0, #1
	beq _0225A2E6
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0225A2EE
	ldr r0, _0225A2F4 ; =0x000005DC
	bl PlaySE
_0225A2E6:
	mov r0, #1
	pop {r3, pc}
_0225A2EA:
	mov r0, #0
	pop {r3, pc}
_0225A2EE:
	mov r0, #2
	pop {r3, pc}
	nop
_0225A2F4: .word 0x000005DC
	thumb_func_end ov49_0225A2C4

