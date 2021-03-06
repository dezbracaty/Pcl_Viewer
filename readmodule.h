#ifndef READMODULE_H
#define READMODULE_H
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <fstream>
#include <algorithm>
#include <strstream>
#include <pcl/filters/filter.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <pcl/io/pcd_io.h>
//pcl::PointCloud<pcl::PointXYZ>::Ptr  map_data_;
template <class Container>
void split1(const std::string& str, Container& cont)
{
    std::istringstream iss(str);
    std::copy(std::istream_iterator<std::string>(iss),
              std::istream_iterator<std::string>(),
              std::back_inserter(cont));
}

class readModule
{
public:
    readModule();
    /**
     * @brief readSingleLineData    read file contains one line
     * @param filePath              file
     * @param out                   pointcloud for out
     */
    static void readSingleLineData(
            std::string filePath,
            pcl::PointCloud<pcl::PointXYZ>::Ptr out);
    /**
     * @brief readMapData           read file contains multy lines
     * @param mapPath
     * @param map_data_
     */
    static void readMapData(
            std::string mapPath,
            pcl::PointCloud<pcl::PointXYZ>::Ptr map_data_);

};

#endif // READMODULE_H
