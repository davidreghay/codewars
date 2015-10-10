def get_hashtags(post)
  post.scan(/^#[A-Za-z]+(?![^\s]+)|(?<=[\s#])#[A-Za-z]+(?![^\s]+)/)
      .map { |el| el.slice(1..-1) }
end
