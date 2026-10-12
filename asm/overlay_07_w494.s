	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222CA8C
	.extern ov07_0221BFD0
	.extern ov07_0221C410
	.extern ov07_0221C468
	.extern ov07_0221FA48
	.extern ov07_0221FAE8
	.extern ov07_0221FAEC
	.extern ov07_0221FAF8
	.extern ov07_02222004
	.extern ov07_02222268
	.extern ov07_02222CCC
	.extern ov07_02222D88
	.extern ov07_0222C918
	.extern ov07_02231924

	.text

	.text
	thumb_func_start ov07_0222CA8C
ov07_0222CA8C: ; 0x0222CA8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	bl ov07_0221BFD0
	mov r1, #0x68
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x68
	add r4, r0, #0
	bl memset
	ldr r1, _0222CBF4 ; =ov07_0222C918
	str r5, [r4]
	add r0, r5, #0
	add r2, r4, #0
	bl ov07_0221C410
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_0221FA48
	str r0, [r4, #0xc]
	mov r1, #0
	bl Pokepic_GetAttr
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl Pokepic_GetAttr
	strh r0, [r4, #0x12]
	ldr r0, [r4, #0xc]
	mov r1, #0x29
	bl Pokepic_GetAttr
	mov r1, #0x12
	ldrsh r2, [r4, r1]
	sub r0, r2, r0
	strh r0, [r4, #0x12]
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	mov r2, #1
	sub r0, #0x28
	strh r0, [r4, #0x10]
	ldrsh r0, [r4, r1]
	mov r1, #6
	sub r0, #0x28
	strh r0, [r4, #0x12]
	ldr r0, [r4, #0xc]
	bl Pokepic_SetAttr
	ldr r0, [r4]
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_02222004
	add r6, r0, #0
	mov r0, #0x12
	ldrsh r1, [r4, r0]
	sub r1, #8
	strh r1, [r4, #0x14]
	ldrsh r0, [r4, r0]
	add r0, #0x58
	strh r0, [r4, #0x16]
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bge _0222CB28
	mov r0, #0
	strh r0, [r4, #0x14]
_0222CB28:
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	cmp r0, #0xbf
	ble _0222CB34
	mov r0, #0xbf
	strh r0, [r4, #0x16]
_0222CB34:
	add r0, r5, #0
	mov r1, #1
	bl ov07_0221FAF8
	add r7, r0, #0
	ldr r0, [sp, #0x14]
	bl SysTask_GetPriority
	str r0, [sp, #0x18]
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	bl ov07_02222D88
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl ov07_0221BFD0
	mov r1, #0x50
	str r1, [sp]
	ldr r1, [sp, #0x18]
	str r7, [sp, #4]
	add r1, r1, #1
	str r1, [sp, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, _0222CBF8 ; =0x0000038E
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r0, #0x14
	mov r1, #0x16
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	lsl r3, r6, #0xf
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl ov07_02222CCC
	str r0, [r4, #0x18]
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x1c
	mov r2, #0x50
	add r3, r1, #0
	bl ov07_02222268
	ldr r0, [r4, #0x24]
	add r1, r0, #0
	mul r1, r6
	str r1, [r4, #0x24]
	add r0, r5, #0
	bl ov07_0221C468
	add r1, r0, #0
	ldr r0, [r4]
	bl ov07_02231924
	sub r0, r0, #3
	cmp r0, #1
	bhi _0222CBE6
	ldr r0, [r4]
	mov r1, #1
	bl ov07_0221FAEC
	add r5, r0, #0
	ldr r0, [r4]
	bl ov07_0221FAE8
	add r1, r0, #0
	lsl r0, r5, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl SetBgPriority
	ldr r0, [r4]
	bl ov07_0221FAE8
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x18
	mov r0, #0
	lsr r1, r1, #0x18
	bl SetBgPriority
_0222CBE6:
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl ov07_0222C918
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CBF4: .word ov07_0222C918
_0222CBF8: .word 0x0000038E
	thumb_func_end ov07_0222CA8C

