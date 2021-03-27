enum CMD {
  //Data commands
  CMD_GetData1 = 0x01,
  CMD_GetData2 = 0x02,
  CMD_GetData3 = 0x03,
  CMD_GetData4 = 0x04,
  CMD_GetMin = 0x05,
  CMD_GetMax = 0x06,

  //Demo commands
  CMD_SetFile = 0x11,
  CMD_RampDemo = 0x1F,

  //Get Config commands
  CMD_GetWindowSize = 0x21,
  CMD_GetCh = 0x22,
  CMD_GetLevel = 0x23,
  CMD_GetTriggerCh = 0x24,
  CMD_GetEdgeType = 0x25,

  //Set Config commands
  CMD_SetWindowSize = 0x31,
  CMD_SetCh = 0x32,
  CMD_SetLevel = 0x33,
  CMD_SetTriggerCh = 0x34,
  CMD_SetEdgeType = 0x35,
  CMD_SetBandwidth = 0x36,
  CMD_SetVerticalScaling = 0x37,
  CMD_SetVerticalOffset = 0x38,
  CMD_SetHorizontalOffset = 0x39,
  CMD_SetCoupling = 0x3A,
  CMD_SetMath = 0x3F
}

export default CMD;