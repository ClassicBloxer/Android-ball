#!/bin/bash

# 顯示綠色的 "Android ball"
echo -e "\e[32mAndroid ball\e[0m"

# 顯示下載提示
echo "If you want to download Android Ball please enter \"yes\" otherwise please enter \"no\":"

# 讀取用戶輸入
read input

# 檢查用戶輸入
if [ "$input" == "yes" ]; then
    # 請求檔案權限
    echo "Requesting file permissions..."
    # 檢查並請求寫入權限
    if [ ! -w ~/ ]; then
        echo "You do not have write permissions for the home directory."
        exit 1
    fi
    # 創建 Android ball 資料夾（如果不存在）
    mkdir -p ~/Android\ ball
    # 下載文件到 Android ball 資料夾
    wget https://github.com/user-attachments/files/17265986/com.system.android.ball.zip -O ~/Android\ ball/com.system.android.ball.zip
    echo "Download completed."
elif [ "$input" == "no" ]; then
    # 清除輸入的內容
    echo "Clearing input..."
    unset input
else
    echo "Invalid input. Please enter \"yes\" or \"no\"."
fi

