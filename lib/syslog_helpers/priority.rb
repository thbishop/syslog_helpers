module SyslogHelpers
  class Priority

    @@priorities = (0..191).to_a

    def self.severities
      { 0 => 'emerg',
        1 => 'alert',
        2 => 'crit',
        3 => 'err',
        4 => 'warning',
        5 => 'notice',
        6 => 'info',
        7 => 'debug' }
    end

    def self.facilities
      { 0 => 'kern',
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

    def self.data_for_priority(priority)
      { 'facility' => facility_for_priority(priority), 'severity' => severity_for_priority(priority) }
    end

    def self.priority_map
      data = {}

      @@priorities.sort.each do |priority|
        data[priority] = data_for_priority(priority)
      end

      data
    end

    def self.severity_for_priority(priority)
      severities[(priority - ((priority / 8) * 8))]
    end

    def self.facility_for_priority(priority)
      facilities[(priority / 8)]
    end
  end

end
