	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225EA58

	.text

	.text
	thumb_func_start ov28_0225EA58
ov28_0225EA58: ; 0x0225EA58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl FieldSystem_TaskIsRunning
	cmp r0, #1
	bne _0225EA76
	ldr r0, [r4, #0x18]
	add r0, #0xd2
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _0225EA76
	mov r0, #1
	pop {r4, pc}
_0225EA76:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov28_0225EA58

