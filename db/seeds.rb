


# coding: utf-8

%w{
  basic resources resource_translations resource_data resource_docs projects organizations pages seriesdata featured_resources
}.each do |part|
  require File.expand_path(File.dirname(__FILE__))+"/seeds/#{part}.rb"
end



