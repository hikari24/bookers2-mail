class PostCommentsController < ApplicationController
	def create
		@book = Book.find(params[:book_id])
		@post_comment = PostComment.new(post_comment_params)
		@post_comment.user_id = current_user.id
		@post_comment.book_id = @book.id
		@post_comment.save
		# redirect_to book_path(book)
		render 'index'
	end

	def destroy
		#bookの情報を取得
		@book = Book.find(params[:book_id])
		#削除対象のコメントを探して取得
		@post_comment = current_user.post_comments.find_by(book_id: @book.id)
		@post_comment.destroy
		# redirect_to book_path(book)
		render 'index'
	end

	private
	def post_comment_params
		params.require(:post_comment).permit(:comment)
	end
end