#!/bin/bash
# SimpleCLI-Calculator: Công cụ dòng lệnh cho các phép tính cơ bản
# : Nguyễn Thanh Tùng, Hệ điều hành và lập trình Linux

# Hàm cộng 5 số
add_five_numbers() {
    echo "Nhập 5 số cách nhau bởi khoảng trắng: "
    read -a numbers
    sum=0
    for num in "${numbers[@]}"; do
        sum=$((sum + num))
    done
    echo "Tổng của 5 số là: $sum"
}

# Hàm tìm số nhỏ nhất trong 2 số
find_min_two_numbers() {
    echo "Nhập 2 số cách nhau bởi khoảng trắng: "
    read num1 num2
    if (( num1 < num2 )); then
        echo "Số nhỏ nhất là: $num1"
    else
        echo "Số nhỏ nhất là: $num2"
    fi
}

# Hàm tìm số lớn nhất trong n số
find_max_n_numbers() {
    echo "Nhập các số cách nhau bởi khoảng trắng: "
    read -a numbers
    max="${numbers[0]}"
    for num in "${numbers[@]}"; do
        if (( num > max )); then
            max=$num
        fi
    done
    echo "Số lớn nhất là: $max"
}

# Menu cho người dùng chọn chức năng
echo "Chọn chức năng: "
echo "1. Cộng 5 số"
echo "2. Tìm số nhỏ nhất trong 2 số"
echo "3. Tìm số lớn nhất trong n số"
read -p "Nhập lựa chọn của bạn (1-3): " choice

case $choice in
    1) add_five_numbers ;;
    2) find_min_two_numbers ;;
    3) find_max_n_numbers ;;
    *) echo "Lựa chọn không hợp lệ!" ;;
esac



git init
git add .
git commit -m "Initial commit for SimpleCLI-Calculator"

git remote add origin https://github.com/Nhat-ctrl/-n-Linux
git push -u origin master
s