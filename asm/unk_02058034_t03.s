	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_020580E4
	.public sub_02058124
	.extern sub_02058038
	.extern sub_020582F4
	.extern sub_02058304
	.extern sub_0205832C

	.text
	thumb_func_start sub_020580E4
sub_020580E4: ; 0x020580E4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02037474
	cmp r0, #0
	bne _0205811C
	add r0, r5, #0
	bl FieldSystem_GetSaveData
	mov r1, #0
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xa4
	ldr r3, [r3]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02037D8C
	add r0, r5, #0
	bl sub_02058038
	ldr r0, _02058120 ; =sub_02058304
	mov r1, #0
	bl sub_020582F4
_0205811C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02058120: .word sub_02058304
	thumb_func_end sub_020580E4

	thumb_func_start sub_02058124
sub_02058124: ; 0x02058124
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02037474
	cmp r0, #0
	bne _0205815C
	add r0, r5, #0
	bl FieldSystem_GetSaveData
	mov r1, #0
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xa4
	ldr r3, [r3]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02037DD4
	add r0, r5, #0
	bl sub_02058038
	ldr r0, _02058160 ; =sub_0205832C
	mov r1, #0
	bl sub_020582F4
_0205815C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02058160: .word sub_0205832C
	thumb_func_end sub_02058124

