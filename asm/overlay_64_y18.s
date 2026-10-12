	.include "asm/macros.inc"
	.include "overlay_64.inc"
	.include "global.inc"
	.public ov64_021E622C
	.extern ov64_021E6EA8
	.extern ov64_021E6F6C
	.extern ov64_021E7008

	.text

	.text
	thumb_func_start ov64_021E622C
ov64_021E622C: ; 0x021E622C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x3b
	str r0, [sp, #8]
	ldr r0, _021E6254 ; =ov64_021E6F6C
	ldr r1, _021E6258 ; =ov64_021E7008
	ldr r2, _021E625C ; =ov64_021E6EA8
	add r3, r4, #0
	bl GridInputHandler_Create
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021E6254: .word ov64_021E6F6C
_021E6258: .word ov64_021E7008
_021E625C: .word ov64_021E6EA8
	thumb_func_end ov64_021E622C

