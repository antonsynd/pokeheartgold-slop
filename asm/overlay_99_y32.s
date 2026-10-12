	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6FA0
	.public ov99_021E6FD0
	.extern ov99_021E6F70

	.text

	.text
	thumb_func_start ov99_021E6FA0
ov99_021E6FA0: ; 0x021E6FA0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r5, _021E6FC8 ; =0x00000000
	bne _021E6FAC
	bl GF_AssertFail
_021E6FAC:
	ldr r7, _021E6FCC ; =0x000001ED
	mov r4, #0
_021E6FB0:
	ldrb r0, [r6, r4]
	bl MATH_CountPopulation
	add r0, r5, r0
	lsl r0, r0, #0x10
	add r4, r4, #1
	lsr r5, r0, #0x10
	cmp r4, r7
	blt _021E6FB0
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6FC8: .word 0x00000000
_021E6FCC: .word 0x000001ED
	thumb_func_end ov99_021E6FA0

	thumb_func_start ov99_021E6FD0
ov99_021E6FD0: ; 0x021E6FD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	add r5, r1, #0
	mov r1, #0x1c
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl MI_CpuFill8
	ldr r0, [r5, #4]
	ldr r6, [r5]
	str r0, [sp, #8]
	add r0, r6, #0
	bl PokeathlonSave_dummy1
	add r5, r0, #0
	add r0, r6, #0
	bl PokeathlonSave_GetRecordsSolo
	str r0, [sp, #4]
	add r0, r6, #0
	bl PokeathlonSave_GetUnkDC
	str r0, [sp]
	mov r2, #0
	add r3, r4, #0
_021E700C:
	ldrh r1, [r5, #6]
	add r2, r2, #1
	add r5, #0x2c
	strh r1, [r3, #0xc]
	ldrh r0, [r4, #4]
	add r3, r3, #2
	add r0, r0, r1
	strh r0, [r4, #4]
	cmp r2, #5
	blt _021E700C
	ldr r0, [sp, #8]
	str r0, [r4]
	add r0, r6, #0
	bl ov99_021E6F70
	strh r0, [r4, #6]
	ldr r0, [sp]
	bl ov99_021E6FA0
	strh r0, [r4, #0xa]
	ldr r0, [sp]
	bl ov98_0221F024
	strb r0, [r4, #0x16]
	ldr r0, [sp, #4]
	bl ov98_0221F058
	strb r0, [r4, #0x17]
	ldrh r1, [r4, #4]
	ldrh r0, [r4, #6]
	ldrh r2, [r4, #0xa]
	add r0, r1, r0
	add r0, r2, r0
	strh r0, [r4, #8]
	ldr r0, [sp, #8]
	bl PlayerProfile_GetTrainerGender
	strb r0, [r4, #0x18]
	str r4, [r7]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov99_021E6FD0

