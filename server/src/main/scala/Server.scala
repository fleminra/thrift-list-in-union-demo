object Server
{
  def main(args: Array[String])
  {
    println(sys.props("java.vendor"))
    println(sys.props("java.version"))

    import thrift.{Value, Service}
    
    class ServiceImpl extends Service.FutureIface
    {
      import com.twitter.util.Future
    
      def f(): Future[Value] = Future(Value.B(Array(4)))
    }

    val service = new Service.FinagledService(new ServiceImpl,
					      new org.apache.thrift.protocol.TBinaryProtocol.Factory)

    val server = com.twitter.finagle.builder.ServerBuilder()
      .bindTo(new java.net.InetSocketAddress(2000))
      .codec(com.twitter.finagle.thrift.ThriftServerFramedCodec())
      .name("thriftserver")
      .build(service)
  }
}
