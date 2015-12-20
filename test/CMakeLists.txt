# set all include directories for in and out of source builds
include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_SOURCE_DIR}/../src
    ${CMAKE_CURRENT_BINARY_DIR}
)

add_definitions(
    -DQTRAR_LIBRARY
)

set(CMAKE_AUTOMOC ON)

set(TEST_ROOT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR})
string(LENGTH ${TEST_ROOT_DIRECTORY} TEST_ROOT_DIRECTORY_LENGTH)
math(EXPR TEST_ROOT_DIRECTORY_LENGTH "${TEST_ROOT_DIRECTORY_LENGTH} + 1")

file(GLOB_RECURSE TEST_FILES *_test.cpp)
foreach(TEST_FILE ${TEST_FILES})
    string(SUBSTRING ${TEST_FILE} ${TEST_ROOT_DIRECTORY_LENGTH} -1 TEST_FILE_RELATIVE)
    string(LENGTH ${TEST_FILE_RELATIVE} TEST_FILE_RELATIVE_LENGTH)
    math(EXPR TEST_NAME_LENGTH "${TEST_FILE_RELATIVE_LENGTH} - 4")
    string(SUBSTRING ${TEST_FILE_RELATIVE} 0 ${TEST_NAME_LENGTH} TEST_NAME)

    get_filename_component(TEST_TARGET ${TEST_FILE} NAME_WE)

    add_executable(${TEST_TARGET} ${TEST_FILE})
    set_target_properties(${TEST_TARGET} PROPERTIES MACOSX_BUNDLE FALSE)
    target_link_libraries(${TEST_TARGET} qtrarobjs "Qt5::Gui" "Qt5::Test")
    add_test(NAME ${TEST_NAME} COMMAND ${TEST_TARGET} WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})
endforeach(TEST_FILE)

# Copy test assets
add_custom_command(TARGET qtrar_test POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_CURRENT_SOURCE_DIR}/assets
    $<TARGET_FILE_DIR:qtrar_test>/assets
)

if (WIN32)
    file(GLOB QT_LIB_FILES ${QT_ROOT}/bin/*.dll)
    file(GLOB ZLIB_FILES ${ZLIB_INCLUDE_DIR}/../bin/*.dll)

    set(LIB_FILES ${QT_LIB_FILES} ${ZLIB_FILES})

    foreach(LIB_FILE ${LIB_FILES})
        add_custom_command(TARGET qtrar_test POST_BUILD
            COMMAND ${CMAKE_COMMAND} -E copy
            ${LIB_FILE}
            $<TARGET_FILE_DIR:qtrar_test>/
        )
    endforeach()
endif()