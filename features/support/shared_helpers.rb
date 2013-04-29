module SharedHelpers
  def select_second_option(id)
    second_option_xpath = "//*[@id='#{id}']/option[2]"
    second_option = find(:xpath, second_option_xpath).text
    select(second_option, :from => id)
  end
end

World(SharedHelpers)