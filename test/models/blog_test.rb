require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  fixtures :blogs

  test "blog attributes must not be empty" do
    blog = Blog.new
    assert blog.invalid?
    assert blog.errors[:title].any?
    assert blog.errors[:description].any?
    assert blog.errors[:image].any?
  end

  def new_post(image_url)
    Blog.new(title: "My Book Title",
             description: "yyy",
             image: image_url)
  end
  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    ok.each do |image_url|
      assert new_post(image_url).valid?,
             "#{image_url} shouldn't be invalid"
    end
    bad.each do |image_url|
      assert new_post(image_url).invalid?,
             "#{image_url} shouldn't be valid"
    end
  end

  test "blog is not valid without a unique title" do
    blog = Blog.new(title:       blogs(:food).title,
                          description: "yyy",
                          image:   "fred.gif")
    assert blog.invalid?
    assert_equal ["has already been taken"],
                 blog.errors[:title]
  end
end
