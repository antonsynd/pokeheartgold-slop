	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_0224517C

    .text

	.text
	thumb_func_start ov83_0224517C
ov83_0224517C: ; 0x0224517C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _022451B0 ; =0x00000564
	add r4, r2, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _0224519A
	ldrb r0, [r5, #0x11]
	cmp r0, #0xff
	bne _0224519A
	strb r4, [r5, #0x11]
_0224519A:
	ldrb r1, [r5, #0x11]
	ldr r0, _022451B4 ; =0x00000568
	strh r1, [r5, r0]
	ldrb r2, [r5, #0x12]
	add r1, r0, #4
	add r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_022451B0: .word 0x00000564
_022451B4: .word 0x00000568
	thumb_func_end ov83_0224517C

