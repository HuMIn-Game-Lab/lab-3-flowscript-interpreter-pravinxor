compile:
	git submodule update --init --recursive
	cargo build --manifest-path Code/job_system/Cargo.toml

test: compile
	cargo run --manifest-path Code/job_system/Cargo.toml Code/flowscript1.dot Code/flowscript2.dot Code/flowscript3.dot

demo: ./Code/Demo/main.cpp
	clang++ -pipe -Wall ./Code/Demo/*.cpp -o demo
