	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA874
	.extern ov102_021E8F6C
	.extern ov102_021E8F84

	.text

	.text
	thumb_func_start ov102_021EA874
ov102_021EA874: ; 0x021EA874
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov102_021E8F6C
	cmp r0, #2
	bne _021EA8A4
	ldr r0, [r4, #4]
	bl ov102_021E8F84
	add r0, r0, #1
	add r4, #0xa0
	lsl r5, r0, #5
	add r0, r4, r5
	mov r1, #0
	mov r2, #0x20
	bl GX_LoadBGPltt
	add r0, r4, r5
	mov r1, #0
	mov r2, #0x20
	bl GXS_LoadBGPltt
	pop {r3, r4, r5, pc}
_021EA8A4:
	add r0, r4, #0
	add r0, #0xa0
	mov r1, #0
	mov r2, #0x20
	bl GX_LoadBGPltt
	add r4, #0xa0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl GXS_LoadBGPltt
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021EA874

