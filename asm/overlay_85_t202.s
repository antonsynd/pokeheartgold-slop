	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E9700
	.extern ov85_021E943C
	.extern ov85_021E9458
	.extern ov85_021E9FD0
	.extern ov85_021EA39C

	.text

	.text
	thumb_func_start ov85_021E9700
ov85_021E9700: ; 0x021E9700
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r6, r1, #0
	bl ov85_021E9FD0
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _021E971A
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021E9736
_021E971A:
	ldr r0, _021E97AC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021E972A
	ldr r0, _021E97B0 ; =0x000005F2
	bl PlaySE
_021E972A:
	add r0, r5, #0
	bl ov85_021E943C
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021E9736:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x66
	bl Handle2dMenuInput_DeleteOnFinish
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E979E
	sub r1, r1, #1
	cmp r0, r1
	bne _021E9772
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r2, sp, #0
	mov r3, #1
	bl sub_02096D4C
	add r0, r5, #0
	mov r1, #1
	bl ov85_021EA39C
	add r0, r5, #0
	mov r1, #0
	bl ov85_021E9458
	b _021E9796
_021E9772:
	bl sub_0203769C
	cmp r0, #0
	bne _021E9792
	mov r0, #0xd5
	mov r1, #0x18
	lsl r0, r0, #2
	str r1, [r5, r0]
	bl ov85_021E9FD0
	ldr r1, _021E97B4 ; =0x00004A52
	strb r0, [r5, r1]
	mov r0, #0xc
	bl sub_0205A904
	b _021E9796
_021E9792:
	bl GF_AssertFail
_021E9796:
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021E979E:
	add r0, r5, #0
	bl ov85_021E943C
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E97AC: .word gSystem
_021E97B0: .word 0x000005F2
_021E97B4: .word 0x00004A52
	thumb_func_end ov85_021E9700

