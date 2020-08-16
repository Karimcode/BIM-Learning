module MessageHelper
  def message_class_names(is_author, is_teacher)
    classes = ["message"]
    classes << 'right' if is_author
    classes << 'bold' if is_teacher
    classes.join(' ')
  end
end
