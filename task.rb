class Task < Post
  def initialize
    super

    @due_date = Time.now # Дэдлайн нашей задачи
  end

  def read_from_console
    # todo
  end

  def to_strings
    # todo
  end
end