#ifndef PCLVIEW_H
#define PCLVIEW_H
//QT
#include <QMainWindow>
#include <QtWidgets/QLCDNumber>
#include <QFileDialog>
#include <QTextCodec>
#include <QMessageBox>
#include <QColorDialog>
#include <QScreen>
#include <qDebug>
#include <QString>
//Own file
#include <readmodule.h>

//c++
#include <iostream>
#include <fstream>
#include <vector>
#include <math.h>
#include <algorithm>
#include <string>
//PCL
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/common/common.h>
#include <pcl/visualization/pcl_visualizer.h>
#include <pcl/io/pcd_io.h>
#include <pcl/io/ply_io.h>
#include <pcl/common/transforms.h>
//VTK
#include <vtkSmartPointer.h>
#include <vtkRenderWindow.h>
#ifdef _WIN32
#include <vtkOutputWindow.h>
#endif
#include <vtkSmartPointer.h>
#include <vtkRenderWindow.h>
#ifdef VTK_INIT_WITH_OPENGL2
//VTK INIT With Opengl2
#include <vtkAutoInit.h>
VTK_MODULE_INIT(vtkRenderingOpenGL2);
VTK_MODULE_INIT(vtkInteractionStyle);
#endif
//VTK INIT With Opengl
#ifdef VTK_INIT_WITH_OPENGL
#include <vtkAutoInit.h>
VTK_MODULE_INIT(vtkRenderingOpenGL);
VTK_MODULE_INIT(vtkInteractionStyle);
#endif
QT_BEGIN_NAMESPACE
namespace Ui { class PclView; }
QT_END_NAMESPACE
//Typedef
typedef pcl::PointXYZ PointT;
typedef pcl::PointCloud<PointT> PointCloudT;

class PclView : public QMainWindow
{
    Q_OBJECT

public:
    PclView(QWidget *parent = nullptr);
    ~PclView();
    void showFitSize();

private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

    void on_lineEdit_2_editingFinished();

    void on_lineEdit_editingFinished();

    void on_pushButton_3_clicked();

    void on_pushButton_4_clicked();

private:
    Ui::PclView *ui;
    pcl::visualization::PCLVisualizer::Ptr      _viewer;
    boost::weak_ptr<pcl::visualization::PCLVisualizer> _weak_viewer;
    PointCloudT::Ptr                            _convertCloud;
    PointCloudT::Ptr                            _Cloud;
    QString                                     _Default_Dir="../";
};
#endif // PCLVIEW_H
