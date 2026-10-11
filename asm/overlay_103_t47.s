	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021ED9AC
	.extern ov103_021EDC68

	.text

	.text
	thumb_func_start ov103_021ED9AC
ov103_021ED9AC: ; 0x021ED9AC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	bne _021ED9BE
	mov r0, #0x15
	str r0, [r4, #0x28]
	mov r0, #0
	pop {r4, pc}
_021ED9BE:
	add r3, r4, #0
	add r3, #0x21
	ldrb r3, [r3]
	ldrh r2, [r4, #0x22]
	mov r1, #0xb
	lsl r3, r3, #0x19
	lsr r3, r3, #0x19
	bl ov103_021EDC68
	mov r0, #3
	str r0, [r4, #0x18]
	mov r0, #6
	pop {r4, pc}
	thumb_func_end ov103_021ED9AC

