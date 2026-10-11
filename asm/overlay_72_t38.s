	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239638
	.extern ov72_02237B54
	.extern ov72_02237B74
	.extern ov72_0223A444

	.text

	.text
	thumb_func_start ov72_02239638
ov72_02239638: ; 0x02239638
	push {r4, lr}
	add r4, r0, #0
	bl ov72_02237B54
	cmp r0, #0
	beq _022396CA
	bl ov72_02237B74
	ldr r1, _022396E4 ; =0x00000FD4
	mov r2, #0
	str r2, [r4, r1]
	add r2, r0, #7
	cmp r2, #6
	bhi _022396B4
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02239660: ; jump table
	.short _02239696 - _02239660 - 2 ; case 0
	.short _0223968C - _02239660 - 2 ; case 1
	.short _022396A0 - _02239660 - 2 ; case 2
	.short _02239696 - _02239660 - 2 ; case 3
	.short _02239682 - _02239660 - 2 ; case 4
	.short _02239678 - _02239660 - 2 ; case 5
	.short _0223966E - _02239660 - 2 ; case 6
_0223966E:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _022396C2
_02239678:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _022396C2
_02239682:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _022396C2
_0223968C:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _022396C2
_02239696:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	b _022396C2
_022396A0:
	sub r1, #0x78
	str r0, [r4, r1]
	mov r0, #0x35
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov72_0223A444
	bl sub_020399EC
	b _022396C2
_022396B4:
	cmp r0, #0
	ble _022396C2
	add r1, r4, #0
	add r1, #0x98
	str r0, [r1]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x1c]
_022396C2:
	add r0, r4, #0
	bl ov72_0223A444
	b _022396E0
_022396CA:
	ldr r0, _022396E4 ; =0x00000FD4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _022396E0
	bl sub_020399EC
_022396E0:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
_022396E4: .word 0x00000FD4
	thumb_func_end ov72_02239638

