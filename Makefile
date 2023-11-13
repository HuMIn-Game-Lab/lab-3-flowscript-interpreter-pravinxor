compile:
	git submodule update --init --recursive
	cargo build --manifest-path Code/job_system/Cargo.toml

test:
	cargo run --manifest-path Code/job_system/Cargo.toml < Code/flowscript.dot

demo: ./Code/Demo/main.cpp
	clang++ -pipe -Wall ./Code/Demo/*.cpp -o demo
