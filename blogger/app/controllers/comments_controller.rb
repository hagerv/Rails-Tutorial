class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article.id]

    @comment.save

    redirect_to article_path(@comment.artcile)
  end

  def comment_params
    params.require(:comment).permit(:auther_name, :body)
  end

end
