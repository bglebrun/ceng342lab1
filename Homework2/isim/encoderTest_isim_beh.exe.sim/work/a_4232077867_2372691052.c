/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Ben L/Ceng342Labs/Homework2/encoderTest.vhd";
extern char *IEEE_P_2592010699;



static void work_a_4232077867_2372691052_p_0(char *t0)
{
    char t15[16];
    char t16[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 2440);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 3016);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 4932);
    t5 = (t0 + 3080);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(73, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 2440);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4940);
    *((int *)t2) = 0;
    t4 = (t0 + 4944);
    *((int *)t4) = 6;
    t10 = 0;
    t11 = 6;

LAB12:    if (t10 <= t11)
        goto LAB13;

LAB15:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(76, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t12 = (7 - 6);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t5 = (t6 + t14);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t16 + 0U);
    t17 = (t9 + 0U);
    *((int *)t17) = 6;
    t17 = (t9 + 4U);
    *((int *)t17) = 0;
    t17 = (t9 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 6);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t9 + 12U);
    *((unsigned int *)t17) = t19;
    t7 = xsi_base_array_concat(t7, t15, t8, (char)97, t5, t16, (char)99, (unsigned char)2, (char)101);
    t19 = (7U + 1U);
    t20 = (8U != t19);
    if (t20 == 1)
        goto LAB16;

LAB17:    t17 = (t0 + 3080);
    t21 = (t17 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t7, 8U);
    xsi_driver_first_trans_fast(t17);
    xsi_set_current_line(77, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 2440);
    xsi_process_wait(t2, t3);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB14:    t2 = (t0 + 4940);
    t10 = *((int *)t2);
    t4 = (t0 + 4944);
    t11 = *((int *)t4);
    if (t10 == t11)
        goto LAB15;

LAB22:    t18 = (t10 + 1);
    t10 = t18;
    t5 = (t0 + 4940);
    *((int *)t5) = t10;
    goto LAB12;

LAB16:    xsi_size_not_matching(8U, t19, 0);
    goto LAB17;

LAB18:    goto LAB14;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

}


extern void work_a_4232077867_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4232077867_2372691052_p_0};
	xsi_register_didat("work_a_4232077867_2372691052", "isim/encoderTest_isim_beh.exe.sim/work/a_4232077867_2372691052.didat");
	xsi_register_executes(pe);
}
