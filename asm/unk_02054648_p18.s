	.include "macros.inc"
	.include "unk_02054648.inc"
	.include "global.inc"
	.public sub_02054AE4
	.extern sub_02054A9C
	.extern sub_02054DC8

	.text
	thumb_func_start sub_02054AE4
sub_02054AE4: ; 0x02054AE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	str r0, [sp, #8]
_02054AF4:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0x2c]
	add r2, sp, #0xc
	bl ov01_021F630C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02054B5E
	ldr r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x2c]
	bl ov01_021F652C
	add r4, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0x30]
	bl MapMatrix_GetWidth
	add r1, r0, #0
	add r0, r4, #0
	add r2, sp, #0x10
	bl sub_02054DC8
	mov r5, #0
_02054B26:
	ldr r0, [sp, #0xc]
	add r1, r5, #0
	bl MapPropManager_GetMapPropByIndex
	add r1, r7, #0
	add r2, sp, #0x10
	add r4, r0, #0
	bl sub_02054A9C
	cmp r0, #0
	beq _02054B54
	add r0, r4, #0
	bl MapProp_GetBuildModel
	cmp r0, r6
	bne _02054B54
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02054B4E
	str r4, [r0]
_02054B4E:
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02054B54:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x20
	blo _02054B26
_02054B5E:
	ldr r0, [sp, #8]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #4
	blo _02054AF4
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02054AE4

