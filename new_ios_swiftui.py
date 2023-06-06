#!/usr/bin/env python3

import sys
import shutil
import subprocess
import os

proj_name = sys.argv[1]

script_path = os.path.abspath(__file__)
script_directory = os.path.dirname(script_path)
temp_path = f"{script_directory}/TEMPLATE_IOS_SWIFTUI"

if os.path.exists(proj_name):
	print(f"{proj_name} 文件夹已存在")
	exit(1)

shutil.copytree(temp_path, proj_name)

os.rename(f"{proj_name}/TEMPLATE_IOS_SWIFTUI", f"{proj_name}/{proj_name}")
os.rename(f"{proj_name}/TEMPLATE_IOS_SWIFTUI.xcodeproj", f"{proj_name}/{proj_name}.xcodeproj")

def replace_file_content(file_path):
	file_name = os.path.basename(file_path)
	if file_name.startswith('.'):
		return

	# 打开文件并读取内容
	with open(file_path, 'r', encoding='utf-8') as file:
		content = file.read()
		
	# 替换文本
	replaced_content = content.replace('TEMPLATE_IOS_SWIFTUI', proj_name)
	
	# 将替换后的内容写回文件
	with open(file_path, 'w', encoding='utf-8') as file:
		file.write(replaced_content)

def replace_file_content_in(dir_path):
	for root, dirs, files in os.walk(dir_path):
		if "xcuserdata" in dirs:
			xcuserdata_dir = os.path.join(root, "xcuserdata")
			# 删除目录及其内容
			shutil.rmtree(xcuserdata_dir)
		for file_name in files:
			# 构建文件的完整路径
			file_path = os.path.join(root, file_name)
			replace_file_content(file_path)

replace_file_content_in(proj_name)
subprocess.call(['pod', 'install'], cwd=proj_name)
