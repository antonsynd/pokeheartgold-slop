	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_0223A314

	.text

	thumb_func_start ov72_0223A314
ov72_0223A314: ; 0x0223A314
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223A344 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0223A330
	mov r0, #2
	tst r0, r1
	bne _0223A330
	ldr r0, _0223A348 ; =gSystem + 0x40
	ldrh r0, [r0, #0x24]
	cmp r0, #0
	beq _0223A33E
_0223A330:
	ldr r0, _0223A34C ; =0x00000E58
	mov r1, #0
	add r0, r4, r0
	bl sub_0200E5D4
	mov r0, #0
	str r0, [r4, #0x1c]
_0223A33E:
	mov r0, #3
	pop {r4, pc}
	nop
_0223A344: .word gSystem
_0223A348: .word gSystem + 0x40
_0223A34C: .word 0x00000E58
	thumb_func_end ov72_0223A314

