class File
  attr_accessor :name, :byte_content
  attr_reader :format

  def initialize(name)
    @name = name
    @format = set_format
  end

  alias_method :read,  :byte_content
  alias_method :write, :byte_content=

  def copy(target_file_name)
    target_file = self.class.new(target_file_name)
    target_file.write(read)

    target_file
  end

  def to_s
    "#{name}.#{format}"
  end
end

class MarkdownFile < File
  def set_format
    :md
  end
end

class VectorGraphicsFile < File
  def set_format
    :svg
  end
end

class MP3File < File
  def set_format
    :mp3
  end
end

# Test

blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
blog_post.write('Content will be added soon!'.bytes)

copy_of_blog_post = blog_post.copy('Same_Adventures_in_OOP_Land')

puts copy_of_blog_post.is_a? MarkdownFile     # true
puts copy_of_blog_post.read == blog_post.read # true

puts blog_post