	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_022481EC
	.public ov71_0224820C
	.extern ov71_022476C4
	.extern ov71_022476EC

	.text

	.text
	thumb_func_start ov71_022481EC
ov71_022481EC: ; 0x022481EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _02248208
	bl SysTask_GetData
	bl Heap_Free
	ldr r0, [r4, #0x7c]
	bl SysTask_Destroy
	mov r0, #0
	str r0, [r4, #0x7c]
_02248208:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov71_022481EC

	thumb_func_start ov71_0224820C
ov71_0224820C: ; 0x0224820C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02248280
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	blt _0224822E
	mov r0, #0x1e
	lsl r0, r0, #6
	sub r0, r1, r0
	str r0, [r4, #0x1c]
	b _02248280
_0224822E:
	mov r0, #0x1e
	lsl r0, r0, #6
	sub r0, r1, r0
	str r0, [r4, #0x1c]
	ldr r1, [r4, #0xc]
	ldr r0, _022482E4 ; =0xFFFFC000
	cmp r1, r0
	bgt _02248280
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x1c]
	mov r0, #0x2c
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	neg r1, r0
	mov r0, #0xfa
	lsl r0, r0, #4
	str r1, [r4, #0x1c]
	cmp r1, r0
	bge _0224825C
	mov r0, #1
	str r0, [r4, #0x24]
_0224825C:
	ldr r0, _022482E8 ; =0x000005E6
	bl PlaySE
	ldr r0, [r4, #0x20]
	add r0, r0, #1
	str r0, [r4, #0x20]
	cmp r0, #1
	beq _02248272
	cmp r0, #3
	beq _02248278
	b _02248280
_02248272:
	mov r0, #0xb0
	strh r0, [r4, #0x2c]
	b _02248280
_02248278:
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	add r0, #0x50
	strh r0, [r4, #0x2c]
_02248280:
	mov r0, #0x14
	mov r2, #0x2c
	ldrsh r3, [r4, r0]
	ldrsh r0, [r4, r2]
	add r1, r4, #0
	add r1, #0x14
	add r0, r3, r0
	strh r0, [r4, #0x14]
	mov r0, #0x18
	ldrsh r3, [r4, r0]
	ldrsh r0, [r4, r2]
	sub r0, r3, r0
	strh r0, [r4, #0x18]
	ldr r0, [r4, #4]
	bl ov71_022476EC
	mov r2, #0x2c
	ldrsh r3, [r4, r2]
	ldr r5, [r4, #8]
	add r1, r4, #0
	lsl r0, r3, #2
	add r0, r3, r0
	add r0, r5, r0
	str r0, [r4, #8]
	ldrsh r2, [r4, r2]
	ldr r3, [r4, #0x10]
	add r1, #8
	lsl r0, r2, #2
	add r0, r2, r0
	add r0, r3, r0
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	bl ov71_022476C4
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _022482E2
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	sub r0, #0xe
	strh r0, [r4, #0x2c]
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	cmp r0, #0x1e
	ble _022482E2
	ldr r0, [r4]
	bl ov71_022481EC
_022482E2:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_022482E4: .word 0xFFFFC000
_022482E8: .word 0x000005E6
	thumb_func_end ov71_0224820C

