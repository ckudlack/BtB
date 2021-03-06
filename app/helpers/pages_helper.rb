module PagesHelper

	def find_post_by_name(name)
		@posts = Post.all
		@posts.each do |post| 
			if name == post.title
				return post.content.html_safe
			end
		end
	end

	def find_snippet_by_name(name)
		@posts = Post.all
		@posts.each do |post|
			if name == post.title
				return post.snippet.body.html_safe
			end
		end
	end

end
