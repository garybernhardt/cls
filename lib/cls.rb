module Cls
  VERSION = "0.0.1"
  def self.included(base)
    base.send :extend, ClassMethods
  end

  module ClassMethods
    def takes(*args)
      define_initialize(args)
    end

    def define_initialize(args)
      assignments = args.map { |a| "@#{a} = #{a}" }.join("\n")
      self.class_eval %{
        def initialize(#{args.join(", ")})
          #{assignments}
        end
      }
    end

    def let(name, &block)
      define_method(name, &block)
    end
  end
end

