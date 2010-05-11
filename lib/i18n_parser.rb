# I18nParser
module I18nParser
  module ClassMethods
    def parse_i18n(string, format=:default)
      format = I18n.t('date.formats.%s' % format)
      strptime(string, format)
    end
  end
  
  module InstanceMethods
    
  end
  
  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end