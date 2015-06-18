#ifndef PHOTOSPHEREEXAMPLE_H
#define PHOTOSPHEREEXAMPLE_H

#include "Common.h"
#include <fstream>
#include <cstdio>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>


class PhotoSphereExample : public RiftApp
{

public:
    PhotoSphereExample()
    {
    }

    void drawSphere();
    void renderScene();

    /**
    * Call out to the exiv2 binary to retrieve the XMP fields encoded in the target image file.
    */
    static TexturePtr loadAndPositionPhotoSphereImage(Resource res);

    /**
    * Embed the image in mat into a larger frame.
    */
    static void insetImage(glm::uvec2 &fullPanoSize, glm::uvec2 &croppedImageSize, glm::uvec2 &croppedImagePos, cv::Mat &mat, uchar *out);
    static bool parseExifData(const std::string & exifData, glm::uvec2 &fullPanoSize, glm::uvec2 &croppedImageSize, glm::uvec2 &croppedImagePos);
    static bool loadExifDataFromImage(const std::string &pathToImage, glm::uvec2 &fullPanoSize, glm::uvec2 &croppedImageSize, glm::uvec2 &croppedImagePos);
};

#endif // PHOTOSPHEREEXAMPLE_H
