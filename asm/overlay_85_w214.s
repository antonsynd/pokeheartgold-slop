	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E996C
	.extern ov85_021E943C
	.extern ov85_021E9FD0
	.extern ov85_021EA39C

	.text

	.text
	thumb_func_start ov85_021E996C
ov85_021E996C: ; 0x021E996C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r4, [r5, #0x10]
	add r6, r1, #0
	bl ov85_021E9FD0
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _021E9986
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021E99A2
_021E9986:
	ldr r0, _021E9A14 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021E9996
	ldr r0, _021E9A18 ; =0x000005F2
	bl PlaySE
_021E9996:
	add r0, r5, #0
	bl ov85_021E943C
	add sp, #4
	add r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021E99A2:
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x66
	bl Handle2dMenuInput_DeleteOnFinish
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021E9A08
	sub r1, r1, #1
	cmp r0, r1
	bne _021E99DC
	mov r1, #0
	mov r0, #0xd5
	str r1, [sp]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #0x10]
	mov r1, #7
	add r2, sp, #0
	mov r3, #1
	bl sub_02096D4C
	add r0, r5, #0
	mov r1, #1
	bl ov85_021EA39C
	b _021E9A00
_021E99DC:
	mov r0, #0xd5
	mov r1, #0xd
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #3
	add r3, r2, #0
	bl sub_02096D4C
	mov r0, #0
	bl sub_02034818
	add r2, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl BufferPlayersName
_021E9A00:
	mov r0, #0x33
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021E9A08:
	add r0, r5, #0
	bl ov85_021E943C
	add r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E9A14: .word gSystem
_021E9A18: .word 0x000005F2
	thumb_func_end ov85_021E996C

