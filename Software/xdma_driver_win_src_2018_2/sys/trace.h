#pragma once

// If software tracing is defined in the sources file..
// 
// During the compilation, WPP scans the source files for TraceEvents() calls and builds a .tmh 
// file which stores a unique data GUID for each message, the text resource string for each message, 
// and the data types of the variables passed in for each message.  This file is automatically 
// generated and used during post-processing.
//
// WPP_DEFINE_CONTROL_GUID specifies the GUID used for this driver.
// WPP_DEFINE_BIT allows setting debug bit masks to selectively print.
// The names defined in the WPP_DEFINE_BIT call define the actual names
// that are used to control the level of tracing for the control guid
// specified.
//
// Name of the logger is XdmaDrv and the guid is
//   {7dd02079-3c3f-4dda-9384-c210c7cc490a}
//   (0x7dd02079, 0x3c3f, 0x4dda, 0x93, 0x84, 0xc2, 0x10, 0xc7, 0xcc, 0x49, 0x0a);

#define WPP_CHECK_FOR_NULL_STRING  //to prevent exceptions due to NULL strings

#define WPP_CONTROL_GUIDS \
    WPP_DEFINE_CONTROL_GUID(XdmaDrvTraceGuid,(7dd02079,3c3f,42c5,9384,c210c7cc490a), \
        WPP_DEFINE_BIT(DBG_INIT)        /* bit  0 = 0x00000001 */ \
        WPP_DEFINE_BIT(DBG_IRQ)         /* bit  1 = 0x00000002 */ \
        WPP_DEFINE_BIT(DBG_DMA)         /* bit  2 = 0x00000004 */ \
        WPP_DEFINE_BIT(DBG_DESC)        /* bit  3 = 0x00000008 */ \
        WPP_DEFINE_BIT(DBG_USER)        /* bit  4 = 0x00000010 */ \
        WPP_DEFINE_BIT(DBG_IO)          /* bit  5 = 0x00000014 */ \
        )

#define WPP_FLAG_LEVEL_LOGGER(flag, level)                                  \
    WPP_LEVEL_LOGGER(flag)

#define WPP_FLAG_LEVEL_ENABLED(flag, level)                                 \
    (WPP_LEVEL_ENABLED(flag) &&                                             \
     WPP_CONTROL(WPP_BIT_ ## flag).Level >= level)

#define WPP_LEVEL_FLAGS_LOGGER(lvl,flags) \
           WPP_LEVEL_LOGGER(flags)

#define WPP_LEVEL_FLAGS_ENABLED(lvl, flags) \
           (WPP_LEVEL_ENABLED(flags) && WPP_CONTROL(WPP_BIT_ ## flags).Level >= lvl)

//           
// WPP orders static parameters before dynamic parameters. To support the Trace function
// defined below which sets FLAGS=DBG_GENERIC, a custom macro must be defined to
// reorder the arguments to what the .tpl configuration file expects.
//
#define WPP_RECORDER_FLAGS_LEVEL_ARGS(flags, lvl) WPP_RECORDER_LEVEL_FLAGS_ARGS(lvl, flags)
#define WPP_RECORDER_FLAGS_LEVEL_FILTER(flags, lvl) WPP_RECORDER_LEVEL_FLAGS_FILTER(lvl, flags)

//
// This comment block is scanned by the trace preprocessor to define our
// Trace functions.
//
// begin_wpp config
// FUNC TraceVerbose{LEVEL=TRACE_LEVEL_VERBOSE}(FLAGS, MSG, ...);
// FUNC TraceInfo{LEVEL=TRACE_LEVEL_INFORMATION}(FLAGS, MSG, ...);
// FUNC TraceWarning{LEVEL=TRACE_LEVEL_WARNING}(FLAGS, MSG, ...);
// FUNC TraceError{LEVEL=TRACE_LEVEL_ERROR}(FLAGS, MSG, ...);
// FUNC TraceEvents(LEVEL, FLAGS, MSG, ...);
// end_wpp
//

// WPP tracing is disabled in release configuration. so stub out definitions and functions
#ifndef DBG
#define WPP_INIT_TRACING(...)  (__VA_ARGS__)
#define WPP_CLEANUP(...)       (__VA_ARGS__)
#define DBG_GENERIC         0
#define DBG_INIT            0
#define DBG_IO              0
#define DBG_IRQ             0
#define DBG_DPC             0
#define DBG_DMA             0
#define DBG_DESC            0
#define DBG_USER            0
#define TraceVerbose(...)   (__VA_ARGS__)
#define TraceInfo(...)      (__VA_ARGS__)
#define TraceWarning(...)   (__VA_ARGS__)
#define TraceError(...)     (__VA_ARGS__)
#define TraceEvents(...)    (__VA_ARGS__)
#endif 