#0  0x00007f7e7e97c672 in __cxa_throw () from /lib/x86_64-linux-gnu/libstdc++.so.6
#1  0x00007f7e7eaedd4f in sw::redis::throw_error(redisContext const&, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) [clone .cold] () from /usr/local/lib/libredis++.so.1
#2  0x00007f7e7eafdc4f in sw::redis::Connection::Connector::connect() const () from /usr/local/lib/libredis++.so.1
#3  0x00007f7e7eaff0c4 in sw::redis::Connection::Connection(sw::redis::ConnectionOptions const&) () from /usr/local/lib/libredis++.so.1
#4  0x00007f7e7eb19034 in sw::redis::RedisCluster::subscriber() () from /usr/local/lib/libredis++.so.1
#5  0x0000555eaa058a9a in main (argc=1, argv=0x7fffdf5c40f8) at ../test.cpp:9
