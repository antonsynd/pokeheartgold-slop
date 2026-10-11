	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E94EC
	.extern ov85_021E943C
	.extern ov85_021E9458
	.extern ov85_021E9FD0
	.extern ov85_021EA0EC
	.extern ov85_021EA39C

	.text

	.text
	thumb_func_start ov85_021E94EC
ov85_021E94EC: ; 0x021E94EC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0203769C
	cmp r0, #0
	ldr r0, [r5, #0x10]
	beq _021E9520
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021E9542
	ldr r0, _021E9608 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021E9514
	ldr r0, _021E960C ; =0x000005F2
	bl PlaySE
_021E9514:
	add r0, r5, #0
	bl ov85_021E943C
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021E9520:
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021E9542
	ldr r0, _021E9608 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021E9536
	ldr r0, _021E960C ; =0x000005F2
	bl PlaySE
_021E9536:
	add r0, r5, #0
	bl ov85_021E943C
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021E9542:
	bl ov85_021E9FD0
	add r4, r0, #0
	bl sub_02037454
	cmp r4, r0
	beq _021E955C
	add r0, r5, #0
	bl ov85_021E943C
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021E955C:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x66
	bl Handle2dMenuInput_DeleteOnFinish
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E95FC
	sub r1, r1, #1
	cmp r0, r1
	bne _021E95A0
	bl sub_0203769C
	cmp r0, #0
	bne _021E9596
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r2, sp, #4
	mov r3, #1
	bl sub_02096D4C
	add r0, r5, #0
	mov r1, #1
	bl ov85_021EA39C
_021E9596:
	add r0, r5, #0
	mov r1, #0
	bl ov85_021E9458
	b _021E95F4
_021E95A0:
	bl sub_0203769C
	cmp r0, #0
	bne _021E95BC
	add r0, r5, #0
	mov r1, #0xb
	bl ov85_021E9458
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ov85_021EA0EC
	b _021E95F4
_021E95BC:
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #2]
	bl sub_0203769C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, _021E9610 ; =0x00004A50
	mov r1, #1
	strb r1, [r5, r0]
	mov r1, #0
	add r0, #0xc
	strh r1, [r5, r0]
	mov r0, #0xd5
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #0x10]
	mov r1, #2
	add r2, sp, #0
	mov r3, #4
	bl sub_02096D4C
_021E95F4:
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021E95FC:
	add r0, r5, #0
	bl ov85_021E943C
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021E9608: .word gSystem
_021E960C: .word 0x000005F2
_021E9610: .word 0x00004A50
	thumb_func_end ov85_021E94EC

