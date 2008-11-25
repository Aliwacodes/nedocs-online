# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  # Display any available flash messages (:error, :notice), and also accepts
  # @error and @notice (useful if the action simply falls through to a render
  # instead of redirecting, in which case a regular flash message would appear
  # one request too late).
  def flash_message(message = 'Please review the following messages:')
    output = ''
    if (flash[:error] || @error || '') != ''
      output << "<p>#{message}</p>"
      output << "<p class=\"error\">#{flash[:error] || @error}</p>"
    end
    if (flash[:notice] || @notice || '') != ''
      output << "<p class=\"notice\">#{flash[:notice] || @notice}</p>"
    end
    output
  end
  
  
end