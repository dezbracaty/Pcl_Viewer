#include "readmodule.h"

readModule::readModule()
{

}
void readModule::readMapData(std::string mapPath,pcl::PointCloud<pcl::PointXYZ>::Ptr map_data_)
{
    std::ifstream ifs(mapPath);
    std::vector<std::string> words;
    std::string context;
    //map_data_.reset(new pcl::PointCloud<pcl::PointXYZ>());
    double x,y,z;
    while(getline(ifs,context))
    {
        words.clear();
        split1(context,words);
        //std::vector<char*> wor1;
        //split1(context.c_str(),wor1);
        x=std::atof(words[0].c_str());
        y=std::atof(words[1].c_str());
        z=std::atof(words[2].c_str());
        map_data_->push_back(pcl::PointXYZ(x,y,z));
    }

}
void readModule::readSingleLineData(
        std::string filePath,
        pcl::PointCloud<pcl::PointXYZ>::Ptr out)
{
    std::ifstream ifs(filePath);
    std::string str;
    while (getline(ifs, str))
    {
        int count;
        std::stringstream iss(str);
        iss >> count;
        while (count--)
        {
            std::string subStr;
            iss >> subStr;
            float x, y;
            sscanf(subStr.c_str(), "[%f,%f]", &x, &y);
            out->push_back(pcl::PointXYZ(x,y,0));
        }
    }
}
