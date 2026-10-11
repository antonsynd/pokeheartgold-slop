	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8FA8
	.public ov102_021EAC44

	.text

	thumb_func_start ov102_021EAC44
ov102_021EAC44: ; 0x021EAC44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	mov r1, #0x23
	bl ov102_021E8FA8
	str r0, [r4]
	bl String_cstr
	str r0, [r4, #4]
	ldrh r1, [r0]
	ldr r0, _021EAC6C ; =0x0000FFFE
	cmp r1, r0
	bne _021EAC66
	mov r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021EAC66:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
_021EAC6C: .word 0x0000FFFE
	thumb_func_end ov102_021EAC44

