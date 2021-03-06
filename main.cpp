#include "pclview.h"

#include <QApplication>

int main(int argc, char *argv[])
{
#ifdef _WIN32
    vtkOutputWindow::GlobalWarningDisplayOff();
#endif
    QApplication a(argc, argv);
    PclView w;
    w.show();
    return a.exec();
}
