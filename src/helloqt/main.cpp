#include <iostream>

#include <QDebug>
#include <QSqlDatabase>
#include <QVariant>

using namespace std;

int main()
{
    qDebug() << "Hello Qt !";

    qDebug() << "QSqlDatabase";
    QSqlDatabase qSqlDatabase;

    qDebug() << "QVariant";
    QVariant qVariant;


    return 0;
}

