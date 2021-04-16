QT          += core gui
RC_ICONS    += a5673-es2rc-001.ico
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
DEFINES += VTK_INIT_WITH_OPENGL
CONFIG += c++11
win32{
    message("Windows PlatForm");
    INCLUDEPATH += D:\PCL_1.9.1\include\pcl-1.9
    INCLUDEPATH += D:\PCL_1.9.1\include\pcl-1.9\pcl
    INCLUDEPATH += D:\PCL_1.9.1\3rdParty
    INCLUDEPATH += D:\PCL_1.9.1\3rdParty\Eigen\eigen3
    INCLUDEPATH += D:\PCL_1.9.1\3rdParty\VTK\include\vtk-8.1
    INCLUDEPATH += D:\PCL_1.9.1\3rdParty\Boost\include\boost-1_68
    INCLUDEPATH += D:\vtk_install\include\vtk-8.1
    LIBS += -LD:\software\boost_1_68_0\lib64-msvc-14.1

    CONFIG(release,debug|release){
        message("Release Mode");
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkalglib-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkChartsCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkCommonColor-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkCommonComputationalGeometry-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkCommonCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkCommonDataModel-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkCommonExecutionModel-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkCommonMath-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkCommonMisc-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkCommonSystem-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkCommonTransforms-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkDICOMParser-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkDomainsChemistry-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkDomainsChemistryOpenGL2-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkexoIIc-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkexpat-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersAMR-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersExtraction-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersFlowPaths-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersGeneral-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersGeneric-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersGeometry-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersHybrid-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersHyperTree-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersImaging-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersModeling-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersParallel-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersParallelImaging-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersPoints-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersProgrammable-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersSelection-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersSMP-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersSources-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersStatistics-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersTexture-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersTopology-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkFiltersVerdict-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkfreetype-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkGeovisCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkgl2ps-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkglew-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkGUISupportQt-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkGUISupportQtOpenGL-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkGUISupportQtSQL-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkhdf5-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkhdf5_hl-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingColor-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingFourier-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingGeneral-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingHybrid-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingMath-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingMorphological-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingSources-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingStatistics-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkImagingStencil-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkInfovisCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkInfovisLayout-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkInteractionImage-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkInteractionStyle-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkInteractionWidgets-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOAMR-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOEnSight-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOExodus-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOExport-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOExportOpenGL-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOExportOpenGL2-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOGeometry-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOImage-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOImport-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOInfovis-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOLegacy-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOLSDyna-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOMINC-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOMovie-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIONetCDF-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOParallel-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOParallelXML-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOPLY-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOSQL-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOTecplotTable-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOVideo-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOXML-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkIOXMLParser-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkjpeg-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkjsoncpp-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtklibharu-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtklibxml2-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtklz4-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkmetaio-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkNetCDF-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtknetcdfcpp-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkoggtheora-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkParallelCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkpng-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkproj4-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingAnnotation-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingContext2D-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingContextOpenGL-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingContextOpenGL2-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingFreeType-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingGL2PS-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingGL2PSOpenGL2-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingImage-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingLabel-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingLIC-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingLOD-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingOpenGL-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingOpenGL2-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingQt-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingVolume-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingVolumeOpenGL-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkRenderingVolumeOpenGL2-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtksqlite-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtksys-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkTestingGenericBridge-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkTestingIOSQL-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkTestingRendering-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtktiff-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkverdict-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkViewsContext2D-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkViewsCore-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkViewsInfovis-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkViewsQt-8.1.lib
        LIBS += D:\PCL_1.9.1\3rdParty\VTK\lib\vtkzlib-8.1.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_common_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_features_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_filters_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_io_ply_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_io_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_kdtree_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_keypoints_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_ml_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_octree_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_outofcore_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_people_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_recognition_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_registration_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_sample_consensus_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_search_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_segmentation_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_stereo_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_surface_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_tracking_release.lib
        LIBS += D:\PCL_1.9.1\lib\pcl_visualization_release.lib
    }
    !CONFIG(release,debug|release){
        message("Debug Mode")
    }
}
#linux平台
unix{
message("Linux PlatForm")
INCLUDEPATH += /usr/local/include/vtk-8.1
INCLUDEPATH += /usr/local/include/pcl-1.9
INCLUDEPATH += /usr/include/eigen3/
LIBS += /usr/local/lib/libvtkFiltersVerdict-8.1.so
LIBS += /usr/local/lib/libvtkRenderingAnnotation-8.1.so
LIBS += /usr/local/lib/libvtkFiltersSelection-8.1.so
LIBS += /usr/local/lib/libvtkIONetCDF-8.1.so
LIBS += /usr/local/lib/libvtkglew-8.1.so
LIBS += /usr/local/lib/libvtkzlib-8.1.so
LIBS += /usr/local/lib/libvtkFiltersFlowPaths-8.1.so
LIBS += /usr/local/lib/libvtkCommonTransforms-8.1.so
LIBS += /usr/local/lib/libvtkParallelCore-8.1.so
LIBS += /usr/local/lib/libvtkexoIIc-8.1.so
LIBS += /usr/local/lib/libvtkIOEnSight-8.1.so
LIBS += /usr/local/lib/libvtkIOAMR-8.1.so
LIBS += /usr/local/lib/libvtkImagingSources-8.1.so
LIBS += /usr/local/lib/libvtkViewsContext2D-8.1.so
LIBS += /usr/local/lib/libvtkIOXMLParser-8.1.so
LIBS += /usr/local/lib/libvtkFiltersStatistics-8.1.so
LIBS += /usr/local/lib/libvtkFiltersProgrammable-8.1.so
LIBS += /usr/local/lib/libvtkFiltersCore-8.1.so
LIBS += /usr/local/lib/libvtkFiltersTopology-8.1.so
LIBS += /usr/local/lib/libvtkFiltersHybrid-8.1.so
LIBS += /usr/local/lib/libvtkFiltersParallelImaging-8.1.so
LIBS += /usr/local/lib/libvtkIOParallelXML-8.1.so
LIBS += /usr/local/lib/libvtkInteractionStyle-8.1.so
LIBS += /usr/local/lib/libvtkDomainsChemistryOpenGL2-8.1.so
LIBS += /usr/local/lib/libvtkRenderingContextOpenGL2-8.1.so
LIBS += /usr/local/lib/libvtkIOSQL-8.1.so
LIBS += /usr/local/lib/libvtksqlite-8.1.so
LIBS += /usr/local/lib/libvtkFiltersAMR-8.1.so
LIBS += /usr/local/lib/libvtkmetaio-8.1.so
LIBS += /usr/local/lib/libvtkCommonMath-8.1.so
LIBS += /usr/local/lib/libvtkFiltersParallel-8.1.so
LIBS += /usr/local/lib/libvtkViewsInfovis-8.1.so
LIBS += /usr/local/lib/libvtksys-8.1.so
LIBS += /usr/local/lib/libvtkIOLegacy-8.1.so
LIBS += /usr/local/lib/libvtkCommonColor-8.1.so
LIBS += /usr/local/lib/libvtkInteractionImage-8.1.so
LIBS += /usr/local/lib/libvtkRenderingFreeType-8.1.so
LIBS += /usr/local/lib/libvtkRenderingLOD-8.1.so
LIBS += /usr/local/lib/libvtkIOPLY-8.1.so
LIBS += /usr/local/lib/libvtkproj4-8.1.so
LIBS += /usr/local/lib/libvtkIOLSDyna-8.1.so
LIBS += /usr/local/lib/libvtkChartsCore-8.1.so
LIBS += /usr/local/lib/libvtkNetCDF-8.1.so
LIBS += /usr/local/lib/libvtkCommonComputationalGeometry-8.1.so
LIBS += /usr/local/lib/libvtkDomainsChemistry-8.1.so
LIBS += /usr/local/lib/libvtkImagingHybrid-8.1.so
LIBS += /usr/local/lib/libvtkCommonDataModel-8.1.so
LIBS += /usr/local/lib/libvtkjsoncpp-8.1.so
LIBS += /usr/local/lib/libvtkIOImage-8.1.so
LIBS += /usr/local/lib/libvtkInfovisCore-8.1.so
LIBS += /usr/local/lib/libvtkInfovisLayout-8.1.so
LIBS += /usr/local/lib/libvtkIOMovie-8.1.so
LIBS += /usr/local/lib/libvtkIOVideo-8.1.so
LIBS += /usr/local/lib/libvtkImagingGeneral-8.1.so
LIBS += /usr/local/lib/libvtknetcdfcpp-8.1.so
LIBS += /usr/local/lib/libvtkFiltersGeneric-8.1.so
LIBS += /usr/local/lib/libvtkIOMINC-8.1.so
LIBS += /usr/local/lib/libvtkInteractionWidgets-8.1.so
LIBS += /usr/local/lib/libvtkFiltersImaging-8.1.so
LIBS += /usr/local/lib/libvtkViewsQt-8.1.so
LIBS += /usr/local/lib/libvtkImagingMath-8.1.so
LIBS += /usr/local/lib/libvtklz4-8.1.so
LIBS += /usr/local/lib/libvtkRenderingContext2D-8.1.so
LIBS += /usr/local/lib/libvtkImagingCore-8.1.so
LIBS += /usr/local/lib/libvtklibxml2-8.1.so
LIBS += /usr/local/lib/libvtkexpat-8.1.so
LIBS += /usr/local/lib/libvtkoggtheora-8.1.so
LIBS += /usr/local/lib/libvtkImagingColor-8.1.so
LIBS += /usr/local/lib/libvtkverdict-8.1.so
LIBS += /usr/local/lib/libvtkhdf5_hl-8.1.so
LIBS += /usr/local/lib/libvtkRenderingQt-8.1.so
LIBS += /usr/local/lib/libvtkIOCore-8.1.so
LIBS += /usr/local/lib/libvtkFiltersSMP-8.1.so
LIBS += /usr/local/lib/libvtkRenderingVolumeOpenGL2-8.1.so
LIBS += /usr/local/lib/libvtkGeovisCore-8.1.so
LIBS += /usr/local/lib/libvtkFiltersHyperTree-8.1.so
LIBS += /usr/local/lib/libvtkhdf5-8.1.so
LIBS += /usr/local/lib/libvtkFiltersGeneral-8.1.so
LIBS += /usr/local/lib/libvtkFiltersSources-8.1.so
LIBS += /usr/local/lib/libvtkCommonMisc-8.1.so
LIBS += /usr/local/lib/libvtkCommonSystem-8.1.so
LIBS += /usr/local/lib/libvtkIOExport-8.1.so
LIBS += /usr/local/lib/libvtkImagingFourier-8.1.so
LIBS += /usr/local/lib/libvtkRenderingGL2PSOpenGL2-8.1.so
LIBS += /usr/local/lib/libvtkIOInfovis-8.1.so
LIBS += /usr/local/lib/libvtkImagingStatistics-8.1.so
LIBS += /usr/local/lib/libvtkIOGeometry-8.1.so
LIBS += /usr/local/lib/libvtkFiltersTexture-8.1.so
LIBS += /usr/local/lib/libvtktiff-8.1.so
LIBS += /usr/local/lib/libvtkImagingMorphological-8.1.so
LIBS += /usr/local/lib/libvtkViewsCore-8.1.so
LIBS += /usr/local/lib/libvtkFiltersGeometry-8.1.so
LIBS += /usr/local/lib/libvtkIOExodus-8.1.so
LIBS += /usr/local/lib/libvtkIOExportOpenGL2-8.1.so
LIBS += /usr/local/lib/libvtkRenderingOpenGL2-8.1.so
LIBS += /usr/local/lib/libvtkpng-8.1.so
LIBS += /usr/local/lib/libvtkIOXML-8.1.so
LIBS += /usr/local/lib/libvtkfreetype-8.1.so
LIBS += /usr/local/lib/libvtkCommonCore-8.1.so
LIBS += /usr/local/lib/libvtkgl2ps-8.1.so
LIBS += /usr/local/lib/libvtkjpeg-8.1.so
LIBS += /usr/local/lib/libvtkCommonExecutionModel-8.1.so
LIBS += /usr/local/lib/libvtkIOTecplotTable-8.1.so
LIBS += /usr/local/lib/libvtkGUISupportQt-8.1.so
LIBS += /usr/local/lib/libvtkIOParallel-8.1.so
LIBS += /usr/local/lib/libvtkRenderingVolume-8.1.so
LIBS += /usr/local/lib/libvtkRenderingCore-8.1.so
LIBS += /usr/local/lib/libvtklibharu-8.1.so
LIBS += /usr/local/lib/libvtkFiltersModeling-8.1.so
LIBS += /usr/local/lib/libvtkImagingStencil-8.1.so
LIBS += /usr/local/lib/libvtkRenderingImage-8.1.so
LIBS += /usr/local/lib/libvtkalglib-8.1.so
LIBS += /usr/local/lib/libvtkFiltersExtraction-8.1.so
LIBS += /usr/local/lib/libvtkGUISupportQtSQL-8.1.so
LIBS += /usr/local/lib/libvtkRenderingLabel-8.1.so
LIBS += /usr/local/lib/libvtkIOImport-8.1.so
LIBS += /usr/local/lib/libvtkFiltersPoints-8.1.so
LIBS += /usr/local/lib/libvtkDICOMParser-8.1.so
LIBS += /usr/local/lib/libpcl_segmentation.so
LIBS += /usr/local/lib/libpcl_surface.so
LIBS += /usr/local/lib/libpcl_people.so
LIBS += /usr/local/lib/libpcl_io.so
LIBS += /usr/local/lib/libpcl_search.so
LIBS += /usr/local/lib/libpcl_tracking.so
LIBS += /usr/local/lib/libpcl_keypoints.so
LIBS += /usr/local/lib/libpcl_visualization.so
LIBS += /usr/local/lib/libpcl_ml.so
LIBS += /usr/local/lib/libpcl_stereo.so
LIBS += /usr/local/lib/libpcl_filters.so
LIBS += /usr/local/lib/libpcl_io_ply.so
LIBS += /usr/local/lib/libpcl_outofcore.so
LIBS += /usr/local/lib/libpcl_registration.so
LIBS += /usr/local/lib/libpcl_features.so
LIBS += /usr/local/lib/libpcl_octree.so
LIBS += /usr/local/lib/libpcl_common.so
LIBS += /usr/local/lib/libpcl_sample_consensus.so
LIBS += /usr/local/lib/libpcl_kdtree.so
LIBS += /usr/local/lib/libpcl_recognition.so

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
}
# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    pclview.cpp \
    readmodule.cpp

HEADERS += \
    pclview.h \
    readmodule.h

FORMS += \
    pclview.ui


