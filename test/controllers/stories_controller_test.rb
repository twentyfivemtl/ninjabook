# require 'test_helper'

class StoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stories_url
    assert_response :success
  end

  test "rejects when missing story attribute" do
    assert_no_difference "Story.count" do
      post stories_path, params: {
        story: { name: 'story without a link' }
          }
    end
  end

  test "show story" do
    get story_path(stories(:one))
    assert_response :success
    assert response.body.include?(stories(:one).name)
  end

  test "show story vote elements" do
    get story_path(stories(:one))
    assert_select 'h2 span#vote_score'
    assert_select 'ul#vote_history li', count: 2
    assert_select 'div#vote_form form'
  end

end
