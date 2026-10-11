	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_0225FF1C
	.extern ov93_0226027C
	.extern ov93_02263010

	.text

	.text
	thumb_func_start ov93_0225FF1C
ov93_0225FF1C: ; 0x0225FF1C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r7, r0, #0
	ldr r0, [r4]
	add r5, r1, #0
	cmp r0, #0
	beq _0225FF2E
	bl GF_AssertFail
_0225FF2E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldrb r1, [r5]
	add r0, r7, #0
	bl ov93_0225E3C4
	ldr r1, [r7]
	ldr r3, _0225FFF4 ; =ov93_02263010
	add r1, #0x30
	ldrb r2, [r1]
	mov r1, #0x28
	mul r1, r2
	mov r2, #0xa
	mul r2, r0
	ldrb r0, [r5]
	add r1, r3, r1
	add r6, r1, r2
	strh r0, [r4, #4]
	ldrh r0, [r5, #2]
	add r1, r6, #0
	strh r0, [r4, #6]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	str r6, [r4, #0x14]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xe]
	add r0, r7, #0
	bl ov93_0226027C
	str r0, [r4, #0x10]
	bl sub_0203769C
	ldrb r1, [r5]
	cmp r1, r0
	bne _0225FF8E
	ldr r1, [r5, #4]
	add r0, r7, #0
	bl ov93_0225DF38
	mov r0, #0x19
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
_0225FF8E:
	mov r0, #1
	str r0, [r4]
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r4, #0x10]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	mov r5, #0
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	ldrb r0, [r6, #7]
	cmp r0, #3
	bhi _0225FFE8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FFB6: ; jump table
	.short _0225FFBE - _0225FFB6 - 2 ; case 0
	.short _0225FFCA - _0225FFB6 - 2 ; case 1
	.short _0225FFD4 - _0225FFB6 - 2 ; case 2
	.short _0225FFDE - _0225FFB6 - 2 ; case 3
_0225FFBE:
	add r1, sp, #0
	add r0, r5, #0
	ldrsh r1, [r1, r0]
	mov r0, #0x1c
	sub r5, r0, r1
	b _0225FFE8
_0225FFCA:
	add r1, sp, #0
	mov r0, #2
	ldrsh r5, [r1, r0]
	sub r5, #0xcc
	b _0225FFE8
_0225FFD4:
	add r1, sp, #0
	add r0, r5, #0
	ldrsh r5, [r1, r0]
	sub r5, #0xa4
	b _0225FFE8
_0225FFDE:
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x34
	sub r5, r0, r1
_0225FFE8:
	mov r1, #5
	lsl r0, r5, #0xc
	lsl r1, r1, #0xc
	bl _s32_div_f
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225FFF4: .word ov93_02263010
	thumb_func_end ov93_0225FF1C

