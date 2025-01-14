#ifndef STORAGE_XDB_UTIL_FILENAME_H_
#define STORAGE_XDB_UTIL_FILENAME_H_

#include <string>
#include "include/slice.h"

namespace xdb {

class Env;
class Status;

enum FileType {
    KLogFile = 0,
    KLockFile = 1,
    KCurrentFile = 2,
    KMetaFile = 3,
    KTmpFile = 4,
    KSSTableFile = 5,
    KLoggerFile = 6,
};
std::string LogFileName(const std::string& dbname, uint64_t number);

std::string LockFileName(const std::string& dbname);

std::string LoggerFileName(const std::string& dbname);

std::string MetaFileName(const std::string& dbname, uint64_t number);

std::string TmpFileName(const std::string& dbname, uint64_t number);

std::string SSTableFileName(const std::string& dbname, uint64_t number);

std::string CurrentFileName(const std::string& dbname);

bool ParseFilename(const std::string& filename, uint64_t* number, FileType* type);

bool ParseNumder(Slice* input, uint64_t* num);

Status SetCurrentFile(Env* env, const std::string& dbname, uint64_t number);

Status ReadStringFromFile(Env* env, std::string* str, const std::string& filename);

Status WriteStringToFileSync(Env* env, const Slice& str, const std::string& filename);

}
#endif // STORAGE_XDB_UTIL_FILENAME_H_