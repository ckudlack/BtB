module PagesHelper
	def get_post()
		@post = Post.find(1)
	end
end
