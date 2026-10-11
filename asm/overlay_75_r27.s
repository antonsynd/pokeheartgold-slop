	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02246E78
	.extern ov75_02246BCC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02246E78
ov75_02246E78: ; 0x02246E78
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x94
	ldr r4, [r0]
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	bl String_atoi
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	bne _02246E98
	bl GF_AssertFail
_02246E98:
	add r0, r4, #0
	bl sub_02085438
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov75_02246BCC
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov75_02246E78

