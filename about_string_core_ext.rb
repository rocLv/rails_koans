#!/usr/bin/env ruby
# -*- ruby -*-

require File.expand_path(File.dirname(__FILE__) + '/neo')
require 'active_support'
require 'active_support/core_ext'

class AbountStringCoreExt < Neo::Koan

  def test_html_safe
    s = "<script>...</script>"
    assert_equal __, s.html_safe?

    s.html_safe
    assert_equal __, s.html_safe?
  end

  def test_raw
    s = "<script>...</script>"
    assert_equal __, raw(s)
  end

  def test_remove
    s = "Hello World"
    assert_equal __, "World"
  end

  def test_squish
    s = " \n  foo\n\r \t bar \n"
    assert_equal __, "foo bar"
  end

  def test_truncate
    s = "Oh dear! Oh dear! I shall be late!"
    assert_equal __, "Oh dean! Oh dear..."
    assert_equal __, "Oh dear! Oh &hellip;"
    assert_equal __, "Oh dear! Oh..."
  end

  def test_trucate_words
    s = "Oh dear! Oh dear! I shall be late!"
    assert_equal __, "Oh dear! Oh dear!..."
    assert_equal __, "Oh dear! Oh dear!&hellip;"
    assert_equal __, "Oh dear! Oh dear! I shall be late..."
  end

  def test_inquiry
    assert_equal __, "production".inquiry.production?
  end

  def test_starts_with?
    assert_equal __, "foo".starts_with?("f")
  end

  def test_ends_with?
    assert_equal __, "foo".ends_with?("o")
  end

  def test_strip_heredoc
    s = <<-USAGE
    This command does such and such.

    Supported options are:
      -h         This message
      ...
    USAGE

    striped_s = "This command does such and such.\n\nSupported options are:\n  -h         This message\n  ...\n"

    assert_equal __, striped_s
  end

  def test_indent
    s = <<-EOS
        def some_method
          some_code
        end
        EOS
    indented_s = "       def some_method\n         some_code\n       end\n"
    s1 = "  foo"

    assert_equal __, indented_s
    assert_equal __, "    foo"
    assert_equal __, "foo".indent(2, "\t")
    assert_equal __, "foo\n\nbar".indent(2, nil, true)
  end

  def test_at
    assert_equal __, "hello".at(0)
    assert_equal __, "hello".at(-1)
    assert_equal __, "hello".at(10)
  end

  def test_from
    assert_equal __, "hello".from(0)
    assert_equal __, "hello".from(-2)
  end

  def test_to
    assert_equal __, "hello".to(0)
    assert_equal __, "hello".to(-2)
    assert_equal __, "hello".to(10)
  end

  def test_first
    assert_equal __, "hello".to(0)
    assert_equal __, "hello".to(-2)
    assert_equal __, "hello".to(10)
  end

  def test_last
    assert_equal __, "hello".from(0)
    assert_equal __, "hello".from(-2)
  end

  def test_pluralize
    assert_equal __, "table".plurallize(0)
    assert_equal __, "table".plurallize(1)
    assert_equal __, "table".plurallize(2)
  end

  def test_singularize
    assert_equal __, "tables".singularize
  end

  def test_camelize
    assert_equal __, "tables".camelize
    assert_equal __, "visual_effect".camelize(:lower)
  end

  def test_camelcase
    assert_equal __, "tables".camelcase
    assert_equal __, "visual_effect".camelcase(:lower)
  end

  def test_underscore
    assert_equal __, "AdminUser".underscore
    assert_equal __, "Product".underscore
    assert_equal __, "Backoffice::Session".underscore
  end

  def test_titleize
    assert_equal __, "alice in wonderland".titleize
    assert_equal __, "fermat's enigma".titleize
  end

  def test_dashrize
    assert_equal __, "name".dasherize
    assert_equal __, "contact_data".dasherize
  end

  def test_demodulize
    assert_equal __, "Product".demodulize
    assert_equal __, "Backoffice::UsersController".demodulize
  end

  def test_deconstantize
    assert_equal __, "Product".deconstantize
    assert_equal __, "Backoffice::UsersController".deconstantize
    assert_equal __, "Admin::Hotel::ReservationUtils".deconstantize
  end

  def test_parameterize
    assert_equal __, "Jogn Smish".parameterize
    assert_equal __, "Kurt Gödel".parameterize
    assert_equal __, "Jogn Smish".parameterize(preserve_case: true)
    assert_equal __, "Kurt Gödel".parameterize(preserve_case: true)
  end

  def test_tableize
    assert_equal __, "Person".tableize
    assert_equal __, "Invoice".tableize
    assert_equal __, "InvoiceLize".tableize
  end

  def test_classify
    assert_equal __, "people".classify
    assert_equal __, "invoices".classify
    assert_equal __, "invoice_lize".classify
    assert_equal __, "highrise_production.companies".classify
  end

  module M
    X = 1
  end

  def test_constantize
    assert_equal __, "Integer".constantize
    assert_equal __, "M::X".constantize
  end

  def test_humanize
    assert_equal __, "name".humanize
    assert_equal __, "author_id".humanize
    assert_equal __, "author_id".humanize(capitalize: false)
    assert_equal __, "comments_count".humanize
    assert_equal __, "_id".humanize
  end

  def test_foreign_key
    assert_equal __, "User".foreign_key
    assert_equal __, "InvoiceLine".foreign_key
    assert_equal __, "Admin::Session".foreign_key
  end

  def test_conversions
    assert_equal __, "2010-07-27".to_date
    assert_equal __, "2010-07-27 23:37:00".to_time
    assert_equal __, "2010-07-27 23:37:00".to_datetime
    assert_equal __, "2010-07-27 23:42:00".to_time(:utc)
    assert_equal __, "2010-07-27 23:42:00".to_time(:local)
  end
end
