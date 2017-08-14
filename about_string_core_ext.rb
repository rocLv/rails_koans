#!/usr/bin/env ruby
# -*- ruby -*-

require File.expand_path(File.dirname(__FILE__) + '/neo')
require 'active_support'
require 'active_support/core_ext'

class AbountStringCoreExt < Neo::Koan
  def test_html_safe
    assert_equal __, "".html_safe?
  end
end
