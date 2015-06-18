TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += c++11

LIBS += -lpthread
LIBS += -lOVR -ldl -lglfw -lGL -lGLEW -lGLU
LIBS += -lopencv_core -lopencv_highgui -lopencv_imgproc
LIBS += -lOpenCTM -L/usr/local/lib/

SOURCES += main.cpp \
    Platform.cpp \
    Statics.cpp \
    Utils.cpp \
    glfw/GlfwApp.cpp \
    glfw/GlfwUtils.cpp \
    opengl/Font.cpp \
    opengl/GlUtils.cpp \
    opengl/Shaders.cpp \
    opengl/Textures.cpp \
    ovr/OvrUtils.cpp \
    ovr/RiftApp.cpp \
    ovr/RiftGlfwApp.cpp \
    ovr/RiftManagerApp.cpp \
    ovr/RiftRenderingApp.cpp \
    resources/ResourceEnums.cpp \
    resources/Resources.cpp \
    PhotoSphereExample.cpp

HEADERS += \
    Common.h \
    IO.h \
    Platform.h \
    Types.h \
    Utils.h \
    glfw/GlfwApp.h \
    glfw/GlfwUtils.h \
    opengl/Constants.h \
    opengl/Font.h \
    opengl/Framebuffer.h \
    opengl/GlUtils.h \
    opengl/Shaders.h \
    opengl/Textures.h \
    ovr/OvrUtils.h \
    ovr/RiftApp.h \
    ovr/RiftGlfwApp.h \
    ovr/RiftManagerApp.h \
    ovr/RiftRenderingApp.h \
    rendering/Colors.h \
    rendering/Lights.h \
    rendering/MatrixStack.h \
    rendering/State.h \
    rendering/Vectors.h \
    resources/ResourceEnums.h \
    resources/Resources.h \
    resources/Resources_Export.h \
    PhotoSphereExample.h
