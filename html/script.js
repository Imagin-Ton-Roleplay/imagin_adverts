const $notification = $("#notification")
const $message = $("#output")

function hideNotification() {
    $notification.hide()
}

function showNotification(message) {
  $notification.show();
  document.getElementById('output').innerHTML = message
  setTimeout(hideNotification, 30000)
}

window.addEventListener('message', (event) => {
  showNotification(event.data);
});

window.onload = function () {
  hideNotification()
}
 