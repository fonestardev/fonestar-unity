# Unity.cmake

message(STATUS "Loaded Unity.cmake")

function(unity_register_sources)
    # Collect all C source files recursively from the 'src' directory
    # and store them in the UNITY_SRC variables
    file(GLOB_RECURSE UNITY_SRC
        "${THIRD_PARTY_DIR}/Unity/src/*.c"
    )
    set(UNITY_SRC "${UNITY_SRC}" PARENT_SCOPE)

    # Collect all header files recursively from the 'inc' directory
    # and store them in the INC_UNITY variable
    file(GLOB_RECURSE INC_UNITY
        "${THIRD_PARTY_DIR}/Unity/src/*.h"
    )
    set(INC_UNITY "${INC_UNITY}" PARENT_SCOPE)

    set(INC_UNITY_DIRS 
        "${THIRD_PARTY_DIR}/Unity/src"
    )
    set(INC_UNITY_DIRS "${INC_UNITY_DIRS}" PARENT_SCOPE)
endfunction()