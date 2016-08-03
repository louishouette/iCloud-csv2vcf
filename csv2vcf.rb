#!/usr/bin/env ruby

require 'csv'
require 'time'

aa = CSV.read(ARGV[0])

aa.each do |arr|
   timearr = Time.now.to_s.split(" ")
   timenow = timearr[0] + "T" + timearr[1] + "Z"
   open('all.vcf','a+:UTF-8') do |file|
      file.write "BEGIN:VCARD\n"
      file.write "VERSION:3.0\n"
      file.write "PRODID:-//Apple Inc.//iOS 8.3//EN\n"
      file.write "N:" + arr[0].gsub(arr[0][0],'') + ";" + arr[0][0] + ";;;\n"
      file.write "FN:" + arr[0] + "\n"
      file.write "ORG:" + arr[1] + "\n"
      file.write "TEL;type=CELL;type=VOICE;type=pref:+86 " + arr[2] + "\n"
      file.write "TEL;type=WORK;type=VOICE:" + arr[3] + "\n"
      file.write "TEL;type=WORK;type=VOICE:" + arr[4] + "\n" if arr[4]
      file.write "REV:" + timenow + "\n"
      file.write "END:VCARD\n"
  end
end
