        .cpu xscale
        .text
        .align  2
        .global hook_func
        .global test_api
        .type   hook_func, %function
hook_func:
        str     fp, [sp, #-4]!
        add     fp, sp, #0
        sub     sp, sp, #12
        str     r0, [fp, #-8]
        ldr     r3, [fp, #-8]
        add     r3, r3, #1
        mov     r0, r3
        add     sp, fp, #0
        ldmfd   sp!, {fp}
        bx      lr
        


        
        



