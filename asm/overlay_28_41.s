	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225E900
	.extern _0225EA7C
	.extern ov28_0225E810
	.extern ov28_0225E8B8

	.text

	.text
	thumb_func_start ov28_0225E900
ov28_0225E900: ; 0x0225E900
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	bl sub_0203DF8C
	cmp r0, #1
	bne _0225E914
	add r0, r4, #0
	bl ov28_0225E810
_0225E914:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, _0225E930 ; =_0225EA7C
	ldr r1, [r4, r1]
	mov r2, #5
	mov r3, #6
	bl ov28_0225E8B8
	cmp r0, #0
	beq _0225E92E
	ldr r0, _0225E934 ; =gSystem
	mov r1, #1
	str r1, [r0, #0x5c]
_0225E92E:
	pop {r4, pc}
	.balign 4, 0
_0225E930: .word _0225EA7C
_0225E934: .word gSystem
	thumb_func_end ov28_0225E900

