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
static const char *ng0 = "C:/Users/Ben L/Ceng342Labs/Lab3/counter_4b_mod_12.vhd";
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_2685223600_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;

LAB0:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1312U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4336);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(40, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 4464);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1992U);
    t6 = *((char **)t2);
    t2 = (t0 + 4464);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

}

static void work_a_2685223600_3212880686_p_1(char *t0)
{
    char t21[16];
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    unsigned int t26;
    unsigned int t27;
    unsigned char t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6788U);
    t3 = (12 - 1);
    t4 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t3);
    if (t4 != 0)
        goto LAB3;

LAB4:    t12 = (t0 + 1192U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    if (t15 != 0)
        goto LAB5;

LAB6:
LAB7:    t22 = (t0 + 1832U);
    t23 = *((char **)t22);
    t22 = (t0 + 6788U);
    t24 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t21, t23, t22, 1);
    t25 = (t21 + 12U);
    t26 = *((unsigned int *)t25);
    t27 = (1U * t26);
    t28 = (4U != t27);
    if (t28 == 1)
        goto LAB9;

LAB10:    t29 = (t0 + 4528);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t24, 4U);
    xsi_driver_first_trans_fast(t29);

LAB2:    t34 = (t0 + 4352);
    *((int *)t34) = 1;

LAB1:    return;
LAB3:    t5 = xsi_get_transient_memory(4U);
    memset(t5, 0, 4U);
    t6 = t5;
    memset(t6, (unsigned char)2, 4U);
    t7 = (t0 + 4528);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB2;

LAB5:    t12 = (t0 + 1832U);
    t16 = *((char **)t12);
    t12 = (t0 + 4528);
    t17 = (t12 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t16, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB8:    goto LAB2;

LAB9:    xsi_size_not_matching(4U, t27, 0);
    goto LAB10;

}

static void work_a_2685223600_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4592);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4368);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2685223600_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6788U);
    t3 = (12 - 1);
    t4 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, t3);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t10 = (t0 + 4656);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 4384);
    *((int *)t15) = 1;

LAB1:    return;
LAB3:    t5 = (t0 + 4656);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_2685223600_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2685223600_3212880686_p_0,(void *)work_a_2685223600_3212880686_p_1,(void *)work_a_2685223600_3212880686_p_2,(void *)work_a_2685223600_3212880686_p_3};
	xsi_register_didat("work_a_2685223600_3212880686", "isim/counter_4b_m12_testbench_isim_beh.exe.sim/work/a_2685223600_3212880686.didat");
	xsi_register_executes(pe);
}
