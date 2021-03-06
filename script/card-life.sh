#!/usr/bin/env bash



script_get() {
    print_massage "不用下载" "Do not download"
}

script_install() {
    if [[ -f /usr/local/bin/card-life ]];then
        print_massage "检测到当前系统已安装" "Detected that the current system is installed"
        exit
    fi
    
    test_bin card-life

	print_massage "card-life安装完成" "The card-life is installed"
	print_massage "安装目录：/usr/local/bin/card-life" "Install Dir：/usr/local/bin/card-life"
	print_massage "使用：card-life" "Use：card-life"
	print_massage "使用说明：抽卡人生shell精简版" "Draw Card Life Shell Lite"
    print_massage "如果玩起来困难，可以修改存档无限法力" "If it is difficult to play, you can modify the archive unlimited magic"
}

script_remove() {
	rm -rf /usr/local/bin/card-life
    
    [ -f /usr/local/bin/card-life ] && print_error "card-life未成功删除，请检查脚本" "card-life unsuccessfully deleted, please check the script" || print_massage "card-life卸载完成！" "card-life Uninstall completed！"
}

script_info() {
	print_massage "名字：card-life" "Name：card-life"
	print_massage "版本：1.1" "Version：1.1"
	print_massage "介绍：抽卡人生小游戏" "Introduce：抽卡人生小游戏"
	print_massage "作者：速度与激情小组---Linux部" "Author：Speed and Passion Group --- Linux Department"
}