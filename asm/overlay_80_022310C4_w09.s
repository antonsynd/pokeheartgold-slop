	.include "asm/macros.inc"
	.include "overlay_80_022310C4.inc"
	.include "global.inc"
	.public ov80_02231888
	.public ov80_022318D0
	.public ov80_02231930
	.public ov80_022319B0

    .text

	.text
	thumb_func_start ov80_02231888
ov80_02231888: ; 0x02231888
	ldrb r3, [r0, #4]
	ldrh r2, [r0, #0xa]
	cmp r3, #1
	bhi _0223189E
	cmp r2, #0x12
	blo _02231898
	mov r1, #0xc
	b _022318AA
_02231898:
	ldr r1, _022318C8 ; =ov80_0223BDFC
	ldrb r1, [r1, r2]
	b _022318AA
_0223189E:
	cmp r2, #0x12
	blo _022318A6
	mov r1, #0x17
	b _022318AA
_022318A6:
	ldr r1, _022318CC ; =ov80_0223BE10
	ldrb r1, [r1, r2]
_022318AA:
	cmp r3, #0
	bne _022318BC
	ldrh r0, [r0, #8]
	cmp r0, #0x32
	beq _022318B8
	cmp r0, #0xaa
	bne _022318C2
_022318B8:
	mov r1, #0x14
	b _022318C2
_022318BC:
	cmp r3, #2
	bne _022318C2
	mov r1, #0xc
_022318C2:
	add r0, r1, #0
	bx lr
	nop
_022318C8: .word ov80_0223BDFC
_022318CC: .word ov80_0223BE10
	thumb_func_end ov80_02231888

	thumb_func_start ov80_022318D0
ov80_022318D0: ; 0x022318D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x20]
	bl Save_Frontier_GetStatic
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0205C0A0
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0205C0A0
	bl sub_0205C268
	add r2, r0, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl FrontierSave_GetStat
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0xf
	and r0, r1
	strh r0, [r6]
	asr r0, r1, #4
	strh r0, [r4]
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	bne _02231928
	add sp, #8
	ldrh r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
_02231928:
	ldrh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_022318D0

	thumb_func_start ov80_02231930
ov80_02231930: ; 0x02231930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r3, sp, #0xc
	str r3, [sp]
	add r3, sp, #0xc
	add r3, #2
	str r0, [sp, #4]
	add r6, r1, #0
	add r5, r2, #0
	bl ov80_022318D0
	add r0, sp, #0xc
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsr r3, r5, #0x1f
	lsl r1, r1, #4
	orr r0, r1
	lsl r2, r5, #0x1f
	lsl r0, r0, #0x18
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bne _0223196C
	mov r2, #0xf0
	b _0223196E
_0223196C:
	mov r2, #0xf
_0223196E:
	and r0, r2
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	lsl r0, r1, #2
	add r1, r7, #0
	lsl r1, r0
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	orr r4, r0
	ldr r0, [sp, #4]
	bl Save_Frontier_GetStatic
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205C0A0
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0205C0A0
	bl sub_0205C268
	add r2, r0, #0
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r3, r4, #0
	bl sub_02031108
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_02231930

	thumb_func_start ov80_022319B0
ov80_022319B0: ; 0x022319B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #2
	beq _022319FE
	ldr r0, _02231A00 ; =0x00000704
	mov r4, #0
	add r6, r5, r0
_022319C0:
	ldrb r2, [r5, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r6, r1
	bl sub_02030BD0
	cmp r0, #0xa
	blo _022319DA
	add r4, r4, #1
	cmp r4, #0x11
	blt _022319C0
_022319DA:
	cmp r4, #0x11
	bne _022319FE
	ldr r0, _02231A00 ; =0x00000704
	mov r4, #0
	add r6, r5, r0
	mov r7, #9
_022319E6:
	ldrb r2, [r5, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r6, r1
	add r2, r7, #0
	bl sub_02030BF4
	add r4, r4, #1
	cmp r4, #0x11
	blt _022319E6
_022319FE:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02231A00: .word 0x00000704
	thumb_func_end ov80_022319B0

