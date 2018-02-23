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
static const char *ng0 = "C:/Users/Ben L/Ceng342Labs/HW3BarrelShifter/ShifterTestBench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_1029553648_2372691052_p_0(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int64 t14;
    int t15;

LAB0:    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 5092);
    *((int *)t2) = 0;
    t3 = (t0 + 5096);
    *((int *)t3) = 24;
    t7 = 0;
    t8 = 24;

LAB4:    if (t7 <= t8)
        goto LAB5;

LAB7:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 5100);
    *((int *)t2) = 0;
    t3 = (t0 + 5104);
    *((int *)t3) = 24;
    t7 = 0;
    t8 = 24;

LAB13:    if (t7 <= t8)
        goto LAB14;

LAB16:    goto LAB2;

LAB5:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 5092);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, *((int *)t4), 8);
    t6 = (t0 + 3080);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(71, ng0);
    t14 = (20 * 1000LL);
    t2 = (t0 + 2440);
    xsi_process_wait(t2, t14);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:    t2 = (t0 + 5092);
    t7 = *((int *)t2);
    t3 = (t0 + 5096);
    t8 = *((int *)t3);
    if (t7 == t8)
        goto LAB7;

LAB12:    t15 = (t7 + 1);
    t7 = t15;
    t4 = (t0 + 5092);
    *((int *)t4) = t7;
    goto LAB4;

LAB8:    goto LAB6;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB14:    xsi_set_current_line(76, ng0);
    t4 = (t0 + 5100);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, *((int *)t4), 8);
    t6 = (t0 + 3080);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t5, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(77, ng0);
    t14 = (20 * 1000LL);
    t2 = (t0 + 2440);
    xsi_process_wait(t2, t14);

LAB19:    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB15:    t2 = (t0 + 5100);
    t7 = *((int *)t2);
    t3 = (t0 + 5104);
    t8 = *((int *)t3);
    if (t7 == t8)
        goto LAB16;

LAB21:    t15 = (t7 + 1);
    t7 = t15;
    t4 = (t0 + 5100);
    *((int *)t4) = t7;
    goto LAB13;

LAB17:    goto LAB15;

LAB18:    goto LAB17;

LAB20:    goto LAB18;

}


extern void work_a_1029553648_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1029553648_2372691052_p_0};
	xsi_register_didat("work_a_1029553648_2372691052", "isim/ShifterTestBench_isim_beh.exe.sim/work/a_1029553648_2372691052.didat");
	xsi_register_executes(pe);
}
