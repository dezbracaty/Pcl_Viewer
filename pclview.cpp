#include "pclview.h"
#include "ui_pclview.h"
#include "readmodule.h"
double scale_Global      = 0.001;
int    point_Size_Global = 10;
PclView::PclView(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::PclView)
{
    ui->setupUi(this);
    _viewer.reset(new pcl::visualization::PCLVisualizer("test",false));
    _Cloud.reset(new PointCloudT);
    _convertCloud.reset(new PointCloudT);
    ui->qvtkWidget->SetRenderWindow(_viewer->getRenderWindow());
    _viewer->setupInteractor(ui->qvtkWidget->GetInteractor(),ui->qvtkWidget->GetRenderWindow());
    _viewer->addCoordinateSystem(1.0);
    _viewer->resetCamera();
}

PclView::~PclView()
{
    delete ui;
}


void PclView::on_pushButton_clicked()
{
    QString path = QFileDialog::getOpenFileName(
                                this,
                                "open",
                                "../"
                );

    _Cloud.reset(new PointCloudT);
    readModule::readMapData(path.toStdString(),_Cloud);
    _viewer->removePointCloud("Map");
    _viewer->addPointCloud(_Cloud,"Map");
    _viewer->setPointCloudRenderingProperties(
                pcl::visualization::PCL_VISUALIZER_POINT_SIZE, point_Size_Global, "Map");
    ui->qvtkWidget->update();
}

void PclView::on_pushButton_2_clicked()
{
    QString path = QFileDialog::getOpenFileName(
                                this,
                                "open",
                                "../"
                                );
    _Cloud.reset(new PointCloudT);
    readModule::readSingleLineData(path.toStdString(),_Cloud);

    _viewer->removePointCloud("Map");
    for(auto p:_Cloud->points)
    {

        _convertCloud->push_back(
                    pcl::PointXYZ(
                        p.x*scale_Global,p.y*scale_Global,p.z*scale_Global)
                    );
    }
    _viewer->addPointCloud(_convertCloud,"Map");
    _viewer->setPointCloudRenderingProperties(
                pcl::visualization::PCL_VISUALIZER_POINT_SIZE,
                point_Size_Global,
                "Map");
    ui->qvtkWidget->update();

}

void PclView::on_lineEdit_2_editingFinished()
{
    point_Size_Global=atof(this->ui->lineEdit_2->text().toStdString().data());
    _viewer->removePointCloud("Map");
    _convertCloud->clear();
    for(auto p:_Cloud->points)
    {

        _convertCloud->push_back(
                    pcl::PointXYZ(
                        p.x*scale_Global,p.y*scale_Global,p.z*scale_Global)
                    );
    }
    _viewer->addPointCloud(_convertCloud,"Map");
    _viewer->setPointCloudRenderingProperties(
                pcl::visualization::PCL_VISUALIZER_POINT_SIZE, point_Size_Global, "Map");
    ui->qvtkWidget->update();
}

void PclView::on_lineEdit_editingFinished()
{
    scale_Global=atof(this->ui->lineEdit->text().toStdString().data());
    std::cout<<"change scale to :"<<scale_Global<<std::endl;
    _viewer->removePointCloud("Map");
    _convertCloud->clear();
    for(auto p:_Cloud->points)
    {

        _convertCloud->push_back(
                    pcl::PointXYZ(
                        p.x*scale_Global,p.y*scale_Global,p.z*scale_Global)
                    );
    }
    _viewer->addPointCloud(_convertCloud,"Map");
    _viewer->setPointCloudRenderingProperties(
                pcl::visualization::PCL_VISUALIZER_POINT_SIZE,
                point_Size_Global,
                "Map");
    ui->qvtkWidget->update();
}
/**
 * @brief PclView::on_pushButton_3_clicked Pcl/pcd file read
 */
void PclView::on_pushButton_3_clicked()
{
    QString path = QFileDialog::getOpenFileName(
                                this,
                                "open",
                                "../"
                                );
    _Cloud.reset(new PointCloudT);
    std::string file=path.toStdString().data();
    if(file.find("pcd"))
    {
        pcl::io::loadPCDFile(file,*_Cloud);
    }
    if(file.find("ply"))
    {
        pcl::io::loadPLYFile(file,*_Cloud);
    }

    _viewer->removePointCloud("Map");
    for(auto p:_Cloud->points)
    {

        _convertCloud->push_back(
                    pcl::PointXYZ(
                        p.x*scale_Global,p.y*scale_Global,p.z*scale_Global)
                    );
    }
    _viewer->addPointCloud(_convertCloud,"Map");
    _viewer->setPointCloudRenderingProperties(
                pcl::visualization::PCL_VISUALIZER_POINT_SIZE,
                point_Size_Global,
                "Map");
    ui->qvtkWidget->update();
}
//弧度转换代码
//Eigen::Affine3f transform_2 = Eigen::Affine3f::Identity();
//transform_2.translation() << 2.5, 0.0, 0.0;
//float theta = M_PI/4; // 弧度角
//transform_2.rotate (Eigen::AngleAxisf (theta, Eigen::Vector3f::UnitZ()));
//pcl::transformPointCloud(*_carCloud,*_carCloud,transform_2);
