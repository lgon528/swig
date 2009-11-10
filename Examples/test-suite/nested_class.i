%module nested_class

#pragma SWIG nowarn=SWIGWARN_PARSE_NESTED_CLASS

%inline %{
struct Outer {
  struct InnerStruct1 {
    int x;
  };

  class InnerClass1 {
  public:
    int x;
  };

  union InnerUnion1 {
    int x;
    double y;
  };

  class {
  public:
    int a;
  };

  struct {
    int b;
  };

  union {
    int c;
    double d;
  };

  class InnerClass2 {
  public:
    int x;
  } InnerClass2Name;

  struct InnerStruct2 {
    int x;
  } InnerStruct2Name;

  union InnerUnion2 {
    int x;
    double y;
  } InnerUnion2Name;

  // bug #909387 - inner declared types are treated as forward declarations
  InnerStruct1* getInnerStruct1() { return 0; }
  InnerClass1* getInnerClass1() { return 0; }
  InnerUnion1* getInnerUnion1() { return 0; }
};

%}