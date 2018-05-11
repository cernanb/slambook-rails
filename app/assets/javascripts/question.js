document.addEventListener('DOMContentLoaded', bindListeners, false)

function bindListeners() {
  const questionButton = document.querySelector('#add-question')
  const questions = document.getElementById('questions')
  let questionIndex = 1
  questionButton.addEventListener('click', e => {
    e.preventDefault()
    var newEl = document.createElement('input')
    newEl.setAttribute('type', 'text')
    newEl.setAttribute('name', `book[questions_attributes][${questionIndex}][content]`)
    questionIndex += 1
    // newEl.appendChild(document.createTextNode('Hello World!'))
    questions.appendChild(newEl)
  })
}
