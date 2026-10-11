	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0226014C
	.public ov91_022601C8
	.public ov91_022601F4
	.public ov91_02260218
	.public ov91_02260254
	.public ov91_02260298
	.public ov91_0226031C
	.public ov91_02260334

	.text

	thumb_func_start ov91_0226014C
ov91_0226014C: ; 0x0226014C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov91_022601C8
	add r0, r5, #0
	add r1, r6, #0
	bl ov91_022601F4
	add r0, r5, #0
	add r1, r6, #0
	bl ov91_02260218
	cmp r4, #0
	beq _02260174
	cmp r4, #1
	beq _0226018E
	cmp r4, #2
	bne _022601A8
_02260174:
	add r0, r5, #0
	mov r1, #1
	bl ov91_02260298
	ldrh r1, [r6, #4]
	add r0, r5, #0
	bl ov91_02260254
	add r0, r5, #0
	mov r1, #1
	bl ov91_02260334
	pop {r4, r5, r6, pc}
_0226018E:
	add r0, r5, #0
	mov r1, #3
	bl ov91_02260298
	add r0, r5, #0
	mov r1, #0
	bl ov91_02260334
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl ov91_0226031C
_022601A8:
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov91_0226014C

