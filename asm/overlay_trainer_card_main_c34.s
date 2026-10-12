#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E76EC
	.extern ov51_021E7D44

	.text

	.text
	thumb_func_start ov51_021E76EC
ov51_021E76EC: ; 0x021E76EC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0xc4
	cmp r1, #0
	bne _021E7706
	ldr r0, _021E778C ; =0x0000343A
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E7706
	mov r1, #1
_021E7706:
	cmp r1, #0
	beq _021E7712
	cmp r1, #1
	beq _021E7756
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021E7712:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	ldr r1, _021E7790 ; =0x000033E0
	mov r0, #4
	ldr r1, [r5, r1]
	mov r2, #0
	bl FontID_String_GetWidth
	mov r1, #0x60
	sub r3, r1, r0
	mov r1, #4
	str r1, [sp]
	mov r2, #0
	ldr r0, _021E7794 ; =0x00050400
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _021E7790 ; =0x000033E0
	add r0, r4, #0
	ldr r2, [r5, r2]
	lsr r3, r3, #1
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _021E7798 ; =0x0000311C
	mov r1, #1
	add r0, r5, r0
	mov r2, #2
	add r3, r1, #0
	bl ov51_021E7D44
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021E7756:
	add r0, r4, #0
	mov r1, #0
	bl FillWindowPixelBuffer
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E7794 ; =0x00050400
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _021E779C ; =0x000033DC
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, #0
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	ldr r0, _021E7798 ; =0x0000311C
	mov r1, #1
	add r0, r5, r0
	mov r2, #4
	add r3, r1, #0
	bl ov51_021E7D44
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021E778C: .word 0x0000343A
_021E7790: .word 0x000033E0
_021E7794: .word 0x00050400
_021E7798: .word 0x0000311C
_021E779C: .word 0x000033DC
	thumb_func_end ov51_021E76EC

