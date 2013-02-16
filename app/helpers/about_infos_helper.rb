module AboutInfosHelper
  
  def get_header_snippet
    @about_infos.first
  end
  
  def break_snippets_into_two_columns
    left_hand_info = []
  	@about_infos.each_with_index { |info, index| left_hand_info << info if index.odd? }
  	right_hand_info = @about_infos - left_hand_info
    right_hand_info.shift # Remove the first element, we show the first snippet as the header
  	[left_hand_info, right_hand_info]
  end
  
end