

project_name := Template
uvproj_path := .
day_version := 99
.PHONY: default build cformat format clean flash debug assets

# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

default: macro2path build path2macro

.PHONY: dist clear

clear:
	@echo clear
	@- rmdir /Q /S "./_build"

# format:
# 	@echo Astyle source code format
# 	./utils_bin/astyle.exe --project="./utils_bin/.astylerc" -r **.c,**.h --ignore-exclude-errors --exclude=_build --exclude=utils_bin --exclude=dist --exclude=utils -v -Q



# 格式化目标
format:
	@echo "Running Astyle source code format..."
	./utils_bin/astyle.exe **.html
	@echo "Formatting completed."