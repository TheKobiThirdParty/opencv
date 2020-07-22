# CUDA related flags
find_package(CUDA)
message(STATUS "CUDA FOUND ${CUDA_FOUND}")
if (CUDA_FOUND)
    message(STATUS "Found CUDA installed.")
 
    if(CMAKE_SYSTEM_PROCESSOR STREQUAL "aarch64")
        set(CUDA_ARCH_BIN "72" CACHE STRING "cuda: target arquitecture" FORCE)
    else()
        CUDA_DETECT_INSTALLED_GPUS(OPENCV_CUDA_ARCH_BIN)
        set(CUDA_ARCH_BIN ${OPENCV_CUDA_ARCH_BIN} CACHE STRING "cuda: target arquitecture" FORCE)
    endif()

    set(WITH_CUDA ON CACHE BOOL "cuda: enabling cuda support" FORCE)
    set(CUDA_ARCH_PTX "" CACHE STRING "cuda-arch-ptx: ptx " FORCE)
    set(WITH_CUBLAS ON CACHE BOOL "cuda: cublas enabled" FORCE)

endif()

# Other miscellaneous OpenCV flags
set(WITH_LIBV4L ON CACHE BOOL "v4l: vision for linux enabled" FORCE)
set(WITH_GSTREAMER ON CACHE BOOL "gstreamer: gstreamer enabled" FORCE)
set(WITH_GSTREAMER_0_10 OFF CACHE BOOL "gstreamer: legacy gstreamer disabled" FORCE)
set(WITH_QT OFF CACHE BOOL "qt: qt disabled" FORCE)
set(WITH_QTKIT OFF CACHE BOOL "qtkit: qtkit disabled" FORCE)
set(WITH_OPENGL ON CACHE BOOL "opengl: opengl enabled" FORCE)
set(WITH_MATLAB OFF CACHE BOOL "matlab: matlab support disabled" FORCE)
set(WITH_VTK OFF CACHE BOOL "vtk: VTK disabled" FORCE)
set(BUILD_opencv_apps OFF CACHE BOOL "OpenCV apps: build disabled" FORCE)
set(BUILD_DOCS OFF CACHE BOOL "Documentation disabled" FORCE)
set(BUILD_PACKAGE OFF CACHE BOOL "BUILD_PACKAGE disabled" FORCE)
