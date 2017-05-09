class FullNameSplitter
  attr_reader :first_name

  def initialize(full_name)
    @full_name = full_name
  end

  def fathers_name
    "#{middle_name} #{last_name}"
  end

  def surname
    last_name
  end

  protected

  def first_name
    @full_name.split(" ")[1]
  end

  private

  def title
    @full_name.split(" ")[0]
  end

  def middle_name
    @full_name.split(" ")[2]
  end

  def last_name
    @full_name.split(" ")[3]
  end
end
