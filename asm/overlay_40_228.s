	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_02240520
	.public ov40_02243538

	.text

	thumb_func_start ov40_02240520
ov40_02240520: ; 0x02240520
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r0, #0x75
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov40_02243538
	cmp r0, #1
	bne _02240540
	add r0, r4, #0
	mov r1, #4
	bl ov40_0222BF80
_02240540:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov40_02240520

