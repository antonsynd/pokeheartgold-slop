#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222E804
	.public ov45_0222E810
	.extern _022577C0
	.extern ov45_0222F74C
	.extern ov45_0222FC44
	.extern ov45_0222FCE0
	.extern ov45_0222FD50
	.extern ov45_0222FDD4
	.extern ov45_0222FDD8
	.extern ov45_0222FE84
	.extern ov45_0222FEC4
	.extern ov45_0222FF40
	.extern ov45_0222FF7C
	.extern ov45_02230008
	.extern ov45_02230050
	.extern ov45_02230064
	.extern ov45_02230090
	.extern ov45_022300B0
	.extern ov45_022300DC
	.extern ov45_02230108
	.extern ov45_02230130
	.extern ov45_02254F04
	.extern ov45_02254F14

	.text

	.text
	thumb_func_start ov45_0222E804
ov45_0222E804: ; 0x0222E804
	ldr r3, _0222E80C ; =ov45_0222E810
	mov r1, #0
	bx r3
	nop
_0222E80C: .word ov45_0222E810
	thumb_func_end ov45_0222E804

	thumb_func_start ov45_0222E810
ov45_0222E810: ; 0x0222E810
	push {r3, r4, r5, lr}
	sub sp, #0x50
	add r5, r0, #0
	ldr r0, _0222E8A0 ; =_022577C0
	add r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _0222E824
	bl GF_AssertFail
_0222E824:
	ldr r0, _0222E8A4 ; =ov45_0222FC44
	str r0, [sp, #0xc]
	ldr r0, _0222E8A8 ; =ov45_0222FCE0
	str r0, [sp, #0x10]
	ldr r0, _0222E8AC ; =ov45_0222FD50
	str r0, [sp, #0x14]
	ldr r0, _0222E8B0 ; =ov45_0222FDD4
	str r0, [sp, #0x18]
	ldr r0, _0222E8B4 ; =ov45_0222FDD8
	str r0, [sp, #0x1c]
	ldr r0, _0222E8B8 ; =ov45_0222FE84
	str r0, [sp, #0x20]
	ldr r0, _0222E8BC ; =ov45_0222FEC4
	str r0, [sp, #0x24]
	ldr r0, _0222E8C0 ; =ov45_0222FF40
	str r0, [sp, #0x28]
	ldr r0, _0222E8C4 ; =ov45_0222FF7C
	str r0, [sp, #0x2c]
	ldr r0, _0222E8C8 ; =ov45_02230008
	str r0, [sp, #0x30]
	ldr r0, _0222E8CC ; =ov45_02230050
	str r0, [sp, #0x34]
	ldr r0, _0222E8D0 ; =ov45_02230064
	str r0, [sp, #0x38]
	ldr r0, _0222E8D4 ; =ov45_02230090
	str r0, [sp, #0x3c]
	ldr r0, _0222E8D8 ; =ov45_022300B0
	str r0, [sp, #0x40]
	ldr r0, _0222E8DC ; =ov45_022300DC
	str r0, [sp, #0x44]
	ldr r0, _0222E8E0 ; =ov45_02230108
	str r0, [sp, #0x48]
	ldr r0, _0222E8E4 ; =ov45_02230130
	str r0, [sp, #0x4c]
	ldr r0, _0222E8A0 ; =_022577C0
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_0202C08C
	str r0, [sp]
	ldr r0, _0222E8A0 ; =_022577C0
	str r5, [sp, #4]
	ldr r0, [r0]
	ldr r1, _0222E8E8 ; =ov45_02254F14
	ldr r0, [r0, #0x28]
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _0222E8EC ; =ov45_02254F04
	add r3, sp, #0xc
	bl ov45_022310C0
	ldr r2, _0222E8A0 ; =_022577C0
	ldr r1, _0222E8F0 ; =0x00000984
	ldr r3, [r2]
	str r0, [r3, r1]
	ldr r0, [r2]
	ldr r0, [r0, r1]
	bl ov45_0222F74C
	add sp, #0x50
	pop {r3, r4, r5, pc}
	nop
_0222E8A0: .word _022577C0
_0222E8A4: .word ov45_0222FC44
_0222E8A8: .word ov45_0222FCE0
_0222E8AC: .word ov45_0222FD50
_0222E8B0: .word ov45_0222FDD4
_0222E8B4: .word ov45_0222FDD8
_0222E8B8: .word ov45_0222FE84
_0222E8BC: .word ov45_0222FEC4
_0222E8C0: .word ov45_0222FF40
_0222E8C4: .word ov45_0222FF7C
_0222E8C8: .word ov45_02230008
_0222E8CC: .word ov45_02230050
_0222E8D0: .word ov45_02230064
_0222E8D4: .word ov45_02230090
_0222E8D8: .word ov45_022300B0
_0222E8DC: .word ov45_022300DC
_0222E8E0: .word ov45_02230108
_0222E8E4: .word ov45_02230130
_0222E8E8: .word ov45_02254F14
_0222E8EC: .word ov45_02254F04
_0222E8F0: .word 0x00000984
	thumb_func_end ov45_0222E810

