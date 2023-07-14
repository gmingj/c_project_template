
add_executable(${PROJECT_NAME})

target_sources(${PROJECT_NAME}
    PRIVATE module.cc
    PRIVATE main.cc
    )

target_include_directories(${PROJECT_NAME}
    PRIVATE ${CMAKE_SOURCE_DIR}/include
    )

# target_link_directories(${PROJECT_NAME}
#     PRIVATE ${LIBDIR}
#     )

# target_link_libraries(${PROJECT_NAME}
#     PRIVATE ${LIBS}
#     )

# install(
#     TARGETS ${PROJECT_NAME}
#     DESTINATION ${CMAKE_BINARY_DIR}/dist/bin COMPONENT dev
#     )
