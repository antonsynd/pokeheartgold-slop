	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241238

	.text

	.text
	thumb_func_start ov81_02241238
ov81_02241238: ; 0x02241238
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _022412BC ; =0x00000462
	add r4, r3, #0
	ldrb r1, [r4, r0]
	add r5, r2, #0
	add r1, r1, #1
	strb r1, [r4, r0]
	bl sub_0203769C
	cmp r6, r0
	beq _022412BA
	ldrh r0, [r5, #2]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _022412C0 ; =0x00000458
	strh r1, [r4, r0]
	bl sub_0203769C
	cmp r0, #0
	bne _02241294
	ldrb r0, [r4, #0x13]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02241274
	ldr r0, _022412C0 ; =0x00000458
	mov r1, #0
	strh r1, [r4, r0]
	pop {r4, r5, r6, pc}
_02241274:
	ldr r1, _022412C0 ; =0x00000458
	ldrh r0, [r4, r1]
	cmp r0, #1
	bne _022412BA
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r0, r1, #0
	sub r0, #0x90
	strh r2, [r4, r0]
	ldrh r0, [r5, #6]
	sub r1, #0x8e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r0, [r4, r1]
	pop {r4, r5, r6, pc}
_02241294:
	ldr r1, _022412C0 ; =0x00000458
	ldrh r0, [r4, r1]
	cmp r0, #1
	bne _022412BA
	ldrb r2, [r4, #0x13]
	mov r0, #8
	bic r2, r0
	strb r2, [r4, #0x13]
	ldrh r0, [r5, #4]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r0, r1, #0
	sub r0, #0x90
	strh r2, [r4, r0]
	ldrh r0, [r5, #6]
	sub r1, #0x8e
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	strh r0, [r4, r1]
_022412BA:
	pop {r4, r5, r6, pc}
	.balign 4, 0
_022412BC: .word 0x00000462
_022412C0: .word 0x00000458
	thumb_func_end ov81_02241238

