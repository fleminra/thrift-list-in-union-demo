#! /usr/bin/python

import datetime, os, sys, keyring
from pprint import pprint

from thrift.transport import TSocket, TTransport
from thrift.protocol import TBinaryProtocol

sys.path.append('gen-py')
from Service import Service, ttypes

hostname = 'localhost'

transport = TSocket.TSocket(hostname, 2000)
transport = TTransport.TFramedTransport(transport)
protocol = TBinaryProtocol.TBinaryProtocol(transport)
client = Service.Client(protocol)

transport.open()

print client.f()
