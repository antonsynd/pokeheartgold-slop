	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02232630
	.extern ov07_0223251C
	.extern ov07_02237474

	.text

	.text
	thumb_func_start ov07_02232630
ov07_02232630: ; 0x02232630
	push {r3, lr}
	bl ov07_0223251C
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02232640 ; =ov07_02237474
	ldr r0, [r0, r1]
	pop {r3, pc}
	.balign 4, 0
_02232640: .word ov07_02237474
	thumb_func_end ov07_02232630

