class Link < Post
  def initialize
    # Вызываем конструктор родителя
    super
    # Создаем специфичную для ссылки переменную экземпляра @url — адрес, куда
    # будет вести ссылка.
    url = ''
  end

  def read_from_console
    puts "Адрес ссылки:"
    @url = STDIN.gets.chomp

    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end

  # Метод to_string для ссылки возвращает массив из трех строк: адрес ссылки,
  # описание ссылки и строка с датой создания ссылки.
  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    [@url, @text, time_string]
  end
end