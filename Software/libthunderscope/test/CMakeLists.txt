add_executable(thunderscopehwtest thunderscopehwtest.c)

target_link_libraries(thunderscopehwtest
	thunderscopehwtestlib)

add_test(NAME TSHWT COMMAND thunderscopehwtest)
