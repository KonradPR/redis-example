This repository aims to provide a minimal example of a suspected bug in the redis-plus-plus library.

Just use provided compose to reproduce the problem. Remember to download submodules as they are needed for docker image build.

The setup consists of two docker containers. One being a server application that needs to accesss a redis cluster and the second one containing said cluster.

The same exact code works if the cluster is placed in the same container as the server.

Executions fails with the following stacktrace:

#0  0x00007f7e7e97c672 in __cxa_throw () from /lib/x86_64-linux-gnu/libstdc++.so.6
#1  0x00007f7e7eaedd4f in sw::redis::throw_error(redisContext const&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) [clone .cold] () from /usr/local/lib/libredis++.so.1
#2  0x00007f7e7eafdc4f in sw::redis::Connection::Connector::connect() const () from /usr/local/lib/libredis++.so.1
#3  0x00007f7e7eaff0c4 in sw::redis::Connection::Connection(sw::redis::ConnectionOptions const&) () from /usr/local/lib/libredis++.so.1
#4  0x00007f7e7eb19034 in sw::redis::RedisCluster::subscriber() () from /usr/local/lib/libredis++.so.1
#5  0x0000555eaa058a9a in main (argc=1, argv=0x7fffdf5c40f8) at ../test.cpp:9
