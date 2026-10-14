	.include "macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221F880

	.text

	.text
	thumb_func_start ov07_0221F880
ov07_0221F880: ; 0x0221F880
	push {r4, lr}
	add r4, r0, #0
	bl IsCryFinished
	cmp r0, #0
	bne _0221F8A4
	ldr r0, [r4, #0x18]
	add r1, r0, #4
	str r1, [r4, #0x18]
	ldr r0, [r1]
	add r1, r1, #4
	str r1, [r4, #0x18]
	mov r1, #0
	add r4, #0x8d
	strb r1, [r4]
	bl sub_02006300
	pop {r4, pc}
_0221F8A4:
	mov r0, #1
	add r4, #0x8d
	strb r0, [r4]
	pop {r4, pc}
	thumb_func_end ov07_0221F880

