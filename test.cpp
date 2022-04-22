

#include <sw/redis++/redis++.h>
#include <sw/redis++/async_redis++.h>

int main(int argc, char *argv[]) {
    auto handle1 = std::move(sw::redis::RedisCluster("tcp://default:pass@cluster:7000"));
    auto handle2 = std::move(sw::redis::AsyncRedisCluster(sw::redis::ConnectionOptions("tcp://default:pass@cluster:7000")));
    auto sub = handle1.subscriber();
}