//
//  exception.cpp
//
//  Created by Alex Vandenberg on 2021-01-03.
//  Copyright © 2021 EEVengers. All rights reserved.
//

#include "exception.hpp"

EVException::EVException(int errorCode, const char* subSystem)
    : m_msg(std::string("Exception with error code - ")
            + std::to_string(errorCode)
            + std::string(" - from SubSystem: ")
            + std::string(subSystem)
            )
{}

const char * EVException::what() const throw()
{
    return m_msg.c_str();
}
