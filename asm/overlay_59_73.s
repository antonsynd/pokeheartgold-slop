	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223BE44

	.text

	thumb_func_start ov59_0223BE44
ov59_0223BE44: ; 0x0223BE44
	push {r4, r5, r6, lr}
	add r1, #8
	lsl r5, r1, #2
	mov r1, #0x26
	lsl r1, r1, #4
	add r4, r0, r1
	ldr r0, [r4, r5]
	add r1, r3, #0
	add r6, r2, #0
	bl Sprite_SetDrawFlag
	cmp r6, #0xff
	beq _0223BE6C
	ldr r0, [r4, r5]
	add r1, r6, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, r5]
	bl Sprite_ResetAnimCtrlState
_0223BE6C:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov59_0223BE44

