	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223A8A0
	.public ov72_0223A8DC

	.text

	thumb_func_start ov72_0223A8DC
ov72_0223A8DC: ; 0x0223A8DC
	push {r4, lr}
	add r4, r0, #0
	bl ov72_0223A8A0
	cmp r0, #0
	beq _0223A8EC
	mov r0, #0xb
	pop {r4, pc}
_0223A8EC:
	ldrb r0, [r4, #3]
	pop {r4, pc}
	thumb_func_end ov72_0223A8DC

