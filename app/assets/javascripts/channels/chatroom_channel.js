const initChannel = () => {
  const div = document.getElementById("chat_lesson");
  if (div) {
    const id = div.dataset.lessonId;
    const currentId = div.dataset.currentId
    App[`lesson_${id}`] = App.cable.subscriptions.create(
      { channel: 'LessonsChannel', lesson_id: id },
      {
        received: (data) => {
          if (data.current_user_id != currentId) {
            console.log(data.message_partial);
            const messages = document.querySelector(".messages");
            messages.insertAdjacentHTML('beforeend', data.message_partial);
            const input = document.getElementById("message_content");
            input.value = "";
          }

          scrollLastMessageIntoView();
        }
      }
    )
  }
}

const scrollLastMessageIntoView = () => {
  const messages = document.querySelectorAll(".message");
  const lastMessage = messages[messages.length - 1];
  if (lastMessage !== undefined) {
    lastMessage.parentNode.scrollTop = lastMessage.offsetTop - lastMessage.parentNode.offsetTop;
    // lastMessage.scrollIntoView();
  }
}


export { initChannel, scrollLastMessageIntoView }
