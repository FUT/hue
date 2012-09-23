require 'i18n'

if (Rails.env.development? || Rails.env.test?) && ENV['SHOW_TR']
  module I18n
    class << self
      def translate_with_debug(*args)
        translation = translate_without_debug(*args)
        puts "[\e[32mTranslate\e[0m] #{args.inspect}\t [\e[31mResult\e[0m] #{translation}"
        translation
      end
      alias_method_chain :translate, :debug
    end
  end
end
