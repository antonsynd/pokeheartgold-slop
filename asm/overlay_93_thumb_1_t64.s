	.include "asm/macros.inc"
	.include "overlay_93_thumb_1.inc"
	.include "global.inc"
	.public ov93_0225EAE0
	.extern ov93_0225D700

	.text

	.text
	thumb_func_start ov93_0225EAE0
ov93_0225EAE0: ; 0x0225EAE0
	push {r3, lr}
	cmp r3, #1
	bne _0225EAFE
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	cmp r2, #0x62
	blt _0225EAFE
	mov r1, #0
	bl ov93_0225D700
	ldr r0, _0225EB34 ; =0x00000592
	bl PlaySE
	pop {r3, pc}
_0225EAFE:
	mov r2, #0x91
	lsl r2, r2, #2
	ldr r2, [r1, r2]
	cmp r2, #0x62
	bge _0225EB32
	ldr r2, [r1, #0x20]
	ldr r1, [r1, #0x10]
	cmp r1, r2
	bge _0225EB20
	mov r1, #2
	bl ov93_0225D700
	mov r0, #0x59
	lsl r0, r0, #4
	bl PlaySE
	pop {r3, pc}
_0225EB20:
	cmp r1, r2
	ble _0225EB32
	mov r1, #1
	bl ov93_0225D700
	mov r0, #0x59
	lsl r0, r0, #4
	bl PlaySE
_0225EB32:
	pop {r3, pc}
	.balign 4, 0
_0225EB34: .word 0x00000592
	thumb_func_end ov93_0225EAE0

