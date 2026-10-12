	.include "asm/macros.inc"
	.include "overlay_115.inc"
	.include "global.inc"
	.public ov115_022602E4
	.public ov115_02260308
	.public ov115_0226032C
	.extern ov115_0225F978
	.extern ov115_02260390
	.extern ov115_02260398
	.extern ov115_022603A0

	.text

	.text
	thumb_func_start ov115_022602E4
ov115_022602E4: ; 0x022602E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _02260304 ; =ov115_02260390
	add r0, r4, #0
	mov r1, #4
	bl ov115_0225F978
	cmp r0, #1
	bne _02260300
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EFCDC
_02260300:
	pop {r3, r4, r5, pc}
	nop
_02260304: .word ov115_02260390
	thumb_func_end ov115_022602E4

	thumb_func_start ov115_02260308
ov115_02260308: ; 0x02260308
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _02260328 ; =ov115_02260398
	add r0, r4, #0
	mov r1, #4
	bl ov115_0225F978
	cmp r0, #1
	bne _02260324
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EFCDC
_02260324:
	pop {r3, r4, r5, pc}
	nop
_02260328: .word ov115_02260398
	thumb_func_end ov115_02260308

	thumb_func_start ov115_0226032C
ov115_0226032C: ; 0x0226032C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r2, _0226034C ; =ov115_022603A0
	add r0, r4, #0
	mov r1, #4
	bl ov115_0225F978
	cmp r0, #1
	bne _02260348
	add r0, r4, #0
	add r1, r5, #0
	bl ov01_021EFCDC
_02260348:
	pop {r3, r4, r5, pc}
	nop
_0226034C: .word ov115_022603A0
	thumb_func_end ov115_0226032C

