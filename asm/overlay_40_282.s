	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02244B3C

	.text

	thumb_func_start ov40_02244B3C
ov40_02244B3C: ; 0x02244B3C
	push {r3, lr}
	ldr r0, _02244B64 ; =_021D2AF8
	ldr r0, [r0]
	cmp r0, #0
	bne _02244B4A
	bl GF_AssertFail
_02244B4A:
	ldr r0, _02244B64 ; =_021D2AF8
	ldr r1, _02244B68 ; =0x00001D4C
	ldr r0, [r0]
	ldr r2, _02244B6C ; =0x0000FFFF
	ldrh r3, [r0, r1]
	add r0, #0xe8
	sub r1, #0xe8
	eor r2, r3
	lsl r2, r2, #0x10
	add r2, r3, r2
	bl sub_02030250
	pop {r3, pc}
	.balign 4, 0
_02244B64: .word _021D2AF8
_02244B68: .word 0x00001D4C
_02244B6C: .word 0x0000FFFF
	thumb_func_end ov40_02244B3C

