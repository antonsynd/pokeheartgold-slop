	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242A8C
	.public ov81_02242E50
	.public ov81_02242F10

	.text

	thumb_func_start ov81_02242E50
ov81_02242E50: ; 0x02242E50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x10
	add r6, r2, #0
	bl Heap_Alloc
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_02242E6A:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02242E6A
	mov r1, #0
	strh r1, [r4]
	str r5, [r4, #4]
	str r6, [r4, #8]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r1, #0
	mov r3, #0xa
	bl ov81_02242A8C
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov81_02242F10
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Sprite_SetPaletteOverride
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov81_02242E50

