#!/usr/bin/env python3

import sys
import shutil
import os

proj_name = sys.argv[1]

temp_path = "/Users/fangchao/Workspace/storage/codespace/cmd_tools/TEMPLATE_IOS"

if os.path.exists(proj_name):
	print(f"{proj_name} 文件夹已存在")
	exit(1)

shutil.copytree(temp_path, proj_name)

os.rename(f"{proj_name}/TEMPLATE_IOS", f"{proj_name}/{proj_name}")
os.rename(f"{proj_name}/TEMPLATE_IOS.xcodeproj", f"{proj_name}/{proj_name}.xcodeproj")

def replace_file_content(file_path):
	# 打开文件并读取内容
	with open(file_path, 'r', encoding='utf-8') as file:
		content = file.read()
		
	# 替换文本
	replaced_content = content.replace('TEMPLATE_IOS', proj_name)
	
	# 将替换后的内容写回文件
	with open(file_path, 'w', encoding='utf-8') as file:
		file.write(replaced_content)

def replace_file_content_in(dir_path):
	for root, dirs, files in os.walk(dir_path):
		for file_name in files:
			# 构建文件的完整路径
			file_path = os.path.join(root, file_name)
			replace_file_content(file_path)

replace_file_content(f"{proj_name}/Podfile")
replace_file_content_in(f"{proj_name}/{proj_name}")
replace_file_content_in(f"{proj_name}/{proj_name}.xcodeproj")