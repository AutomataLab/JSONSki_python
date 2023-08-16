#ifndef _RECORDLOADER_H
#define _RECORDLOADER_H
#include <stdio.h>
#if defined(__MACH__)
#include <stdlib.h>
#else 
#include <malloc.h>
#endif
#include <string.h>
#include <ctype.h>
#include <pthread.h>
#include <sys/time.h>
#include <sys/file.h>
#include <unistd.h>
#include <sched.h>
#include <iostream>
#include <string>
#include <vector>
#include "Records.h"
using namespace std;

class RecordLoader{
  public:
    static Record* loadSingleRecord(const char* file_path);
    static RecordSet* loadRecords(const char* file_path);
};
#endif
