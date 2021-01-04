//
//  exception.hpp
//
//  Created by Alex Vandenberg on 2021-01-03.
//  Copyright © 2020 EEVengers. All rights reserved.
//

#ifndef exception_h
#define exception_h

#include <exception>
#include <string>

class EVException: public std::exception
{
    std::string m_msg;

public:
    virtual const char * what() const throw();

    EVException(int errorCode, const char* subSystem);
};

#endif
