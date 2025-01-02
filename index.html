<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Тестовое задание</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script>
        function validate(event){
            event.preventDefault();
            const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+(\.(com|ru|org|net|gov|edu|mail))$/;
            const nameEl = document.getElementById("name-user")
            const emailEl = document.getElementById("email")
            const seminarEl = document.getElementById("choise-seminar")

            var errorsElements = document.getElementsByClassName('invalid-validation')

            for (let j = 0; j < errorsElements.length; j++) {
                errorsElements[j].classList.remove('invalid-validation');   
            }

            var errors = 0;
            var errorMessages = document.getElementsByClassName('error-message');
            for (var i = 0; i < errorMessages.length; i++) {
                errorMessages[i].innerText = '';
            }
            if (nameEl.value == "") {
                errors+=1
                document.getElementById("name-error").innerHTML = "Введите имя"
                nameEl.classList.add('invalid-validation');
            }
            if (emailEl.value == "") {
                errors+=1
                emailEl.classList.add('invalid-validation');
                document.getElementById("email-error").innerHTML = "Введите email"
            } 
            if (!emailPattern.test(emailEl.value.replace(' ', ''))){
                errors+=1
                emailEl.classList.add('invalid-validation');
                document.getElementById("email-error").innerHTML = "Введите корректный email, например: example@mail.com или example@mail.ru"
            }
            const btnSend = document.getElementById("button-send");
            const main_div = document.getElementById("maincontainer");
            

            if (errors == 0) {
                main_div.classList.add('anim-loaded');
                btnSend.innerHTML = "Отправка...";
                fetch('send.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: `name-user=${nameEl.value}&email=${emailEl.value.replace(' ', '')}&choise-seminar=${seminarEl.value}`
                }).then(responce => {
                    responce.json()
                    console.log(responce.status)
                    if (responce.status == 200){
                        btnSend.innerHTML = "Отправлено";
                        btnSend.classList.add('btn-inactive');
                        btnSend.classList.remove('btn-active');
                        btnSend.setAttribute('type', 'button');
                        console.log(btnSend);
                        document.getElementById("message-succes-send").innerHTML = "Ваша заявка успешно отправлена и находится в обработке. Ожидайте email с подтверждением бронирования.";
                    }
                }).catch(error=>{
                    console.log(error)
                }).finally(()=>{
                    main_div.classList.remove('anim-loaded');
                });
            } 
        }
    </script>
</head>
<body>
    <form id="form" method="post" action="send.php" onsubmit="validate(event)">
        <div id="maincontainer" class="maincontainer">
            <h1 class="margin-bottom-element info-text">Отправить заявку на участие в семинаре</h1>
            <div class="margin-bottom-element">
                <p class="info-text">Организаторы свяжутся с вами для подтверждения записи.</p>
                <p class="info-text">Участие в семинаре <u>бесплатное</u></p>
            </div>
            <div class="inputData margin-bottom-element">
                <p>Ваше имя:</p>
                <input id="name-user" name="name-user" class="input-element" placeholder="Иванов Алексей" autocomplete="name">
                <span id="name-error" class="error-message"></span>
            </div>
            <div class="inputData margin-bottom-element">
                <p>Контактный email:</p>
                <input id="email" name="email" class="input-element" placeholder="example@mail.com" autocomplete="email">
                <span id="email-error" class="error-message"></span>
            </div>
            <div class="inputData margin-bottom-element">
                <p>Интересующий семинар:</p>
                <select id="choise-seminar" name="choise-seminar" class="input-element" autocomplete="off">
                    <option>Маркетинг</option>
                    <option>Программирование</option>
                    <option>Искусственный интеллект</option>
                    <option>Дизайн</option>
                </select>
            </div>
            <div class="info-text-row margin-bottom-element">
                <div class="info-text-col">
                    <p class="info-text">
                        Все поля обязательны для заполнения
                    </p>
                    <p class="info-text">
                        Отправляя заявку, вы соглашаетесь с договором публичной оферты и политикой обработки данных
                    </p>
                </div>
                <button type="submit" id="button-send" class="button-send btn-active">Отправить</button>
            </div>
            <h5 id="message-succes-send" class="success-message"></h5>
            </div>
        </div>
    </form>
</body>
</html>
