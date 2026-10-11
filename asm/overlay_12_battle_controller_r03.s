	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_02262240
	.extern BattleController_SendData

	.text

	.text
	thumb_func_start ov12_02262240
ov12_02262240: ; 0x02262240
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp, #4]
	ldr r1, [r5, #0x2c]
	mov r0, #4
	add r7, r2, #0
	add r6, r3, #0
	tst r0, r1
	beq _0226229A
	ldr r0, _022622C4 ; =0x0000240C
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0226229A
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02262284
	mov r4, #0
	bl sub_02037454
	cmp r0, #0
	ble _02262284
_0226226E:
	ldrb r3, [r6]
	ldr r0, [r5, #0x30]
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_0224ECC4
	add r4, r4, #1
	bl sub_02037454
	cmp r4, r0
	blt _0226226E
_02262284:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r1, [sp, #4]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_02074F9C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0226229A:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _022622AC
	ldrb r3, [r6]
	ldr r0, [r5, #0x30]
	mov r1, #0
	add r2, r7, #0
	bl ov12_0224ECC4
_022622AC:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	ldr r1, [sp, #4]
	add r2, r7, #0
	str r0, [sp]
	add r0, r5, #0
	add r3, r6, #0
	bl BattleController_SendData
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022622C4: .word 0x0000240C
	thumb_func_end ov12_02262240

