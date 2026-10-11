	.include "asm/macros.inc"
	.include "overlay_43.inc"
	.include "global.inc"
	.public ov43_0222AB5C

	.text

	thumb_func_start ov43_0222AB5C
ov43_0222AB5C: ; 0x0222AB5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r3, #0
	add r7, r2, #0
	bl PlayerProfile_New
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202C6F4
	add r1, r7, #0
	bl sub_0202C298
	add r1, r0, #0
	add r0, r4, #0
	bl Save_Profile_PlayerName_Set
	ldr r0, [r5, #0x50]
	mov r1, #0
	add r2, r4, #0
	bl BufferPlayersName
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov43_0222AB5C

