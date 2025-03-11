if(EXISTS "/home/hahaha/work/LockTest/build/test/list_test")
  if(NOT EXISTS "/home/hahaha/work/LockTest/build/test/list_test[1]_tests.cmake" OR
     NOT "/home/hahaha/work/LockTest/build/test/list_test[1]_tests.cmake" IS_NEWER_THAN "/home/hahaha/work/LockTest/build/test/list_test" OR
     NOT "/home/hahaha/work/LockTest/build/test/list_test[1]_tests.cmake" IS_NEWER_THAN "${CMAKE_CURRENT_LIST_FILE}")
    include("/usr/share/cmake/Modules/GoogleTestAddTests.cmake")
    gtest_discover_tests_impl(
      TEST_EXECUTABLE [==[/home/hahaha/work/LockTest/build/test/list_test]==]
      TEST_EXECUTOR [==[]==]
      TEST_WORKING_DIR [==[/home/hahaha/work/LockTest/build/test]==]
      TEST_EXTRA_ARGS [==[--gtest_catch_exceptions=0]==]
      TEST_PROPERTIES [==[TIMEOUT;120]==]
      TEST_PREFIX [==[]==]
      TEST_SUFFIX [==[]==]
      TEST_FILTER [==[]==]
      NO_PRETTY_TYPES [==[FALSE]==]
      NO_PRETTY_VALUES [==[FALSE]==]
      TEST_LIST [==[list_test_TESTS]==]
      CTEST_FILE [==[/home/hahaha/work/LockTest/build/test/list_test[1]_tests.cmake]==]
      TEST_DISCOVERY_TIMEOUT [==[120]==]
      TEST_DISCOVERY_EXTRA_ARGS [==[]==]
      TEST_XML_OUTPUT_DIR [==[]==]
    )
  endif()
  include("/home/hahaha/work/LockTest/build/test/list_test[1]_tests.cmake")
else()
  add_test(list_test_NOT_BUILT list_test_NOT_BUILT)
endif()
