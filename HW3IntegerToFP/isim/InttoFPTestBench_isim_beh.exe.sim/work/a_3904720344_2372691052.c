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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/7131322/ceng342labs/HW3IntegerToFP/InttoFPTestBench.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );


static void work_a_3904720344_2372691052_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    int t3;
    char *t4;
    int t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int64 t15;

LAB0:    t1 = (t0 + 1412U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t3 = (-(15));
    t2 = (t0 + 3092);
    *((int *)t2) = t3;
    t4 = (t0 + 3096);
    *((int *)t4) = 30;
    t5 = t3;
    t6 = 30;

LAB4:    if (t5 <= t6)
        goto LAB5;

LAB7:    goto LAB2;

LAB5:    xsi_set_current_line(67, ng0);
    t8 = (t0 + 3092);
    t9 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t7, *((int *)t8), 8);
    t10 = (t0 + 1644);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 8U);
    xsi_driver_first_trans_fast(t10);
    xsi_set_current_line(68, ng0);
    t15 = (10 * 1000LL);
    t2 = (t0 + 1312);
    xsi_process_wait(t2, t15);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:    t2 = (t0 + 3092);
    t5 = *((int *)t2);
    t4 = (t0 + 3096);
    t6 = *((int *)t4);
    if (t5 == t6)
        goto LAB7;

LAB12:    t3 = (t5 + 1);
    t5 = t3;
    t8 = (t0 + 3092);
    *((int *)t8) = t5;
    goto LAB4;

LAB8:    goto LAB6;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}


extern void work_a_3904720344_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3904720344_2372691052_p_0};
	xsi_register_didat("work_a_3904720344_2372691052", "isim/InttoFPTestBench_isim_beh.exe.sim/work/a_3904720344_2372691052.didat");
	xsi_register_executes(pe);
}
