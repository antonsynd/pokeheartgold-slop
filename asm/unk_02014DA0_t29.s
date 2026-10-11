	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02015550

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02015550
sub_02015550: ; 0x02015550
	push {r4, r5, r6, r7}
	ldr r0, [r0, #0x20]
	add r4, r1, #0
	ldrh r2, [r0, #0x1c]
	cmp r2, #0
	bne _02015562
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_02015562:
	mov r1, #0
	cmp r2, #0
	ble _020155EC
	ldr r3, [r0, #0x18]
	ldr r7, _020155F4 ; =spl_calc_random
	ldr r0, _020155F8 ; =spl_calc_gravity
_0201556E:
	cmp r3, #0
	beq _020155E4
	cmp r4, #5
	bhi _020155DE
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_02015582: ; jump table
	.short _0201558E - _02015582 - 2 ; case 0
	.short _0201559A - _02015582 - 2 ; case 1
	.short _020155A6 - _02015582 - 2 ; case 2
	.short _020155B4 - _02015582 - 2 ; case 3
	.short _020155C2 - _02015582 - 2 ; case 4
	.short _020155D0 - _02015582 - 2 ; case 5
_0201558E:
	ldr r5, [r3]
	cmp r5, r0
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_0201559A:
	ldr r5, [r3]
	cmp r5, r7
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155A6:
	ldr r6, [r3]
	ldr r5, _020155FC ; =spl_calc_magnet
	cmp r6, r5
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155B4:
	ldr r6, [r3]
	ldr r5, _02015600 ; =spl_calc_spin
	cmp r6, r5
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155C2:
	ldr r6, [r3]
	ldr r5, _02015604 ; =spl_calc_scfield
	cmp r6, r5
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155D0:
	ldr r6, [r3]
	ldr r5, _02015608 ; =spl_calc_convergence
	cmp r6, r5
	bne _020155E4
	ldr r0, [r3, #4]
	pop {r4, r5, r6, r7}
	bx lr
_020155DE:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_020155E4:
	add r1, r1, #1
	add r3, #8
	cmp r1, r2
	blt _0201556E
_020155EC:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	nop
_020155F4: .word spl_calc_random
_020155F8: .word spl_calc_gravity
_020155FC: .word spl_calc_magnet
_02015600: .word spl_calc_spin
_02015604: .word spl_calc_scfield
_02015608: .word spl_calc_convergence
	thumb_func_end sub_02015550

