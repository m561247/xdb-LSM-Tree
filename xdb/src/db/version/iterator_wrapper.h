#ifndef STORAGE_XDB_DB_VERSION_ITERATOR_WRAPPER_H_
#define STORAGE_XDB_DB_VERSION_ITERATOR_WRAPPER_H_

#include "include/iterator.h"
#include "include/comparator.h"

namespace xdb {

class IteratorWrapper {
 public:
    IteratorWrapper() : valid_(false), iter_(nullptr) {}

    explicit IteratorWrapper(Iterator* iter) : iter_(nullptr) {
        Set(iter);
    }
    IteratorWrapper(const IteratorWrapper &) = delete;
    IteratorWrapper &operator=(const IteratorWrapper &) = delete;

    ~IteratorWrapper() { delete iter_; }

    void Set(Iterator* iter) {
        delete iter_;
        iter_ = iter;
        if (iter == nullptr) {
            valid_ = false;
        } else {
            Update();
        }
    }
    void Update() {
        valid_ = iter_->Valid();
        if (valid_) {
            key_ = iter_->Key();
        }
    }
    bool Valid() const { return valid_; }
    void Next() { 
        assert(iter_);
        iter_->Next();
        Update();
    }
    void Prev() {
        assert(iter_);
        iter_->Prev();
        Update();
    }
    void Seek(const Slice &key) {
        assert(iter_);
        iter_->Seek(key);
        Update();
    }
    void SeekToFirst() {
        assert(iter_);
        iter_->SeekToFirst();
        Update();
    }
    void SeekToLast() {
        assert(iter_);
        iter_->SeekToLast();
        Update();
    }
    Status status() const {
        assert(iter_);
        return iter_->status();
    }
    Slice Key() const {
        assert(iter_);
        return key_;
    }
    Slice Value() const {
        assert(iter_);
        return iter_->Value();
    }
 private:
    bool valid_;
    Iterator* iter_;
    Slice key_;
};

}

#endif // STORAGE_XDB_DB_VERSION_ITERATOR_WRAPPER_H_
