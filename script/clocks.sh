#!/usr/bin/env bash



script_get() {
    print_massage "不用下载" "Do not download"
}

script_install() {
    if [[ -f /usr/local/bin/clocks ]];then
        print_massage "检测到当前系统已安装" "Detected that the current system is installed"
        exit
    fi
    
    test_bin clocks

	print_massage "clocks安装完成" "The clocks is installed"
	print_massage "安装目录：/usr/local/bin/clocks" "Install Dir：/usr/local/bin/clocks"
	print_massage "使用：clocks" "Use：clocks"
	print_massage "使用说明：列出系统时间" "Instructions for use: List system timen"
}

script_remove() {
	rm -rf /usr/local/bin/clocks
    
    [ -f /usr/local/bin/clocks ] && print_error "clocks未成功删除，请检查脚本" "clocks unsuccessfully deleted, please check the script" || print_massage "clocks卸载完成！" "clocks Uninstall completed！"
}

script_info() {
	print_massage "名字：clocks" "Name：clocks"
	print_massage "版本：1.0" "Version：1.0"
	print_massage "介绍：字符的系统时间脚本" "Introduce：The system time of the character"
	print_massage "作者：速度与激情小组---Linux部" "Author：Speed and Passion Group --- Linux Department"
}