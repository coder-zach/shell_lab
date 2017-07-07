#!/bin/bash

#变量 
var1="first"				    # 变量名和等号之间不能有空格
var2=2
unset var2					    # unset 删除变量
readonly var1				    # readonly 只读变量
echo "the ${var1} one"    	    # $ 使用变量, {}为可选

#数组                           # 数组不支持多维，大小无限制，下标从0开始
arr1=("a" "b" "5" 1)		    # 数组名=(值1 值2 ... 值n)
arr2=(1 2 1)
arr1[7]=6					    # 下标范围无限制
echo ${arr1[*]}				    # 取数组元素${数组[下标]} @或*获取数组中所有元素
echo ${arr2[@]}
length1=${#arr1[@]}			    # 取得数组元素的个数
length2=${#arr2[*]}			    # 或者
echo "${length1}"+"${length2}"

#字符串
str1="test $var1 \"$var1\""     # 双引号 可以有变量 可以转义
str2='test 1234\5678\90'        # 单引号 其中变量无效 其中不能有单引号 转义符也无效
str3="hello ${str1} "$str2""    # 字符串拼接
echo "str" ${str3}
echo ${#str1}"+"${#str2}        # # 取字符串长度
echo ${str2:2:4}                # 提取子字符串，从左边第3个字符开始取4个
echo ${str2:0-2:4}              # 提取子字符串，从右边第2个字符开始取4个
echo ${str2:2}                  # 提取子字符串，从左边第3个字符开始到结束
echo ${str2:0-2}                # 提取子字符串，从右边第2个字符开始到结束
echo `expr index "$str1" st`    # 查找字符's'或't'的位置
