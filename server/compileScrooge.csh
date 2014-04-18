#! /bin/csh

setenv JAVA /usr/lib/jvm/java-7-oracle/bin/java
setenv CLASSPATH lib/scopt_2.10-2.1.0.jar:lib/scrooge-generator_2.10-3.13.1.jar:lib/scala-library-2.10.3.jar

mkdir -p build/scrooge/scala
$JAVA -cp "$CLASSPATH" com.twitter.scrooge.Main --finagle -d build/scrooge/scala src/main/thrift/Service.thrift
