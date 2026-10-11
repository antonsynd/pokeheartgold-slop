	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222F09C
	.public ov40_0222F6D0
	.public ov40_0222FA88
	.public ov40_0223A034

	.text

	thumb_func_start ov40_0223A034
ov40_0223A034: ; 0x0223A034
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _0223A074 ; =0x0000047C
	add r0, r5, r0
	bl ov40_0222FA88
	ldr r1, _0223A078 ; =0x0000049C
	add r0, r5, r1
	sub r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov40_0222F6D0
	ldr r0, _0223A07C ; =0x00000748
	add r1, r5, #0
	ldr r0, [r4, r0]
	str r0, [sp]
	ldr r0, _0223A078 ; =0x0000049C
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x14]
	add r0, r5, r0
	bl ov40_0222F09C
	add r4, #0xdc
	ldr r0, [r4]
	bl TouchHitboxController_IsTriggered
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223A074: .word 0x0000047C
_0223A078: .word 0x0000049C
_0223A07C: .word 0x00000748
	thumb_func_end ov40_0223A034

