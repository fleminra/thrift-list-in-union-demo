union Value
{
  //1: i32 a;

  // works
  //2: i64 b;

  // fails
  1: list<i32> b;
}

service Service
{
  Value f();
}
