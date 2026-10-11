	.include "asm/macros.inc"
	.include "unk_02012DD8.inc"
	.include "global.inc"
	.public sub_020134D0
	.public sub_020134EC
	.public sub_02013504
	.extern sub_02013220
	.extern sub_020132A8
	.extern sub_02013364

	.text

	.text
	thumb_func_start sub_020134D0
sub_020134D0: ; 0x020134D0
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl sub_02013220
	add r0, r4, #0
	bl SysTask_Destroy
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020134D0

	thumb_func_start sub_020134EC
sub_020134EC: ; 0x020134EC
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl sub_020132A8
	add r0, r4, #0
	bl SysTask_Destroy
	pop {r4, pc}
	thumb_func_end sub_020134EC

	thumb_func_start sub_02013504
sub_02013504: ; 0x02013504
	push {r3, r4, r5, lr}
	sub sp, #8
	add r3, r1, #0
	add r4, r0, #0
	ldr r0, [r3, #8]
	mov r1, #2
	str r0, [sp]
	ldr r0, [r3, #0xc]
	mov r2, #4
	str r0, [sp, #4]
	mov r0, #0
	mov r5, #6
	ldrsh r0, [r3, r0]
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	bl sub_02013364
	add r0, r4, #0
	bl SysTask_Destroy
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end sub_02013504
