	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0223174C
	.extern ov07_0221BFC0
	.extern ov07_0221C410
	.extern ov07_0221C468
	.extern ov07_0221C470
	.extern ov07_0221C4E8
	.extern ov07_0221FB04
	.extern ov07_022315C0
	.extern ov07_02231924
	.extern ov07_02231FE4
	.extern ov07_022324D8

	.text

	.text
	thumb_func_start ov07_0223174C
ov07_0223174C: ; 0x0223174C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x44
	add r6, r0, #0
	bl ov07_022324D8
	add r4, r0, #0
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	bl ov07_02231FE4
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	mov r1, #0
	bl ov07_0221C4E8
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x1c]
	mov r1, #1
	bl ov07_0221C4E8
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl ov07_0221C4E8
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl ov07_0221FB04
	ldr r0, [r4, #0x34]
	mov r1, #2
	bl ManagedSprite_SetPriority
	ldr r0, [r4, #0x38]
	mov r1, #2
	bl ManagedSprite_SetPriority
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _022317B6
	add r0, r6, #0
	bl ov07_0221C468
	b _022317BC
_022317B6:
	add r0, r6, #0
	bl ov07_0221C470
_022317BC:
	add r1, r0, #0
	add r0, r6, #0
	bl ov07_02231924
	add r5, r0, #0
	add r0, r6, #0
	bl ov07_0221BFC0
	cmp r0, #1
	bne _022317F4
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldr r0, [r4, #0x1c]
	mov r1, #2
	bl ov07_0221FB04
	add r5, r0, #0
	ldr r0, [r4, #0x34]
	add r1, r5, #0
	bl ManagedSprite_SetPriority
	ldr r0, [r4, #0x38]
	add r1, r5, #0
	bl ManagedSprite_SetPriority
	b _02231818
_022317F4:
	cmp r5, #1
	bhi _02231802
	ldr r0, [r4, #0x3c]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	b _02231818
_02231802:
	sub r0, r5, #3
	cmp r0, #1
	ldr r0, [r4, #0x3c]
	bhi _02231812
	mov r1, #3
	bl ManagedSprite_SetPriority
	b _02231818
_02231812:
	mov r1, #1
	bl ManagedSprite_SetPriority
_02231818:
	ldr r0, _02231864 ; =0x0400004A
	ldr r1, _02231868 ; =0xFFFFC0FF
	ldrh r2, [r0]
	and r2, r1
	mov r1, #0x16
	lsl r1, r1, #8
	orr r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1b
	orr r2, r1
	mov r1, #0x20
	orr r2, r1
	strh r2, [r0]
	lsl r3, r1, #0x15
	ldr r2, [r3]
	ldr r0, _0223186C ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r1, #0xa
	orr r0, r2
	str r0, [r3]
	ldr r0, [r4, #0x38]
	mov r1, #2
	bl ManagedSprite_SetOamMode
	mov r0, #0
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	ldr r0, [r4, #0x1c]
	ldr r1, _02231870 ; =ov07_022315C0
	add r2, r4, #0
	bl ov07_0221C410
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02231864: .word 0x0400004A
_02231868: .word 0xFFFFC0FF
_0223186C: .word 0xFFFF1FFF
_02231870: .word ov07_022315C0
	thumb_func_end ov07_0223174C

