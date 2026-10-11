	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242710
	.public ov81_02243220
	.public ov81_02243398
	.public ov81_02243638
	.public ov81_022436A8
	.public ov81_022436CC
	.public ov81_02243788
	.public ov81_022437C8

	.text

	thumb_func_start ov81_02243398
ov81_02243398: ; 0x02243398
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	bl ov81_02243220
	add r0, r4, #0
	bl ov81_02242710
	cmp r0, #1
	bne _022433CA
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	ldr r0, _022433E8 ; =ov81_022436CC
	ldr r1, _022433EC ; =ov81_02243788
	ldr r2, _022433F0 ; =ov81_02243638
	add r3, r4, #0
	bl GridInputHandler_Create
	add sp, #0xc
	pop {r3, r4, pc}
_022433CA:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	ldr r0, _022433F4 ; =ov81_022436A8
	ldr r1, _022433F8 ; =ov81_022437C8
	ldr r2, _022433F0 ; =ov81_02243638
	add r3, r4, #0
	bl GridInputHandler_Create
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022433E8: .word ov81_022436CC
_022433EC: .word ov81_02243788
_022433F0: .word ov81_02243638
_022433F4: .word ov81_022436A8
_022433F8: .word ov81_022437C8
	thumb_func_end ov81_02243398

