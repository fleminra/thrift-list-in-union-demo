#! /bin/csh

setenv CLASSPATH lib/finagle-core_2.10-6.13.1.jar:lib/finagle-thrift_2.10-6.13.1.jar:lib/scrooge-core_2.10-3.13.1.jar:lib/util-core_2.10-6.13.2.jar:lib/netty-3.8.1.Final.jar:lib/libthrift-0.9.1.jar

mkdir -p build/classes/main
/usr/local/scala-2.10.3/bin/scalac -cp $CLASSPATH -d build/classes/main src/main/scala/Server.scala build/scrooge/scala/thrift/*.scala
