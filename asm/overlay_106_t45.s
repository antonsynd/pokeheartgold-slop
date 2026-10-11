#include "constants/mmodel.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "overlay_106.inc"
	.include "global.inc"
	.public ov106_021E68F4
	.public ov106_021E6988
	.extern ov106_021E7044
	.extern ov106_021E7090

	.text

	.text
	thumb_func_start ov106_021E68F4
ov106_021E68F4: ; 0x021E68F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _021E697C ; =0x00000418
	ldr r4, [r5, r0]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	ldr r7, [r4, #0x30]
	str r0, [sp, #8]
	cmp r0, r7
	bne _021E6930
	ldr r6, [r4, #0x2c]
	mov r0, #0xf
	sub r0, r0, r6
	bl abs
	str r0, [sp]
	ldr r0, _021E6980 ; =0x04000050
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	add r3, r6, #0
	bl G2x_SetBlendAlpha_
	ldr r0, _021E6984 ; =0x00000414
	mov r1, #0
	str r1, [r5, r0]
	sub r0, r0, #4
	add sp, #0xc
	ldr r0, [r5, r0]
	pop {r4, r5, r6, r7, pc}
_021E6930:
	ldr r0, [r4, #0x2c]
	ldr r6, [r4, #0x20]
	str r0, [sp, #4]
	sub r0, r6, r0
	bl abs
	lsl r0, r0, #8
	add r1, r7, #0
	bl _s32_div_f
	ldr r1, [sp, #8]
	mul r0, r1
	lsr r1, r0, #8
	ldr r0, [sp, #4]
	cmp r6, r0
	ble _021E6954
	sub r6, r6, r1
	b _021E6956
_021E6954:
	add r6, r1, r6
_021E6956:
	mov r0, #0xf
	sub r0, r0, r6
	bl abs
	str r0, [sp]
	ldr r0, _021E6980 ; =0x04000050
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x24]
	add r3, r6, #0
	bl G2x_SetBlendAlpha_
	ldr r0, _021E6984 ; =0x00000414
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #3
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E697C: .word 0x00000418
_021E6980: .word 0x04000050
_021E6984: .word 0x00000414
	thumb_func_end ov106_021E68F4

	thumb_func_start ov106_021E6988
ov106_021E6988: ; 0x021E6988
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021E69E0 ; =0x00000418
	ldr r7, _021E69E4 ; =ov106_021E7044
	ldr r5, [r6, r0]
	add r4, r5, #0
	add r4, #0x14
_021E6996:
	ldr r1, [r5, #0x14]
	ldr r2, [r1]
	cmp r2, #0x13
	bne _021E69A2
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E69A2:
	lsl r2, r2, #2
	ldr r2, [r7, r2]
	add r0, r6, #0
	blx r2
	cmp r0, #0
	beq _021E69DA
	cmp r0, #1
	bne _021E69C6
	ldr r1, [r5, #0x14]
	ldr r0, [r4]
	ldr r1, [r1]
	lsl r2, r1, #2
	ldr r1, _021E69E8 ; =ov106_021E7090
	ldr r1, [r1, r2]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [r4]
	b _021E6996
_021E69C6:
	cmp r0, #2
	bne _021E6996
	ldr r2, [r5, #0x14]
	ldr r0, [r2]
	lsl r1, r0, #2
	ldr r0, _021E69E8 ; =ov106_021E7090
	ldr r0, [r0, r1]
	lsl r0, r0, #2
	add r0, r2, r0
	str r0, [r5, #0x14]
_021E69DA:
	ldr r0, _021E69EC ; =0x0000040C
	ldr r0, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E69E0: .word 0x00000418
_021E69E4: .word ov106_021E7044
_021E69E8: .word ov106_021E7090
_021E69EC: .word 0x0000040C
	thumb_func_end ov106_021E6988

