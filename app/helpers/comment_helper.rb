module CommentHelper
  def who_i_am(user_id)
    if User.find_by(id: session[:user_id]).id == user_id
      puts "1111111111111111111111111111111111111111111111111ZZZZZZ"
      return true
    end
    puts "333333333333333333333333333333333333"
    return false
  end
end
