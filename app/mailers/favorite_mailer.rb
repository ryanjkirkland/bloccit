class FavoriteMailer < ApplicationMailer
  default from: "ryankirklandga@gmail.com"

  def new_comment(user, post, comment)
    headers["Message-ID"] = "<comments/#{comment.id}@lit-shelf-17597.herokuapp.com"
    headers["In-Reply-To"] = "<post/#{post.id}@lit-shelf-17597.herokuapp.com"
    headers["References"] = "<post/#{post.id}@lit-shelf-17597.herokuapp.com"

    @user = user
    @post = post
    @comment = comment

    mail(to: user.email, subject: "New comment on #{post.title}")
  end

  def new_post(post)
    headers["Message-ID"] = "<posts/#{post.id}@lit-shelf-17597.herokuapp.com"
    headers["In-Reply-To"] = "<post/#{post.id}@lit-shelf-17597.herokuapp.com"
    headers["References"] = "<post/#{post.id}@lit-shelf-17597.herokuapp.com"

    @post = post

    mail(to: post.user.email, subject: "You're now following, #{post.title}!")
  end
end
