	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222E344

	.text

	thumb_func_start ov80_0222E344
ov80_0222E344: ; 0x0222E344
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r3, #0
	add r6, r1, #0
	add r4, r2, #0
	bl TextFlags_SetCanABSpeedUpPrint
	ldr r0, [sp, #0x20]
	bl TextFlags_SetAutoScrollParam
	cmp r4, #0
	beq _0222E362
	cmp r4, #0xff
	bne _0222E36A
_0222E362:
	mov r0, #0
	bl TextFlags_SetCanTouchSpeedUpPrint
	b _0222E370
_0222E36A:
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
_0222E370:
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x48]
	add r0, #0x64
	add r1, r6, #0
	bl AddTextPrinterParameterized
	add r5, #0x50
	strb r0, [r5]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov80_0222E344

