#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8BFC
	.public ov73_021E8C2C
	.public ov73_021E8C8C
	.extern ov73_021E83D4
	.extern ov73_021E83EC
	.extern ov73_021E844C
	.extern ov73_021E9FF8
	.extern ov73_021EA15C

	.text

	.text
	thumb_func_start ov73_021E8BFC
ov73_021E8BFC: ; 0x021E8BFC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E8C24 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E8C28 ; =0x00000BDC
	mov r2, #0x11
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #1
	bl ov73_021E83EC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E8C24: .word 0x00000F0F
_021E8C28: .word 0x00000BDC
	thumb_func_end ov73_021E8BFC

	thumb_func_start ov73_021E8C2C
ov73_021E8C2C: ; 0x021E8C2C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021E8C80 ; =0x000012C8
	ldr r0, [r4, r0]
	bl ov73_021E83D4
	cmp r0, #0
	beq _021E8C78
	cmp r0, #2
	bne _021E8C56
	bl sub_0203946C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov73_021E844C
	mov r0, #0x2e
	str r0, [r4, #0x1c]
	b _021E8C78
_021E8C56:
	ldr r0, _021E8C84 ; =0x00000F0F
	ldr r1, _021E8C88 ; =0x00000BD8
	str r0, [sp]
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x2f
	mov r2, #2
	bl ov73_021E83EC
	add r0, r4, #0
	bl ov73_021EA15C
_021E8C78:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E8C80: .word 0x000012C8
_021E8C84: .word 0x00000F0F
_021E8C88: .word 0x00000BD8
	thumb_func_end ov73_021E8C2C

	thumb_func_start ov73_021E8C8C
ov73_021E8C8C: ; 0x021E8C8C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _021E8CB4 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _021E8CB8 ; =0x00000BD8
	mov r2, #0xc
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov73_021E9FF8
	add r0, r4, #0
	mov r1, #0x30
	mov r2, #0x34
	bl ov73_021E83EC
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_021E8CB4: .word 0x00000F0F
_021E8CB8: .word 0x00000BD8
	thumb_func_end ov73_021E8C8C

