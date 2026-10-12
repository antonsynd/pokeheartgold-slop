	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241D38
	.public ov81_02241D94
	.public ov81_02241DDC
	.public ov81_02241E68
	.public ov81_02241EDC
	.public ov81_02241F50
	.extern ov81_02240F48
	.extern ov81_02241C84
	.extern ov81_02242CBC
	.extern ov81_02242D88
	.extern ov81_02242D94

	.text

	.text
	thumb_func_start ov81_02241D38
ov81_02241D38: ; 0x02241D38
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02241D8C ; =0x00000464
	ldr r0, [r5, r0]
	bl GridInputHandler_GetNextInput
	add r4, r0, #0
	cmp r4, #4
	bhs _02241D88
	cmp r4, #3
	bne _02241D60
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
	add sp, #8
	pop {r3, r4, r5, pc}
_02241D60:
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
	ldr r1, _02241D90 ; =0x0000047C
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r2, sp, #4
	add r3, sp, #0
	bl ov81_02241C84
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov81_02242D94
_02241D88:
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02241D8C: .word 0x00000464
_02241D90: .word 0x0000047C
	thumb_func_end ov81_02241D38

	thumb_func_start ov81_02241D94
ov81_02241D94: ; 0x02241D94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02241DD8 ; =0x00000464
	ldr r0, [r5, r0]
	bl GridInputHandler_GetNextInput
	add r4, r0, #0
	cmp r4, #6
	bhs _02241DD4
	cmp r4, #4
	blo _02241DB8
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
	pop {r3, r4, r5, pc}
_02241DB8:
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov81_02242D88
	mov r1, #0xf2
	lsl r1, r1, #2
	ldrh r1, [r5, r1]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov81_02241EDC
_02241DD4:
	pop {r3, r4, r5, pc}
	nop
_02241DD8: .word 0x00000464
	thumb_func_end ov81_02241D94

	thumb_func_start ov81_02241DDC
ov81_02241DDC: ; 0x02241DDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _02241E64 ; =0x0000047C
	str r1, [sp, #8]
	ldr r1, [r5, r0]
	cmp r1, #3
	bne _02241DF6
	mov r0, #0x30
	str r0, [sp, #0x10]
	mov r0, #0x50
	str r0, [sp, #0xc]
	b _02241DFE
_02241DF6:
	mov r0, #0x48
	str r0, [sp, #0x10]
	mov r0, #0x70
	str r0, [sp, #0xc]
_02241DFE:
	mov r4, #0
	cmp r1, #0
	bls _02241E5E
	str r4, [sp, #0x14]
	str r5, [sp, #0x18]
	add r7, r5, #0
_02241E0A:
	mov r2, #0xf2
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r1, [sp, #0x18]
	lsl r2, r2, #2
	ldrh r1, [r1, r2]
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r2, r0, #0
	mov r0, #0x90
	str r0, [sp]
	ldr r0, [sp, #8]
	lsl r1, r4, #0x18
	str r0, [sp, #4]
	ldr r6, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r6, r3
	bl ov81_02240F48
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #6
	mov r2, #1
	bl Pokepic_SetAttr
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r7, r7, #4
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, _02241E64 ; =0x0000047C
	ldr r0, [r5, r0]
	cmp r4, r0
	blo _02241E0A
_02241E5E:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02241E64: .word 0x0000047C
	thumb_func_end ov81_02241DDC

	thumb_func_start ov81_02241E68
ov81_02241E68: ; 0x02241E68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r7, r2, #0
	add r6, r3, #0
	bl Pokepic_Delete
	ldr r0, _02241ED8 ; =0x0000047C
	ldr r1, [r5, r0]
	cmp r1, #3
	bne _02241EB0
	sub r0, #0xbc
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl Party_GetMonByIndex
	mov r3, #0x50
	add r2, r0, #0
	mov r0, #0x90
	str r0, [sp]
	lsl r1, r4, #0x18
	mul r3, r4
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, #0x30
	str r6, [sp, #4]
	bl ov81_02240F48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02241EB0:
	sub r0, #0xbc
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl Party_GetMonByIndex
	mov r3, #0x70
	add r2, r0, #0
	mov r0, #0x90
	str r0, [sp]
	lsl r1, r4, #0x18
	mul r3, r4
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, #0x48
	str r6, [sp, #4]
	bl ov81_02240F48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241ED8: .word 0x0000047C
	thumb_func_end ov81_02241E68

	thumb_func_start ov81_02241EDC
ov81_02241EDC: ; 0x02241EDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r7, r2, #0
	add r6, r3, #0
	bl Pokepic_Delete
	ldr r0, _02241F4C ; =0x0000047C
	ldr r1, [r5, r0]
	cmp r1, #3
	bne _02241F24
	sub r0, #0xb8
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl Party_GetMonByIndex
	mov r3, #0x50
	add r2, r0, #0
	mov r0, #0x90
	str r0, [sp]
	lsl r1, r4, #0x18
	mul r3, r4
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, #0x30
	str r6, [sp, #4]
	bl ov81_02240F48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02241F24:
	sub r0, #0xb8
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl Party_GetMonByIndex
	mov r3, #0x70
	add r2, r0, #0
	mov r0, #0x90
	str r0, [sp]
	lsl r1, r4, #0x18
	mul r3, r4
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, #0x48
	str r6, [sp, #4]
	bl ov81_02240F48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241F4C: .word 0x0000047C
	thumb_func_end ov81_02241EDC

	thumb_func_start ov81_02241F50
ov81_02241F50: ; 0x02241F50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	ldr r0, _02241FBC ; =0x0000047C
	ldr r1, [r7, r0]
	cmp r1, #3
	bne _02241F68
	mov r0, #0x30
	str r0, [sp, #0x10]
	mov r0, #0x50
	str r0, [sp, #0xc]
	b _02241F70
_02241F68:
	mov r0, #0x48
	str r0, [sp, #0x10]
	mov r0, #0x70
	str r0, [sp, #0xc]
_02241F70:
	mov r4, #0
	cmp r1, #0
	bls _02241FB8
	add r6, r4, #0
	add r5, r7, #0
_02241F7A:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r0, r0, r6
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	mov r0, #0x71
	lsl r0, r0, #2
	add r0, r7, r0
	mov r2, #3
	add r3, r1, #0
	bl ov81_02242CBC
	mov r1, #0xe7
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov81_02242D88
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r6, r6, r0
	ldr r0, _02241FBC ; =0x0000047C
	add r5, r5, #4
	ldr r0, [r7, r0]
	cmp r4, r0
	blo _02241F7A
_02241FB8:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02241FBC: .word 0x0000047C
	thumb_func_end ov81_02241F50

