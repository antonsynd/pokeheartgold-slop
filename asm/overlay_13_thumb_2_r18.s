	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022228CC
	.extern ov13_02222A1C
	.extern ov13_022459B4
	.extern ov13_022459BC

	.text

	.text
	thumb_func_start ov13_022228CC
ov13_022228CC: ; 0x022228CC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl ov13_02222A1C
	ldr r1, _02222918 ; =ov13_022459B4
	str r0, [r1, #0x18]
	add r0, r5, #0
	bl ov13_02222A1C
	ldr r1, _02222918 ; =ov13_022459B4
	str r0, [r1, #0x1c]
	add r0, r4, #0
	bl ov13_02222A1C
	ldr r1, _02222918 ; =ov13_022459B4
	str r0, [r1, #0x20]
	ldr r0, _0222291C ; =ov13_022459BC
	bl SOC_Startup
	cmp r0, #0
	bge _022228FE
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_022228FE:
	ldr r5, _02222920 ; =_021D4670
	ldr r0, [r5]
	cmp r0, #0
	bne _02222914
	mov r4, #0x64
_02222908:
	add r0, r4, #0
	bl OS_Sleep
	ldr r0, [r5]
	cmp r0, #0
	beq _02222908
_02222914:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02222918: .word ov13_022459B4
_0222291C: .word ov13_022459BC
_02222920: .word _021D4670
	thumb_func_end ov13_022228CC

