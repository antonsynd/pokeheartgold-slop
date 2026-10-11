	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EA228
	.public ov102_021EA238
	.public ov102_021EA248
	.extern ov102_021EAB10
	.extern ov102_021EADF0
	.extern ov102_021EAFEC

	.text

	.text
	thumb_func_start ov102_021EA228
ov102_021EA228: ; 0x021EA228
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r3, _021EA234 ; =ov102_021EAFEC
	ldr r0, [r0, r1]
	bx r3
	nop
_021EA234: .word ov102_021EAFEC
	thumb_func_end ov102_021EA228

	thumb_func_start ov102_021EA238
ov102_021EA238: ; 0x021EA238
	mov r1, #0x1e
	lsl r1, r1, #4
	ldr r3, _021EA244 ; =ov102_021EADF0
	ldr r0, [r0, r1]
	bx r3
	nop
_021EA244: .word ov102_021EADF0
	thumb_func_end ov102_021EA238

	thumb_func_start ov102_021EA248
ov102_021EA248: ; 0x021EA248
	mov r3, #0x1e
	lsl r3, r3, #4
	ldr r0, [r0, r3]
	ldr r3, _021EA254 ; =ov102_021EAB10
	bx r3
	nop
_021EA254: .word ov102_021EAB10
	thumb_func_end ov102_021EA248

