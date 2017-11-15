class Post
  # Метод post_types класса Post, возвращает всех известных ему детей класса
  # Post в виде массива классов.
  #
  # Класс, объявленный с self. перед название — это не
  # метод экземпляра класса, а метод самого класса (их ещё часто называют
  # статические методы).
  def self.post_types
    [Memo, Link, Task] # Возвращает массив всех дочерних классов
  end

  def self.create(type_index)
    post_types[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = []
  end

  def read_from_console
    # Этот метод должен быть реализован у каждого ребенка
  end

  def to_strings
    # Этот метод должен быть реализован у каждого ребенк
  end

  def save
    file = File.new(file_path, 'w:UTF-8') # открываем файл на запись

    to_strings.each { |string| file.puts(string) }

    file.close
  end

  def file_path
    current_path = File.dirname(__FILE__)

    file_time = @created_at.strftime('%Y-%m-%d_%H-%M-%S')

    "#{current_path}/#{self.class.name}_#{file_time}.txt"
  end
end