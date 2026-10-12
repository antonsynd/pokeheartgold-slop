	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222B278
	.extern ov43_0222B3A4
	.extern ov43_0222B3C4

	.text

	.text
	thumb_func_start ov43_0222B278
ov43_0222B278: ; 0x0222B278
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0222B314 ; =gSystem
	add r4, r2, #0
	ldr r3, [r0, #0x48]
	ldr r0, _0222B318 ; =0x00000CF3
	mov r2, #0
	tst r0, r3
	beq _0222B28C
	str r2, [r1]
_0222B28C:
	ldr r6, _0222B314 ; =gSystem
	mov r0, #1
	ldr r1, [r6, #0x48]
	add r3, r1, #0
	tst r3, r0
	beq _0222B2AA
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222B3C4
	ldr r0, _0222B31C ; =0x000005DD
	bl PlaySE
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222B2AA:
	mov r3, #2
	tst r1, r3
	beq _0222B2BE
	ldr r0, _0222B31C ; =0x000005DD
	bl PlaySE
	mov r0, #3
	str r0, [r5]
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222B2BE:
	ldr r1, [r6, #0x4c]
	mov r3, #0x40
	tst r3, r1
	beq _0222B2DC
	ldr r1, [r5]
	cmp r1, #0
	beq _0222B2D4
	sub r1, r1, #1
	str r1, [r5]
	add r2, r0, #0
	b _0222B2F6
_0222B2D4:
	mov r1, #3
	str r1, [r5]
	add r2, r0, #0
	b _0222B2F6
_0222B2DC:
	mov r3, #0x80
	tst r1, r3
	beq _0222B2F6
	ldr r1, [r5]
	cmp r1, #3
	bhs _0222B2F0
	add r1, r1, #1
	str r1, [r5]
	add r2, r0, #0
	b _0222B2F6
_0222B2F0:
	mov r1, #0
	str r1, [r5]
	add r2, r0, #0
_0222B2F6:
	cmp r2, #1
	bne _0222B310
	ldr r0, _0222B320 ; =0x000005E5
	bl PlaySE
	add r0, r5, #0
	add r1, r4, #0
	bl ov43_0222B3A4
	ldr r0, [r4]
	mov r1, #2
	bl ScheduleBgTilemapBufferTransfer
_0222B310:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0222B314: .word gSystem
_0222B318: .word 0x00000CF3
_0222B31C: .word 0x000005DD
_0222B320: .word 0x000005E5
	thumb_func_end ov43_0222B278

