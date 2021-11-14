set(TARGET_NAME simple_server)
project(SimpleChatServer)

aux_source_directory(./src SOURCES)
add_executable(${TARGET_NAME} ${SOURCES})

set(COMPILE_FLAGS -Wall)