include_directories(${PROJECT_SOURCE_DIR}/inc)

add_executable(${PROJECT_NAME}
	main.c
	wav.c
	sound.c
)

target_link_libraries(${PROJECT_NAME} m soundio)