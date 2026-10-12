	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222A358

	.text

	.text
	thumb_func_start ov43_0222A358
ov43_0222A358: ; 0x0222A358
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [r0, #4]
	add r6, r1, #0
	str r2, [sp, #4]
	bl sub_0202C6F4
	add r5, r0, #0
	bl sub_0202C08C
	bl DWC_CreateFriendKey
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	mov r4, #0
_0222A378:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C2DC
	cmp r0, #0
	bne _0222A404
	add r0, r6, #0
	add r1, sp, #0x1c
	bl String_atoi
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	add r6, r1, #0
	cmp r0, #1
	bne _0222A3FE
	ldr r0, [sp, #0xc]
	eor r1, r0
	ldr r0, [sp, #0x10]
	eor r0, r7
	orr r0, r1
	beq _0222A3FE
	add r0, r5, #0
	bl sub_0202C08C
	add r1, r7, #0
	add r2, r6, #0
	bl DWC_CheckFriendKey
	cmp r0, #0
	bne _0222A3BA
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222A3BA:
	ldr r0, [sp]
	add r1, r7, #0
	ldr r0, [r0, #4]
	add r2, r6, #0
	add r3, sp, #0x18
	bl sub_0203A128
	cmp r0, #0
	bne _0222A3D2
	add sp, #0x20
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0222A3D2:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C23C
	add r1, r7, #0
	add r2, r6, #0
	bl DWC_CreateFriendKeyToken
	ldr r2, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C270
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	mov r3, #2
	bl sub_0202C190
	add sp, #0x20
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222A3FE:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222A404:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0222A378
	bl GF_AssertFail
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov43_0222A358

