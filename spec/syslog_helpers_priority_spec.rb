require File.expand_path('../spec_helper.rb', __FILE__)

describe SyslogHelpers::Priority do
  describe "severities" do
    it "should return all of the severities" do
      SyslogHelpers::Priority.severities.should == { 0 => 'emerg',
                                               1 => 'alert',
                                               2 => 'crit',
                                               3 => 'err',
                                               4 => 'warning',
                                               5 => 'notice',
                                               6 => 'info',
                                               7 => 'debug' }

    end
  end

  describe "severity_for_priority" do
    it "should return the severity for the priority" do
      SyslogHelpers::Priority.severity_for_priority(150).should == 'info'
    end
  end

  describe "facility_for_priority" do
    it "should return the facility for the priority" do
      SyslogHelpers::Priority.facility_for_priority(150).should == 'local2'
    end
  end

  describe "data_for_priority" do
    it "should return the data for the priority" do
      SyslogHelpers::Priority.data_for_priority(150).should == { 'facility' => 'local2', 'severity' => 'info' }
    end
  end

  describe "facilities" do
    it "should return all of the facilities" do
      SyslogHelpers::Priority.facilities.should == { 0 => 'kern',
                                               1 => 'user',
                                               2 => 'mail',
                                               3 => 'daemon',
                                               4 => 'auth',
                                               5 => 'syslog',
                                               6 => 'lpr',
                                               7 => 'news',
                                               8 => 'uucp',
                                               9 => 'cron',
                                               10 => 'authpriv',
                                               11 => 'ftp',
                                               12 => 'ntp',
                                               13 => 'audit',
                                               14 => 'alert',
                                               15 => 'clock',
                                               16 => 'local0',
                                               17 => 'local1',
                                               18 => 'local2',
                                               19 => 'local3',
                                               20 => 'local4',
                                               21 => 'local5',
                                               22 => 'local6',
                                               23 => 'local7' }

    end
  end

  describe "priority_map" do
    it "should return the priority map data" do
      priority_map_data = { 0 => { 'facility' => 'kern', 'severity' => 'emerg' }, 1 => { 'facility' => 'kern', 'severity' => 'alert' },
                            2 => { 'facility' => 'kern', 'severity' => 'crit' }, 3 => { 'facility' => 'kern', 'severity' => 'err' },
                            4 => { 'facility' => 'kern', 'severity' => 'warning' }, 5 => { 'facility' => 'kern', 'severity' => 'notice' },
                            6 => { 'facility' => 'kern', 'severity' => 'info' }, 7 => { 'facility' => 'kern', 'severity' => 'debug' },
                            8 => { 'facility' => 'user', 'severity' => 'emerg' }, 9 => { 'facility' => 'user', 'severity' => 'alert' },
                            10 => { 'facility' => 'user', 'severity' => 'crit' }, 11 => { 'facility' => 'user', 'severity' => 'err' },
                            12 => { 'facility' => 'user', 'severity' => 'warning' }, 13 => { 'facility' => 'user', 'severity' => 'notice' },
                            14 => { 'facility' => 'user', 'severity' => 'info' }, 15 => { 'facility' => 'user', 'severity' => 'debug' },
                            16 => { 'facility' => 'mail', 'severity' => 'emerg' }, 17 => { 'facility' => 'mail', 'severity' => 'alert' },
                            18 => { 'facility' => 'mail', 'severity' => 'crit' }, 19 => { 'facility' => 'mail', 'severity' => 'err' },
                            20 => { 'facility' => 'mail', 'severity' => 'warning' }, 21 => { 'facility' => 'mail', 'severity' => 'notice' },
                            22 => { 'facility' => 'mail', 'severity' => 'info' }, 23 => { 'facility' => 'mail', 'severity' => 'debug' },
                            24 => { 'facility' => 'daemon', 'severity' => 'emerg' }, 25 => { 'facility' => 'daemon', 'severity' => 'alert' },
                            26 => { 'facility' => 'daemon', 'severity' => 'crit' }, 27 => { 'facility' => 'daemon', 'severity' => 'err' },
                            28 => { 'facility' => 'daemon', 'severity' => 'warning' }, 29 => { 'facility' => 'daemon', 'severity' => 'notice' },
                            30 => { 'facility' => 'daemon', 'severity' => 'info' }, 31 => { 'facility' => 'daemon', 'severity' => 'debug' },
                            32 => { 'facility' => 'auth', 'severity' => 'emerg' }, 33 => { 'facility' => 'auth', 'severity' => 'alert' },
                            34 => { 'facility' => 'auth', 'severity' => 'crit' }, 35 => { 'facility' => 'auth', 'severity' => 'err' },
                            36 => { 'facility' => 'auth', 'severity' => 'warning' }, 37 => { 'facility' => 'auth', 'severity' => 'notice' },
                            38 => { 'facility' => 'auth', 'severity' => 'info' }, 39 => { 'facility' => 'auth', 'severity' => 'debug' },
                            40 => { 'facility' => 'syslog', 'severity' => 'emerg' }, 41 => { 'facility' => 'syslog', 'severity' => 'alert' },
                            42 => { 'facility' => 'syslog', 'severity' => 'crit' }, 43 => { 'facility' => 'syslog', 'severity' => 'err' },
                            44 => { 'facility' => 'syslog', 'severity' => 'warning' }, 45 => { 'facility' => 'syslog', 'severity' => 'notice' },
                            46 => { 'facility' => 'syslog', 'severity' => 'info' }, 47 => { 'facility' => 'syslog', 'severity' => 'debug' },
                            48 => { 'facility' => 'lpr', 'severity' => 'emerg' }, 49 => { 'facility' => 'lpr', 'severity' => 'alert' },
                            50 => { 'facility' => 'lpr', 'severity' => 'crit' }, 51 => { 'facility' => 'lpr', 'severity' => 'err' },
                            52 => { 'facility' => 'lpr', 'severity' => 'warning' }, 53 => { 'facility' => 'lpr', 'severity' => 'notice' },
                            54 => { 'facility' => 'lpr', 'severity' => 'info' }, 55 => { 'facility' => 'lpr', 'severity' => 'debug' },
                            56 => { 'facility' => 'news', 'severity' => 'emerg' }, 57 => { 'facility' => 'news', 'severity' => 'alert' },
                            58 => { 'facility' => 'news', 'severity' => 'crit' }, 59 => { 'facility' => 'news', 'severity' => 'err' },
                            60 => { 'facility' => 'news', 'severity' => 'warning' }, 61 => { 'facility' => 'news', 'severity' => 'notice' },
                            62 => { 'facility' => 'news', 'severity' => 'info' }, 63 => { 'facility' => 'news', 'severity' => 'debug' },
                            64 => { 'facility' => 'uucp', 'severity' => 'emerg' }, 65 => { 'facility' => 'uucp', 'severity' => 'alert' },
                            66 => { 'facility' => 'uucp', 'severity' => 'crit' }, 67 => { 'facility' => 'uucp', 'severity' => 'err' },
                            68 => { 'facility' => 'uucp', 'severity' => 'warning' }, 69 => { 'facility' => 'uucp', 'severity' => 'notice' },
                            70 => { 'facility' => 'uucp', 'severity' => 'info' }, 71 => { 'facility' => 'uucp', 'severity' => 'debug' },
                            72 => { 'facility' => 'cron', 'severity' => 'emerg' }, 73 => { 'facility' => 'cron', 'severity' => 'alert' },
                            74 => { 'facility' => 'cron', 'severity' => 'crit' }, 75 => { 'facility' => 'cron', 'severity' => 'err' },
                            76 => { 'facility' => 'cron', 'severity' => 'warning' }, 77 => { 'facility' => 'cron', 'severity' => 'notice' },
                            78 => { 'facility' => 'cron', 'severity' => 'info' }, 79 => { 'facility' => 'cron', 'severity' => 'debug' },
                            80 => { 'facility' => 'authpriv', 'severity' => 'emerg' }, 81 => { 'facility' => 'authpriv', 'severity' => 'alert' },
                            82 => { 'facility' => 'authpriv', 'severity' => 'crit' }, 83 => { 'facility' => 'authpriv', 'severity' => 'err' },
                            84 => { 'facility' => 'authpriv', 'severity' => 'warning' }, 85 => { 'facility' => 'authpriv', 'severity' => 'notice' },
                            86 => { 'facility' => 'authpriv', 'severity' => 'info' }, 87 => { 'facility' => 'authpriv', 'severity' => 'debug' },
                            88 => { 'facility' => 'ftp', 'severity' => 'emerg' }, 89 => { 'facility' => 'ftp', 'severity' => 'alert' },
                            90 => { 'facility' => 'ftp', 'severity' => 'crit' }, 91 => { 'facility' => 'ftp', 'severity' => 'err' },
                            92 => { 'facility' => 'ftp', 'severity' => 'warning' }, 93 => { 'facility' => 'ftp', 'severity' => 'notice' },
                            94 => { 'facility' => 'ftp', 'severity' => 'info' }, 95 => { 'facility' => 'ftp', 'severity' => 'debug' },
                            96 => { 'facility' => 'ntp', 'severity' => 'emerg' }, 97 => { 'facility' => 'ntp', 'severity' => 'alert' },
                            98 => { 'facility' => 'ntp', 'severity' => 'crit' }, 99 => { 'facility' => 'ntp', 'severity' => 'err' },
                            100 => { 'facility' => 'ntp', 'severity' => 'warning' }, 101 => { 'facility' => 'ntp', 'severity' => 'notice' },
                            102 => { 'facility' => 'ntp', 'severity' => 'info' }, 103 => { 'facility' => 'ntp', 'severity' => 'debug' },
                            104 => { 'facility' => 'audit', 'severity' => 'emerg' }, 105 => { 'facility' => 'audit', 'severity' => 'alert' },
                            106 => { 'facility' => 'audit', 'severity' => 'crit' }, 107 => { 'facility' => 'audit', 'severity' => 'err' },
                            108 => { 'facility' => 'audit', 'severity' => 'warning' }, 109 => { 'facility' => 'audit', 'severity' => 'notice' },
                            110 => { 'facility' => 'audit', 'severity' => 'info' }, 111 => { 'facility' => 'audit', 'severity' => 'debug' },
                            112 => { 'facility' => 'alert', 'severity' => 'emerg' }, 113 => { 'facility' => 'alert', 'severity' => 'alert' },
                            114 => { 'facility' => 'alert', 'severity' => 'crit' }, 115 => { 'facility' => 'alert', 'severity' => 'err' },
                            116 => { 'facility' => 'alert', 'severity' => 'warning' }, 117 => { 'facility' => 'alert', 'severity' => 'notice' },
                            118 => { 'facility' => 'alert', 'severity' => 'info' }, 119 => { 'facility' => 'alert', 'severity' => 'debug' },
                            120 => { 'facility' => 'clock', 'severity' => 'emerg' }, 121 => { 'facility' => 'clock', 'severity' => 'alert' },
                            122 => { 'facility' => 'clock', 'severity' => 'crit' }, 123 => { 'facility' => 'clock', 'severity' => 'err' },
                            124 => { 'facility' => 'clock', 'severity' => 'warning' }, 125 => { 'facility' => 'clock', 'severity' => 'notice' },
                            126 => { 'facility' => 'clock', 'severity' => 'info' }, 127 => { 'facility' => 'clock', 'severity' => 'debug' },
                            128 => { 'facility' => 'local0', 'severity' => 'emerg' }, 129 => { 'facility' => 'local0', 'severity' => 'alert' },
                            130 => { 'facility' => 'local0', 'severity' => 'crit' }, 131 => { 'facility' => 'local0', 'severity' => 'err' },
                            132 => { 'facility' => 'local0', 'severity' => 'warning' }, 133 => { 'facility' => 'local0', 'severity' => 'notice' },
                            134 => { 'facility' => 'local0', 'severity' => 'info' }, 135 => { 'facility' => 'local0', 'severity' => 'debug' },
                            136 => { 'facility' => 'local1', 'severity' => 'emerg' }, 137 => { 'facility' => 'local1', 'severity' => 'alert' },
                            138 => { 'facility' => 'local1', 'severity' => 'crit' }, 139 => { 'facility' => 'local1', 'severity' => 'err' },
                            140 => { 'facility' => 'local1', 'severity' => 'warning' }, 141 => { 'facility' => 'local1', 'severity' => 'notice' },
                            142 => { 'facility' => 'local1', 'severity' => 'info' }, 143 => { 'facility' => 'local1', 'severity' => 'debug' },
                            144 => { 'facility' => 'local2', 'severity' => 'emerg' }, 145 => { 'facility' => 'local2', 'severity' => 'alert' },
                            146 => { 'facility' => 'local2', 'severity' => 'crit' }, 147 => { 'facility' => 'local2', 'severity' => 'err' },
                            148 => { 'facility' => 'local2', 'severity' => 'warning' }, 149 => { 'facility' => 'local2', 'severity' => 'notice' },
                            150 => { 'facility' => 'local2', 'severity' => 'info' }, 151 => { 'facility' => 'local2', 'severity' => 'debug' },
                            152 => { 'facility' => 'local3', 'severity' => 'emerg' }, 153 => { 'facility' => 'local3', 'severity' => 'alert' },
                            154 => { 'facility' => 'local3', 'severity' => 'crit' }, 155 => { 'facility' => 'local3', 'severity' => 'err' },
                            156 => { 'facility' => 'local3', 'severity' => 'warning' }, 157 => { 'facility' => 'local3', 'severity' => 'notice' },
                            158 => { 'facility' => 'local3', 'severity' => 'info' }, 159 => { 'facility' => 'local3', 'severity' => 'debug' },
                            160 => { 'facility' => 'local4', 'severity' => 'emerg' }, 161 => { 'facility' => 'local4', 'severity' => 'alert' },
                            162 => { 'facility' => 'local4', 'severity' => 'crit' }, 163 => { 'facility' => 'local4', 'severity' => 'err' },
                            164 => { 'facility' => 'local4', 'severity' => 'warning' }, 165 => { 'facility' => 'local4', 'severity' => 'notice' },
                            166 => { 'facility' => 'local4', 'severity' => 'info' }, 167 => { 'facility' => 'local4', 'severity' => 'debug' },
                            168 => { 'facility' => 'local5', 'severity' => 'emerg' }, 169 => { 'facility' => 'local5', 'severity' => 'alert' },
                            170 => { 'facility' => 'local5', 'severity' => 'crit' }, 171 => { 'facility' => 'local5', 'severity' => 'err' },
                            172 => { 'facility' => 'local5', 'severity' => 'warning' }, 173 => { 'facility' => 'local5', 'severity' => 'notice' },
                            174 => { 'facility' => 'local5', 'severity' => 'info' }, 175 => { 'facility' => 'local5', 'severity' => 'debug' },
                            176 => { 'facility' => 'local6', 'severity' => 'emerg' }, 177 => { 'facility' => 'local6', 'severity' => 'alert' },
                            178 => { 'facility' => 'local6', 'severity' => 'crit' }, 179 => { 'facility' => 'local6', 'severity' => 'err' },
                            180 => { 'facility' => 'local6', 'severity' => 'warning' }, 181 => { 'facility' => 'local6', 'severity' => 'notice' },
                            182 => { 'facility' => 'local6', 'severity' => 'info' }, 183 => { 'facility' => 'local6', 'severity' => 'debug' },
                            184 => { 'facility' => 'local7', 'severity' => 'emerg' }, 185 => { 'facility' => 'local7', 'severity' => 'alert' },
                            186 => { 'facility' => 'local7', 'severity' => 'crit' }, 187 => { 'facility' => 'local7', 'severity' => 'err' },
                            188 => { 'facility' => 'local7', 'severity' => 'warning' }, 189 => { 'facility' => 'local7', 'severity' => 'notice' },
                            190 => { 'facility' => 'local7', 'severity' => 'info' }, 191 => { 'facility' => 'local7', 'severity' => 'debug' } 
      }

      SyslogHelpers::Priority.priority_map.should == priority_map_data
    end
  end

end
