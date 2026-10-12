	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02238750
	.extern ov72_02238688
	.extern ov72_0223B364
	.extern ov72_0223B366

	.text

	.text
	thumb_func_start ov72_02238750
ov72_02238750: ; 0x02238750
	push {r3, r4, r5, lr}
	add r3, r2, #0
	mov r5, #0xc
	lsl r4, r1, #2
	mul r3, r5
	ldr r2, _02238770 ; =ov72_0223B366
	ldr r1, _02238774 ; =ov72_0223B364
	add r2, r2, r3
	add r1, r1, r3
	ldrh r2, [r4, r2]
	add r5, #0xf4
	ldrh r1, [r4, r1]
	add r2, r2, r5
	bl ov72_02238688
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02238770: .word ov72_0223B366
_02238774: .word ov72_0223B364
	thumb_func_end ov72_02238750

