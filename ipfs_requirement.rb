# frozen_string_literal: true

require "requirement"

class IPFSRequirement < Requirement
  include Comparable

  fatal true

  cask "ipfs"

  env { ENV.ipfs }

  def min_version
    "0.4.22"
  end

  def message
    "IPFS is required to install this formula, either the cask #{min_version} or from source"
  end

  def <=>(other)
    return unless other.is_a? IPFSRequirement

    0
  end

  def inspect
    "#<#{self.class.name}: #{tags.inspect}>"
  end
end
