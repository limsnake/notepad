class Post
  def initialize
    @created_at = Time.now
    @text = nil
  end

  def read_from_console
    # todo
  end

  # Метод должен возвращать содержимое
  # объекта в виде массива строк
  def to_strings
    # todo
  end

  def save
    file = File.new(file_path, "w:UTF-8")

    for item in to_strings do
      file.puts(item)
    end

    file.close
  end

  # Путь к файлу, куда записывать содержимое объекта
  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime('#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt')
    return current_path + "/" + file_name

  end
end