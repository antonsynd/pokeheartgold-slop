	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_022450A8
	.public ov83_02245104
	.extern ov83_0224517C
	.extern ov83_02245210
	.extern ov83_02245248

    .text

	.text
	thumb_func_start ov83_022450A8
ov83_022450A8: ; 0x022450A8
	push {r3, r4, r5, lr}
	add r3, r1, #0
	sub r3, #0x14
	add r5, r0, #0
	cmp r3, #3
	bhi _022450E6
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_022450C0: ; jump table
	.short _022450C8 - _022450C0 - 2 ; case 0
	.short _022450D0 - _022450C0 - 2 ; case 1
	.short _022450D8 - _022450C0 - 2 ; case 2
	.short _022450E0 - _022450C0 - 2 ; case 3
_022450C8:
	mov r4, #0x35
	bl ov83_02245104
	b _022450E6
_022450D0:
	mov r4, #0x36
	bl ov83_0224517C
	b _022450E6
_022450D8:
	mov r4, #0x37
	bl ov83_02245210
	b _022450E6
_022450E0:
	mov r4, #0x38
	bl ov83_02245248
_022450E6:
	ldr r1, _02245100 ; =0x00000564
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x28
	bl sub_02037030
	cmp r0, #1
	bne _022450FA
	mov r0, #1
	pop {r3, r4, r5, pc}
_022450FA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02245100: .word 0x00000564
	thumb_func_end ov83_022450A8

	thumb_func_start ov83_02245104
ov83_02245104: ; 0x02245104
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r4, r1, #0
	bl Save_PlayerData_GetProfile
	ldr r1, _02245144 ; =0x00000564
	strh r4, [r6, r1]
	bl PlayerProfile_GetTrainerGender
	ldr r1, _02245148 ; =0x00000566
	mov r4, #0
	strh r0, [r6, r1]
	add r5, r6, #4
	sub r7, r1, #2
_02245126:
	mov r0, #0xaf
	lsl r0, r0, #2
	lsl r2, r4, #0x18
	ldrb r1, [r6, #9]
	ldr r0, [r6, r0]
	lsr r2, r2, #0x18
	bl ov83_0224777C
	strh r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _02245126
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245144: .word 0x00000564
_02245148: .word 0x00000566
	thumb_func_end ov83_02245104

