	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02246DFC
	.extern ov75_02246BCC
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02246DFC
ov75_02246DFC: ; 0x02246DFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x94
	ldr r4, [r0]
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	bl String_atoi
	ldr r2, _02246E38 ; =0x00002710
	mov r3, #0
	bl _ull_mod
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	bne _02246E24
	bl GF_AssertFail
_02246E24:
	add r0, r4, #0
	bl sub_02085438
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov75_02246BCC
	pop {r3, r4, r5, pc}
	nop
_02246E38: .word 0x00002710
	thumb_func_end ov75_02246DFC

