	.include "asm/macros.inc"
	.include "overlay_41_02249A40.inc"
	.include "global.inc"
	.public ov41_0224A1EC
	.extern ov41_0224A258
	.extern ov41_0224A264
	.extern ov41_0224A270

    .text

	.text
	thumb_func_start ov41_0224A1EC
ov41_0224A1EC: ; 0x0224A1EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #2
	add r5, #0x20
_0224A1F8:
	cmp r4, r7
	beq _0224A204
	add r0, r5, #0
	bl ov41_0224A264
	b _0224A228
_0224A204:
	cmp r6, #0
	bne _0224A216
	add r0, r5, #0
	bl ov41_0224A270
	ldr r0, _0224A234 ; =0x0000067C
	bl PlaySE
	b _0224A228
_0224A216:
	cmp r6, #2
	bne _0224A222
	add r0, r5, #0
	bl ov41_0224A258
	b _0224A228
_0224A222:
	add r0, r5, #0
	bl ov41_0224A270
_0224A228:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	ble _0224A1F8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A234: .word 0x0000067C
	thumb_func_end ov41_0224A1EC

