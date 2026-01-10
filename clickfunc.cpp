#include "clickfunc.h"

Backend::Backend(QObject *parent) : QObject(parent)
{
}
extern int modify;
int Backend::click(int k)
{
    return k + 1 + modify;
}
