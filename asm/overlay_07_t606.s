	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02231A20
	.extern ov07_02236864

	.text

	.text
	thumb_func_start ov07_02231A20
ov07_02231A20: ; 0x02231A20
	push {r4, r5}
	sub sp, #0x18
	ldr r5, _02231A4C ; =ov07_02236864
	add r4, sp, #0
	mov r3, #0xc
_02231A2A:
	ldrh r1, [r5]
	add r5, r5, #2
	strh r1, [r4]
	add r4, r4, #2
	sub r3, r3, #1
	bne _02231A2A
	lsl r3, r0, #2
	add r0, sp, #0
	add r1, r0, r3
	ldrh r0, [r0, r3]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	add sp, #0x18
	pop {r4, r5}
	bx lr
	nop
_02231A4C: .word ov07_02236864
	thumb_func_end ov07_02231A20

