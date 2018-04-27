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
static const char *ng0 = "C:/Users/Ben L/Ceng342Labs/HW6-2/n_mult.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_1781507893_1035706684(char *, char *, char *, int );
char *ieee_p_1242562249_sub_1919437128_1035706684(char *, char *, char *, char *, int );
char *ieee_p_1242562249_sub_2563015576_1035706684(char *, char *, int , int );


static void work_a_3707699398_1519354710_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1512U);
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
LAB3:    t1 = (t0 + 4960);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 5056);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 5120);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2312U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t2 = (t0 + 5120);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t11;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t1 = (t0 + 5184);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 5248);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB7:    t2 = (t0 + 1352U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    t3 = t10;
    goto LAB9;

}

static void work_a_3707699398_1519354710_p_1(char *t0)
{
    char t12[16];
    char t22[16];
    char t26[16];
    char t34[16];
    char t36[16];
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    int t23;
    unsigned int t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t35;
    char *t37;
    char *t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 5312);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5376);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(57, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t4 = (t0 + 5440);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 16U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 4976);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 5376);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB7:    goto LAB2;

LAB4:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t13 = (0 - 15);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t9 = (t3 == (unsigned char)3);
    if (t9 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t13 = (2 * 8);
    t17 = (t13 - 1);
    t14 = (15 - t17);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t22 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 15;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t18 = (1 - 15);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t19;
    t4 = xsi_base_array_concat(t4, t12, t5, (char)99, (unsigned char)2, (char)97, t1, t22, (char)101);
    t19 = (1U + 15U);
    t3 = (16U != t19);
    if (t3 == 1)
        goto LAB14;

LAB15:    t7 = (t0 + 5568);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    t25 = (t11 + 56U);
    t27 = *((char **)t25);
    memcpy(t27, t4, 16U);
    xsi_driver_first_trans_fast(t7);

LAB10:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8092U);
    t4 = ieee_p_1242562249_sub_1919437128_1035706684(IEEE_P_1242562249, t12, t2, t1, 1);
    t5 = (t12 + 12U);
    t14 = *((unsigned int *)t5);
    t15 = (1U * t14);
    t3 = (8U != t15);
    if (t3 == 1)
        goto LAB16;

LAB17:    t6 = (t0 + 5632);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t11 = (t8 + 56U);
    t25 = *((char **)t11);
    memcpy(t25, t4, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 8092U);
    t3 = ieee_p_1242562249_sub_1781507893_1035706684(IEEE_P_1242562249, t2, t1, 1);
    if (t3 != 0)
        goto LAB18;

LAB20:
LAB19:    goto LAB2;

LAB5:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5440);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    xsi_set_current_line(61, ng0);
    t4 = (t0 + 5312);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5504);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(63, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t2 = t1;
    memset(t2, (unsigned char)2, 8U);
    t4 = (t0 + 5568);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5568);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_delta(t1, 8U, 8U, 0LL);
    xsi_set_current_line(65, ng0);
    t1 = ieee_p_1242562249_sub_2563015576_1035706684(IEEE_P_1242562249, t12, 8, 8);
    t2 = (t0 + 5632);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB7;

LAB9:    xsi_set_current_line(70, ng0);
    t4 = (t0 + 2952U);
    t5 = *((char **)t4);
    t17 = (2 * 8);
    t18 = (t17 - 1);
    t19 = (15 - t18);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t4 = (t5 + t21);
    t6 = (t22 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 15;
    t7 = (t6 + 4U);
    *((int *)t7) = 8;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t23 = (8 - 15);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t24;
    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t7 = (t0 + 8108U);
    t11 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t12, t4, t22, t8, t7);
    t27 = ((IEEE_P_2592010699) + 4024);
    t25 = xsi_base_array_concat(t25, t26, t27, (char)99, (unsigned char)2, (char)97, t11, t12, (char)101);
    t28 = (t0 + 2952U);
    t29 = *((char **)t28);
    t30 = (8 - 1);
    t24 = (15 - t30);
    t31 = (t24 * 1U);
    t32 = (0 + t31);
    t28 = (t29 + t32);
    t35 = ((IEEE_P_2592010699) + 4024);
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 7;
    t38 = (t37 + 4U);
    *((int *)t38) = 1;
    t38 = (t37 + 8U);
    *((int *)t38) = -1;
    t39 = (1 - 7);
    t40 = (t39 * -1);
    t40 = (t40 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t40;
    t33 = xsi_base_array_concat(t33, t34, t35, (char)97, t25, t26, (char)97, t28, t36, (char)101);
    t38 = (t12 + 12U);
    t40 = *((unsigned int *)t38);
    t41 = (1U * t40);
    t42 = (1U + t41);
    t43 = (t42 + 7U);
    t10 = (16U != t43);
    if (t10 == 1)
        goto LAB12;

LAB13:    t44 = (t0 + 5568);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    memcpy(t48, t33, 16U);
    xsi_driver_first_trans_fast(t44);
    goto LAB10;

LAB12:    xsi_size_not_matching(16U, t43, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(16U, t19, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(8U, t15, 0);
    goto LAB17;

LAB18:    xsi_set_current_line(79, ng0);
    t4 = (t0 + 5312);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

}


extern void work_a_3707699398_1519354710_init()
{
	static char *pe[] = {(void *)work_a_3707699398_1519354710_p_0,(void *)work_a_3707699398_1519354710_p_1};
	xsi_register_didat("work_a_3707699398_1519354710", "isim/mult_test_isim_beh.exe.sim/work/a_3707699398_1519354710.didat");
	xsi_register_executes(pe);
}
