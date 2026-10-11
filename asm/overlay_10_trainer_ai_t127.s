	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_02220270
	.extern ov10_02220010

	.text

	.text
	thumb_func_start ov10_02220270
ov10_02220270: ; 0x02220270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0xc0
	add r5, r1, #0
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02220358 ; =0x00002DAC
	ldr r1, [r1, r0]
	mov r0, #7
	tst r0, r1
	beq _022202AA
	add r0, r5, #0
	add r1, r4, #0
	bl GetBattlerAbility
	cmp r0, #0x1e
	bne _022202AA
	mov r0, #0xc0
	mul r0, r4
	ldr r1, _0222035C ; =0x00002D8C
	add r2, r5, r0
	ldr r0, [r2, r1]
	add r1, r1, #4
	ldr r1, [r2, r1]
	lsr r1, r1, #1
	cmp r0, r1
	bhs _022202B0
_022202AA:
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022202B0:
	ldr r0, _02220360 ; =0x00003064
	add r7, r5, r0
	lsl r0, r4, #1
	str r0, [sp, #4]
	ldrh r0, [r7, r0]
	cmp r0, #0
	bne _022202D8
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #1
	tst r0, r1
	beq _022202D8
	ldr r0, _02220364 ; =0x000021A4
	mov r3, #6
	add r2, r5, r4
	strb r3, [r2, r0]
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_022202D8:
	ldr r0, [sp, #4]
	ldrh r0, [r7, r0]
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02220368 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02220302
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #1
	tst r0, r1
	beq _02220302
	ldr r0, _02220364 ; =0x000021A4
	mov r3, #6
	add r2, r5, r4
	strb r3, [r2, r0]
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220302:
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #8
	bl ov10_02220010
	cmp r0, #0
	beq _0222031C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222031C:
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #4
	bl ov10_02220010
	cmp r0, #0
	beq _02220336
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02220336:
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #1
	tst r0, r1
	beq _02220350
	ldr r0, _02220364 ; =0x000021A4
	mov r3, #6
	add r2, r5, r4
	strb r3, [r2, r0]
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220350:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220358: .word 0x00002DAC
_0222035C: .word 0x00002D8C
_02220360: .word 0x00003064
_02220364: .word 0x000021A4
_02220368: .word 0x000003E1
	thumb_func_end ov10_02220270

