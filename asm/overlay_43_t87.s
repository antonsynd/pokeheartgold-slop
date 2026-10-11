	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222CD44

	.text

	.text
	thumb_func_start ov43_0222CD44
ov43_0222CD44: ; 0x0222CD44
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r0, [r5, #4]
	add r4, r2, #0
	bl Save_PlayerData_GetOptionsAddr
	str r0, [sp]
	mov r2, #0
	mov r1, #7
	str r2, [sp, #4]
	add r0, r4, #0
	add r3, r1, #0
	bl NamingScreen_CreateArgs
	add r4, r0, #0
	ldr r0, [r5, #0x64]
	cmp r0, #1
	bne _0222CD88
	ldr r0, [r5, #0x60]
	ldrh r0, [r0]
	bl sub_02020B78
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _0222CD80
	ldr r1, [r5, #0x60]
	bl CopyU16ArrayToString
	b _0222CD84
_0222CD80:
	bl String_SetEmpty
_0222CD84:
	mov r0, #0
	str r0, [r5, #0x64]
_0222CD88:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov43_0222CD44

