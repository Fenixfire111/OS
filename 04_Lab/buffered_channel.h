#ifndef INC_04_LAB__BUFFERED_CHANNEL_H_
#define INC_04_LAB__BUFFERED_CHANNEL_H_

#include <thread>
#include <queue>
#include <mutex>
#include <condition_variable>

template<class T>
class BufferedChannel
{
 private:
  int buffer_size;
  bool isOpened;
  std::queue<T> queue;
  std::mutex mtx;
  std::condition_variable notify;

 public:
  explicit BufferedChannel(int bufferSize) : buffer_size(bufferSize) {}

  void Send(T value) {
    std::unique_lock<std::mutex> uLock(mtx);

    if (queue.size() == buffer_size)
      notify.wait(uLock);

    if (isOpened)
      throw std::runtime_error("Sending value is impossible, channel's closed.");

    queue.push(value);
    uLock.unlock();
    notify.notify_one();
  }

  std::pair<T, bool> Recv() {
    std::unique_lock<std::mutex> uLock(mtx);

    if (queue.empty())
      notify.wait(uLock);

    T element = queue.front();
    queue.pop();
    uLock.unlock();
    notify.notify_one();

    return std::make_pair(element, isOpened);
  }

  void Close() {
    std::unique_lock<std::mutex> uLock(mtx);
    isOpened = false;
    uLock.unlock();
    notify.notify_one();
  }
};

#endif //INC_04_LAB__BUFFERED_CHANNEL_H_
