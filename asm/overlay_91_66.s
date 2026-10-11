	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_022601C8
	.public ov91_022601F4
	.public ov91_02260218

	.text

	thumb_func_start ov91_022601C8
ov91_022601C8: ; 0x022601C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
_022601D0:
	add r1, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	add r1, #0xd8
	add r2, #0xdc
	add r3, #0xe0
	ldr r1, [r1]
	ldr r2, [r2]
	ldr r3, [r3]
	add r0, r5, #0
	bl sub_020182A8
	add r6, r6, #1
	add r5, #0x78
	cmp r6, #3
	blt _022601D0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov91_022601C8

	thumb_func_start ov91_022601F4
ov91_022601F4: ; 0x022601F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r1, #2]
	mov r4, #0
	mov r7, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
_02260202:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_020182E0
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _02260202
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov91_022601F4

	thumb_func_start ov91_02260218
ov91_02260218: ; 0x02260218
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_02260220:
	add r0, r6, #0
	add r0, #0xd4
	ldr r1, [r0]
	add r0, r5, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020182C4
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _02260220
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov91_02260218

