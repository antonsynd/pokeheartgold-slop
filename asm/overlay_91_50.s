	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225D67C
	.public ov91_0225DB0C
	.public ov91_0225DBE0
	.public ov91_0225F4F8
	.public ov91_0225F66C
	.public ov91_0225FA60
	.public ov91_0225FB48
	.public ov91_0225FC84
	.public ov91_0225FD0C
	.public ov91_0225FEFC
	.public ov91_022600FC
	.public ov91_0226066C
	.public ov91_02260CA8
	.public ov91_02260D80
	.public ov91_02261070
	.public ov91_02261790

	.text

	thumb_func_start ov91_0225F66C
ov91_0225F66C: ; 0x0225F66C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0225F71C ; =0x0000862C
	ldr r1, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_02261790
	ldr r0, _0225F724 ; =0x00001E38
	ldr r1, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_0225D67C
	ldr r0, _0225F720 ; =0x00001AB4
	ldr r1, [r4, #0x10]
	add r0, r4, r0
	bl ov91_0225DBE0
	ldr r0, _0225F728 ; =0x00001F38
	ldr r1, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_0225DB0C
	ldr r0, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	bl ov91_0225FEFC
	ldr r0, _0225F720 ; =0x00001AB4
	ldr r1, _0225F72C ; =0x0000854C
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_02260D80
	ldr r0, _0225F730 ; =0x00008544
	add r0, r4, r0
	bl ov91_02260CA8
	ldr r0, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	bl ov91_0226066C
	ldr r0, _0225F734 ; =0x00001F74
	ldr r1, _0225F738 ; =0x000086CC
	add r0, r4, r0
	add r1, r4, r1
	bl ov91_022600FC
	ldr r0, _0225F73C ; =0x00001C54
	ldr r1, _0225F720 ; =0x00001AB4
	ldr r2, _0225F738 ; =0x000086CC
	add r0, r4, r0
	add r1, r4, r1
	add r2, r4, r2
	bl ov91_02261070
	ldr r0, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	bl ov91_0225FC84
	ldr r0, _0225F740 ; =0x000021A4
	ldr r0, [r4, r0]
	bl ov90_02258C38
	ldr r0, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	bl ov91_0225FA60
	ldr r0, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	bl ov91_0225FB48
	ldr r0, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	bl ov91_0225FD0C
	ldr r0, _0225F720 ; =0x00001AB4
	add r0, r4, r0
	bl ov91_0225F4F8
	ldr r0, _0225F744 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0225F748 ; =0x04001050
	strh r1, [r0]
	pop {r4, pc}
	nop
_0225F71C: .word 0x0000862C
_0225F720: .word 0x00001AB4
_0225F724: .word 0x00001E38
_0225F728: .word 0x00001F38
_0225F72C: .word 0x0000854C
_0225F730: .word 0x00008544
_0225F734: .word 0x00001F74
_0225F738: .word 0x000086CC
_0225F73C: .word 0x00001C54
_0225F740: .word 0x000021A4
_0225F744: .word 0x04000050
_0225F748: .word 0x04001050
	thumb_func_end ov91_0225F66C

