	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022430A0
	.public ov40_0224320C
	.public ov40_02243224
	.public ov40_022436D4
	.public ov40_02243A28
	.public ov40_02243B48
	.public ov40_02243C54
	.public ov40_02243D64
	.public ov40_02244060
	.public ov40_022440A0
	.public ov40_022441F8

	.text

	thumb_func_start ov40_02243224
ov40_02243224: ; 0x02243224
	push {r4, lr}
	add r4, r0, #0
	bl ov40_022430A0
	add r0, r4, #0
	bl ov40_022436D4
	add r0, r4, #0
	bl ov40_02243A28
	add r0, r4, #0
	bl ov40_02244060
	add r0, r4, #0
	bl ov40_02243C54
	add r0, r4, #0
	mov r1, #0
	bl ov40_022440A0
	add r0, r4, #0
	bl ov40_02243B48
	add r0, r4, #0
	bl ov40_02243D64
	add r0, r4, #0
	bl ov40_022441F8
	add r0, r4, #0
	mov r1, #1
	bl ov40_0224320C
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov40_02243224

