#include "Common.h"
#include <fstream>
#include <cstdio>

#include "PhotoSphereExample.h"


int main(int argc, char ** argv)
{
    if (!ovr_Initialize())
    {
        SAY_ERR("Failed to initialize the Oculus SDK");
        return -1;
    }

    int result = -1;

    try
    {
        result = PhotoSphereExample().run();
    }
    catch (std::exception & error)
    {
        SAY_ERR(error.what());
    }
    catch (std::string & error)
    {
        SAY_ERR(error.c_str());
    }

    ovr_Shutdown();

    return result;
}
