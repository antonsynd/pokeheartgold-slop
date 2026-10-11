	.include "asm/macros.inc"
	.include "overlay_83_02243D7C.inc"
	.include "global.inc"
	.public ov83_022450A8
	.public ov83_02245104
	.public ov83_0224514C
	.public ov83_0224517C
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

	thumb_func_start ov83_0224514C
ov83_0224514C: ; 0x0224514C
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x17]
	add r6, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0x17]
	bl sub_0203769C
	cmp r5, r0
	beq _02245176
	ldr r0, _02245178 ; =0x000005B7
	mov r3, #0
	add r5, r6, #4
_02245168:
	ldrh r2, [r5]
	add r1, r4, r3
	add r3, r3, #1
	add r5, r5, #2
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02245168
_02245176:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02245178: .word 0x000005B7
	thumb_func_end ov83_0224514C

	thumb_func_start ov83_0224517C
ov83_0224517C: ; 0x0224517C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _022451B0 ; =0x00000564
	add r4, r2, #0
	strh r1, [r5, r0]
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _0224519A
	ldrb r0, [r5, #0x11]
	cmp r0, #0xff
	bne _0224519A
	strb r4, [r5, #0x11]
_0224519A:
	ldrb r1, [r5, #0x11]
	ldr r0, _022451B4 ; =0x00000568
	strh r1, [r5, r0]
	ldrb r2, [r5, #0x12]
	add r1, r0, #4
	add r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_022451B0: .word 0x00000564
_022451B4: .word 0x00000568
	thumb_func_end ov83_0224517C

