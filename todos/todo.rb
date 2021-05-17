class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "【追加】#{task.info}"
  end

  def info
    if @tasks.any?
      puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
      @tasks.each do |task|
        puts task.info
      end
      puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
    else
      puts "【！】 タスクはありません"
    end
  end

  def delete(id:)
    task = @tasks.find {|task| task.id == id}
    if task
      @tasks.delete(task)
      puts "【削除】#{task.info}"
    else
      puts "【！】 該当idのタスクはありません。"
    end
  end
end
