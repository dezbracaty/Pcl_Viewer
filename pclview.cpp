#include "pclview.h"
#include "ui_pclview.h"
#include "readmodule.h"
double scale_Global      = 0.01;
int    point_Size_Global = 5;
int    mapNum            =0;
PclView::PclView(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::PclView)
{
    ui->setupUi(this);
    ui->lineEdit_2->setText(QString::fromStdString(std::to_string(point_Size_Global)));
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
    _Cloud->clear();_convertCloud->clear();
    QString path = QFileDialog::getOpenFileName(
                                this,
                                "open",
                                _Default_Dir
                                );
    _Default_Dir = path;
    std::string mapName="Map"+ std::to_string(mapNum++);
    readModule::readMapData(path.toStdString(),_Cloud);
    for(auto p:_Cloud->points)
    {
        _convertCloud->push_back(
                    pcl::PointXYZ(
                        p.x*scale_Global,p.y*scale_Global,p.z*scale_Global)
                    );
    }
    pcl::visualization::PointCloudColorHandlerRandom<pcl::PointXYZ> RandomColor(_convertCloud);
    _viewer->addPointCloud(_convertCloud,RandomColor,mapName);
    _viewer->setPointCloudRenderingProperties(
                pcl::visualization::PCL_VISUALIZER_POINT_SIZE,
                point_Size_Global,
                mapName);
    ui->qvtkWidget->update();
}

void PclView::on_pushButton_2_clicked()
{
    _Cloud->clear();_convertCloud->clear();
    QString path = QFileDialog::getOpenFileName(
                                this,
                                "open",
                                _Default_Dir
                                );
    _Default_Dir = path;
    std::string mapName="Map"+ std::to_string(mapNum++);
    std::cout<<"Map name "<<mapName<<std::endl;
    readModule::readSingleLineData(path.toStdString(),_Cloud);
    for(auto p:_Cloud->points)
    {
        _convertCloud->push_back(
                    pcl::PointXYZ(
                        p.x*scale_Global,p.y*scale_Global,p.z*scale_Global)
                    );
    }
    pcl::visualization::PointCloudColorHandlerRandom<pcl::PointXYZ>::Ptr RandomColor;
    RandomColor.reset(new pcl::visualization::PointCloudColorHandlerRandom<pcl::PointXYZ>(_convertCloud));
    _viewer->addPointCloud(_convertCloud,*RandomColor,mapName);
    _viewer->setPointCloudRenderingProperties(
                pcl::visualization::PCL_VISUALIZER_POINT_SIZE,
                point_Size_Global,
                mapName);
    ui->qvtkWidget->update();

}

void PclView::on_lineEdit_2_editingFinished()
{
    point_Size_Global=atof(this->ui->lineEdit_2->text().toStdString().data());
}

void PclView::on_lineEdit_editingFinished()
{
    scale_Global=atof(this->ui->lineEdit->text().toStdString().data());
    std::cout<<"change scale to :"<<scale_Global<<std::endl;
}
/**
 * @brief PclView::on_pushButton_3_clicked Pcl/pcd file read
 */
void PclView::on_pushButton_3_clicked()
{
    _Cloud->clear();
    QString path = QFileDialog::getOpenFileName(
                                this,
                                "open",
                                _Default_Dir
                                );
    _Default_Dir = path;
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

void PclView::showFitSize()
{
    QScreen *screen=QGuiApplication::primaryScreen ();
    QRect mm=screen->availableGeometry() ;
    int screen_width = mm.width();
    int screen_height = mm.height();
    qDebug()<<screen_width<<screen_height;
    resize(screen_width*0.66666,screen_height*0.6666);
    show();
}
//弧度转换代码
//Eigen::Affine3f transform_2 = Eigen::Affine3f::Identity();
//transform_2.translation() << 2.5, 0.0, 0.0;
//float theta = M_PI/4; // 弧度角
//transform_2.rotate (Eigen::AngleAxisf (theta, Eigen::Vector3f::UnitZ()));
//pcl::transformPointCloud(*_carCloud,*_carCloud,transform_2);

void PclView::on_pushButton_4_clicked()
{
    mapNum=0;
    _viewer->removeAllPointClouds();
    ui->qvtkWidget->update();
    update();
}
