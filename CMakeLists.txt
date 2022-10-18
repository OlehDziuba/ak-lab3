project(hello)			

set(SOURCE_EXE main.cpp)

set(SOURCE_LIB hello.cpp factorial.cpp)			

add_library(hello STATIC ${SOURCE_LIB})	

add_executable(main ${SOURCE_EXE})	

target_link_libraries(main hello)