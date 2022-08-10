<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Продажа новых автомобилей {{$cars[0]->brand ?? ''}} {{$cars[0]->model ?? ''}} в Санкт-Петербурге </title>
</head>

<body>
    <h1>Продажа новых автомобилей {{$cars[0]->brand ?? ''}} {{$cars[0]->model ?? ''}} в Санкт-Петербурге </h1>
    <div class="filter">
        <label for="brands">Марка</label>
        <select name="brands" id="brands">
            <option value="Lexus">Lexus</option>
            <option value="Toyota">Toyota</option>
        </select>
        <label for="model">Модель</label>
        <select name="model" id="model">
            <option value="all">-</option>
            <option value="ES">ES</option>
            <option value="GX">GX</option>
            <option value="Camry">Camry</option>
            <option value="Corolla">Corolla</option>
        </select>
        <button id="search-btn">Search</button>
        <label for="engine">Тип Двигателя</label>
        <select name="engine" id="engine">
            <option value="all">-</option>
            <option value="Patrol">Patrol</option>
            <option value="Diesel">Diesel</option>
            <option value="Hybrid">Hybrid</option>

        </select>
        <label for="wheel">Привод</label>
        <select name="" id="wheel">
            <option value="all">-</option>
            <option value="All_wheel">All wheel</option>
            <option value="Front_wheel">Front wheel</option>
        </select>
        <button id="apply-btn">apply</button>
    </div>
    <div class="cars">
        @if(isset($cars))
        @foreach($cars as $car)
        brand: {{$car -> brand}} |model: {{$car->model}} |engine:{{$car->enginetype}} |drive:{{$car->drive}}<br>
        @endforeach
        @endif
    </div>
    <script>
        const searchBtn = document.querySelector('#search-btn');
        const aplBtn = document.querySelector('#apply-btn');
        const brand = document.querySelector('#brands');
        const model = document.querySelector('#model');
        const engine = document.querySelector('#engine');
        const wheel = document.querySelector('#wheel');
        searchBtn.addEventListener('click', function() {
            window.location.pathname = "catalog/" + `${brand.options[brand.selectedIndex].value}/` + model.options[model.selectedIndex].value + '/';
        });
        aplBtn.addEventListener('click', function() {
            if (window.location.pathname.indexOf('engine') != -1) {
                window.history.pushState(null, null, window.location.pathname.slice(0, window.location.pathname.indexOf('engine')));
            }
            window.history.pushState(null, null, `engine=${engine.options[engine.selectedIndex].value}/wheel=${wheel.options[wheel.selectedIndex].value}`)
            $.ajax({
                url: window.location.href,
                method: 'get',
                dataType: 'json',
                success: (data) => {
                    console.log(data);
                    $('.cars').empty();
                    data.forEach(element => {
                        $('.cars').append(`brand: ${element.brand}| model: ${element.model}| engine: ${element.enginetype}| drive: ${element.drive} <br>`)
                    });
                }
            })
        })
    </script>

    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>

</html>