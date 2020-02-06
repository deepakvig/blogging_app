class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]
  before_action :set_comment_post, only: [:create, :destroy]
  before_action :set_comment_user, only: [:create]

  # POST /comments
  # POST /comments.json
  def create
    @comment = @post.comments.build(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to [@post, @comment], notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: [@post, @comment] }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @post, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_comment_post
      @post = Post.find(params[:post_id])
    end

    def set_comment_user
      params[:comment][:user_id] = current_user.id.to_s
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:post_id, :body, :user_id)
    end
end
