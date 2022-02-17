require 'application_system_test_case'


# body = 'This is my test post'
class PostTest < ApplicationSystemTestCase
  test 'creating new post' do
    visit new_post_url

    assert_selector 'h1', text: 'New Post'

    body = 'This is my test post'
    fill_in 'post[body]', with: body
    click_button 'Create Post'

    assert_text body
  end
end