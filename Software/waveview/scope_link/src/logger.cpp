//
//  logger.cpp
//
//  Created by Alex Vandenberg on 2020-10-11.
//  Copyright © 2019 EEVengers. All rights reserved.
//

#include "logger.hpp"

//namespace attrs   = boost::log::attributes;
namespace expr    = boost::log::expressions;
namespace logging = boost::log;

//Defines a global logger initialization routine
BOOST_LOG_GLOBAL_LOGGER_INIT(my_logger, logger_t)
{
    logger_t lg;

    logging::add_common_attributes();

#ifdef LOG_TO_FILE
    logging::add_file_log(
        boost::log::keywords::file_name = SYS_LOGFILE,
        boost::log::keywords::format = (
            expr::stream << expr::format_date_time<     boost::posix_time::ptime >("TimeStamp", "%Y-%m-%d %H:%M:%S")
            << " [" << expr::attr<     boost::log::trivial::severity_level >("Severity") << "]: "
            << expr::smessage
        )
    );
#endif

    logging::add_console_log(
        std::cout,
        boost::log::keywords::format = (
            expr::stream << expr::format_date_time<     boost::posix_time::ptime >("TimeStamp", "%Y-%m-%d %H:%M:%S")
            << " [" << expr::attr<     boost::log::trivial::severity_level >("Severity") << "]: "
            << expr::smessage
        )
    );

    logging::core::get()->set_filter
    (
        logging::trivial::severity >= logging::trivial::debug
    );

    return lg;
}

/*******************************************************************************
 * convert_int()
 *
 * converts an integer to a hex string.
 *
 * Arguments:
 *   int n - integer to convert.
 *
 * Return:
 *   string - integer n as an uppercase string.
 ******************************************************************************/
std::string convert_int(int n)
{
    std::stringstream ss;
    ss << std::uppercase << std::hex;
    ss << n;
    return ss.str();
}

