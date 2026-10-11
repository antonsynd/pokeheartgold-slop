	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E705C
	.extern ov85_021E730C
	.extern ov85_021EA4FC

	.text

	.text
	thumb_func_start ov85_021E705C
ov85_021E705C: ; 0x021E705C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _021E7138 ; =0x00000C9C
	mov r1, #0
	str r1, [sp]
	mov r1, #0x66
	add r4, r6, r0
	str r1, [sp, #4]
	add r0, #0xe8
	mov r1, #1
	ldr r0, [r6, r0]
	add r2, r1, #0
	mov r3, #0xf
	bl LoadUserFrameGfx1
	add r0, r6, #0
	add r0, #0xcc
	ldr r0, [r0]
	mov r1, #1
	ldr r0, [r0, #0x18]
	mov r2, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x66
	str r0, [sp, #4]
	ldr r0, _021E713C ; =0x00000D84
	mov r3, #0xe
	ldr r0, [r6, r0]
	bl LoadUserFrameGfx2
	add r0, r6, #0
	add r0, #0xcc
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	bl sub_0200E640
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, _021E7140 ; =0x00000D9C
	mov r1, #0x26
	ldr r0, [r6, r0]
	mov r3, #0x66
	bl PaletteData_LoadNarc
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r0, _021E7140 ; =0x00000D9C
	mov r1, #0x10
	ldr r0, [r6, r0]
	mov r2, #8
	mov r3, #0x66
	bl PaletteData_LoadNarc
	mov r0, #0
	mov r1, #0x1b
	mov r2, #0xce
	mov r3, #0x66
	bl NewMsgDataFromNarc
	str r0, [r4, #4]
	mov r0, #0x66
	bl MessageFormat_New
	str r0, [r4, #8]
	ldr r0, _021E713C ; =0x00000D84
	add r1, r4, #0
	ldr r0, [r6, r0]
	ldr r2, _021E7144 ; =ov85_021EA4FC
	add r1, #0xc
	bl AddWindow
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x66
	bl String_New
	str r0, [r4, #0x6c]
	mov r4, #0
	add r5, r6, #0
	mov r7, #8
_021E7112:
	add r0, r7, #0
	mov r1, #0x66
	bl String_New
	add r1, r5, #0
	add r1, #0x98
	add r4, r4, #1
	add r5, r5, #4
	str r0, [r1]
	cmp r4, #5
	blt _021E7112
	add r0, r6, #0
	add r6, #0xcc
	ldr r1, [r6]
	ldr r1, [r1, #8]
	bl ov85_021E730C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E7138: .word 0x00000C9C
_021E713C: .word 0x00000D84
_021E7140: .word 0x00000D9C
_021E7144: .word ov85_021EA4FC
	thumb_func_end ov85_021E705C

