	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221D9F0
	.extern ov05_0221DB4C
	.extern ov05_0221DB70

	.text

	.text
	thumb_func_start ov05_0221D9F0
ov05_0221D9F0: ; 0x0221D9F0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #2
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	mov r2, #4
	ldr r0, [r0, #0x24]
	add r3, r1, #0
	bl GF_3DVramMan_Create
	ldr r1, _0221DAC8 ; =0x00000B58
	ldr r2, _0221DACC ; =0x04000060
	str r0, [r4, r1]
	ldrh r1, [r2]
	ldr r0, _0221DAD0 ; =0xFFFFCFFF
	and r1, r0
	mov r0, #8
	orr r0, r1
	strh r0, [r2]
	bl sub_02014DA0
	ldr r0, [r4]
	mov r1, #0x12
	ldr r0, [r0, #0x24]
	lsl r1, r1, #0xa
	bl Heap_Alloc
	mov r2, #0xb6
	lsl r2, r2, #4
	str r0, [r4, r2]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	mov r3, #0x12
	ldr r0, [r0, #0x24]
	ldr r1, _0221DAD4 ; =ov05_0221DB70
	str r0, [sp, #4]
	ldr r0, _0221DAD8 ; =ov05_0221DB4C
	ldr r2, [r4, r2]
	lsl r3, r3, #0xa
	bl sub_02014DB4
	ldr r1, _0221DADC ; =0x00000B5C
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_02015524
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl Camera_SetPerspectiveClippingPlane
	ldr r2, [r4]
	mov r0, #0x3b
	ldr r2, [r2, #0x24]
	mov r1, #2
	bl sub_02015264
	add r1, r0, #0
	ldr r0, _0221DADC ; =0x00000B5C
	mov r2, #0xa
	ldr r0, [r4, r0]
	mov r3, #1
	bl sub_0201526C
	mov r1, #0
	ldr r0, _0221DADC ; =0x00000B5C
	add r2, r1, #0
	ldr r0, [r4, r0]
	add r3, r1, #0
	bl sub_02015494
	ldr r0, _0221DADC ; =0x00000B5C
	mov r2, #0
	ldr r0, [r4, r0]
	mov r1, #1
	add r3, r2, #0
	bl sub_02015494
	ldr r0, _0221DADC ; =0x00000B5C
	mov r2, #0
	ldr r0, [r4, r0]
	mov r1, #2
	add r3, r2, #0
	bl sub_02015494
	ldr r0, _0221DADC ; =0x00000B5C
	mov r2, #0
	ldr r0, [r4, r0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02015494
	ldr r0, _0221DADC ; =0x00000B5C
	mov r2, #0
	ldr r0, [r4, r0]
	mov r1, #4
	add r3, r2, #0
	bl sub_02015494
	add sp, #8
	pop {r4, pc}
	nop
_0221DAC8: .word 0x00000B58
_0221DACC: .word 0x04000060
_0221DAD0: .word 0xFFFFCFFF
_0221DAD4: .word ov05_0221DB70
_0221DAD8: .word ov05_0221DB4C
_0221DADC: .word 0x00000B5C
	thumb_func_end ov05_0221D9F0

