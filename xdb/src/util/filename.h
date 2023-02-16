#ifndef STORAGE_XDB_UTIL_FILENAME_H_
#define STORAGE_XDB_UTIL_FILENAME_H_

#include <string>
#include "include/slice.h"

namespace xdb {

class Env;
class Status;

enum FileType {
    KLogFile = 0,
    KLockFile = 1
};
std::string LogFileName(const std::string& dbname, uint64_t number);

std::string LockFileName(const std::string& dbname);

std::string MetaFileName(const std::string& dbname, uint64_t number);

std::string TmpFileName(const std::string& dbname, uint64_t number);

std::string CurrentFileName(const std::string& dbname);

bool ParseFilename(const std::string& filename, uint64_t* number, FileType* type);

bool ParseNumder(Slice* input, uint64_t* num);

Status SetCurrentFile(Env* env, const std::string& dbname, uint64_t number);

}
#endif // STORAGE_XDB_UTIL_FILENAME_H_