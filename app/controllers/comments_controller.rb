class CommentsController < ApplicationController
  http_basic_authenticate_with name: "login", password: "secret", only: :destroy
  def create
    @livre = Livre.find(params[:livre_id])
    @comment = @livre.comments.create(comment_params)
    redirect_to livre_path(@livre)
  end

  def destroy
    @livre = Livre.find(params[:livre_id])
    @comment = @livre.comments.find(params[:id])
    @comment.destroy
    redirect_to livre_path(@livre)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
