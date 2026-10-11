	.include "asm/macros.inc"
	.include "unk_02058034.inc"
	.include "global.inc"
	.public sub_02058640
	.extern _021D41C8
	.extern sub_020582F4
	.extern sub_02058608
	.extern sub_02058870

	.text
	thumb_func_start sub_02058640
sub_02058640: ; 0x02058640
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _0205865E
	mov r0, #0xb
	bl SaveArray_Party_Alloc
	ldr r1, _02058684 ; =_021D41C8
	ldr r2, [r1]
	str r0, [r2, #0x40]
	ldr r1, [r1]
	add r0, r4, #0
	ldr r1, [r1, #0x40]
	bl Party_Copy
_0205865E:
	cmp r5, #0
	beq _0205866C
	ldr r0, _02058688 ; =sub_02058870
	mov r1, #3
	bl sub_020582F4
	pop {r3, r4, r5, pc}
_0205866C:
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0
	bl sub_020376E0
	ldr r0, _0205868C ; =sub_02058608
	mov r1, #0
	bl sub_020582F4
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02058684: .word _021D41C8
_02058688: .word sub_02058870
_0205868C: .word sub_02058608
	thumb_func_end sub_02058640

