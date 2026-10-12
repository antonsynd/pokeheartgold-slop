	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223434

	.text

	.text
	thumb_func_start ov13_02223434
ov13_02223434: ; 0x02223434
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	bl WCM_LockApList
	bl WCM_CountApList
	add r6, r0, #0
	cmp r6, #0
	ble _0222346C
	mov r4, #0
	cmp r6, #0
	ble _0222346C
_02223450:
	cmp r4, r7
	bge _0222346C
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl WCM_PointApList
	add r1, r5, #0
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _02223450
_0222346C:
	mov r0, #0
	bl WCM_LockApList
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov13_02223434

