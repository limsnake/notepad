require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now # Дэдлайн нашей задачи
  end

  def read_from_console
    puts "Что надо сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? Укажите дату в формате ДД.ММ.ГГГГ, например 12.05.2003"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    dedline = "Крайний срок: #{@due_date}"
    [dedline, @text, time_string]
  end
end