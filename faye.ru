require 'faye'
require 'faye/redis'

faye_server = Faye::RackAdapter.new(:mount => '/faye', 
                                    :timeout => 45,
                                    :ping => 5,
                                    :engine => { 
                                              :type => Faye::Redis,
                                              :host => 'localhost',
                                              :port => 6379})
run faye_server
