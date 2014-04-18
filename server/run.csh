#! /bin/csh

setenv JAVA /usr/lib/jvm/java-7-oracle/bin/java
setenv CLASSPATH lib/finagle-core_2.10-6.13.1.jar:lib/finagle-thrift_2.10-6.13.1.jar:lib/scrooge-core_2.10-3.13.1.jar:lib/util-app_2.10-6.13.2.jar:lib/util-core_2.10-6.13.2.jar:lib/util-jvm_2.10-6.13.2.jar:lib/netty-3.8.1.Final.jar:lib/libthrift-0.9.1.jar:lib/scala-library-2.10.3.jar:build/classes/main

$JAVA -cp $CLASSPATH Server
