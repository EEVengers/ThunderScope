//
//  logger.hpp
//
//  Created by Alex Vandenberg on 2020-10-11.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#ifndef logger_h
#define logger_h

#include <boost/log/expressions.hpp>
#include <boost/log/sources/global_logger_storage.hpp>
#include <boost/log/support/date_time.hpp>
#include <boost/log/trivial.hpp>
#include <boost/log/utility/setup.hpp>

#define TRACE BOOST_LOG_SEV(my_logger::get(), boost::log::trivial::trace)
#define DEBUG BOOST_LOG_SEV(my_logger::get(), boost::log::trivial::debug)
#define INFO  BOOST_LOG_SEV(my_logger::get(), boost::log::trivial::info)
#define WARN  BOOST_LOG_SEV(my_logger::get(), boost::log::trivial::warning)
#define ERROR BOOST_LOG_SEV(my_logger::get(), boost::log::trivial::error)
#define FATAL BOOST_LOG_SEV(my_logger::get(), boost::log::trivial::fatal)

#define SYS_LOGFILE "/var/log/example.log"

//Narrow-char thread-safe logger.
typedef boost::log::sources::severity_logger_mt<boost::log::trivial::severity_level> logger_t;

//declares a global logger with a custom initialization
BOOST_LOG_GLOBAL_LOGGER(my_logger, logger_t)

std::string convert_int(int n);

#endif // logger_h
