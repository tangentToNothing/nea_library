


# coding: utf-8

%w{
  basic resources_2001_3000 resource_translations resource_data resource_docs projects organizations pages seriesdata
}.each do |part|
  require File.expand_path(File.dirname(__FILE__))+"/seeds/#{part}.rb"
end



