	.include "macros.inc"
	.include "unk_0205AC88.inc"
	.include "global.inc"
	.public sub_0205B338

	.public _020FC824

	.text

	.text
	thumb_func_start sub_0205B338
sub_0205B338: ; 0x0205B338
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	mov r1, #0x57
	bl String_New
	str r0, [r4]
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, #4]
	add r0, #0x14
	str r1, [r4, #8]
	bl MailMsg_Init_WithBank
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	pop {r4, pc}
	thumb_func_end sub_0205B338

