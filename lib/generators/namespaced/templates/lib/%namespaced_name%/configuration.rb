<%= wrap_in_modules_with_new_lines <<-rb.strip_heredoc
  module Configuration
    def configure
      yield self
    end
    # Example: mattr_accessor(:my_variable) { :default_value }
  end
rb
%>