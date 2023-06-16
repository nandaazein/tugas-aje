<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kuis</title>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500&display=swap" rel="stylesheet" />
    <style>
        html {
            box-sizing: border-box;
        }

        *,
        *:before,
        *:after {
            box-sizing: inherit;
        }

        html,
        body {
            overflow: hidden;
            position: relative;
            height: 100%;
        }

        body {
            background: #a8c0ff;
            font-family: 'Comfortaa', cursive;
            color: #fff;
            user-select: none;
            margin: 0;
            padding: 0;
            counter-reset: points;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        section {
            background: #a8c0ff;
            background: -webkit-linear-gradient(to right, #3f2b96, #a8c0ff);
            background: linear-gradient(to right, #3f2b96, #a8c0ff);
            padding-top: 80px;
            overflow-y: hidden;
        }

        main {
            background: rgba(217, 214, 228, 0.12);
            border-radius: 10px;
            padding: 5px 20px 50px;
            width: 95%;
            max-width: 500px;
            margin: 0 auto 214px;
        }

        .text-container {
            text-align: center;
        }

        .quiz-options {
            margin: 60px 0;
        }

        [type=radio] {
            border: 0;
            height: 0.0625rem;
            width: 0.0625rem;
            position: absolute;
        }

        label {
            display: flex;
            align-items: center;
            border-radius: 5px;
            background: rgba(255, 5, 5, 0.72);
            margin-bottom: 15px;
            padding: 6px 0;
            position: relative;
            width: 100%;
            color: #000;
        }

        label:hover .alphabet {
            background: #000;
            color: #fff;
        }

        label .alphabet {
            border-radius: 5px;
            border: solid 1px #000;
            padding: .4rem .5rem .4rem;
            width: 2.3rem;
            margin: 0 1.3rem 0 .7rem;
            display: flex;
            justify-content: center;
            color: #000;
        }

        label .icon {
            height: auto;
            position: absolute;
            left: 92%;
            top: 12px;
        }

        label .jfdedgwfzexf4hjin {
            width: 18px;
        }

        label .jdsjkefkefkefefexco {
            width: 22px;
        }

        .jshdgdgwgdwfdfwdwjfdjwwdwdco:checked+label {
            background: rgb(76, 245, 194);
            font-weight: bold;
            text-transform: uppercase;
            -webkit-text-stroke: .6px #fff;
        }

        .jshdgdgwgdwfdfwdwjfdjwwdwdco:checked+label .alphabet {
            background: #000000;
            color: #FFF;
        }

        .jshdgdgwgdwfdfwdwjfdjwwdwdin:checked+label {
            font-weight: bold;
            text-transform: uppercase;
            -webkit-text-stroke: .6px #fff;
        }

        .jshdgdgwgdwfdfwdwjfdjwwdwdin:checked+label .alphabet {
            background: #000;
            color: #fff;
        }

        .one-a:valid+label,
        .two-c:valid+label,
        .three-c:valid+label,
        .four-b:valid+label,
        .five-a:valid+label {
            animation: flash 0.6s infinite;
        }

        @keyframes flash {
            0% {
                background-color: #4cf5c2;
            }

            49% {
                background-color: #4cf5c2;
            }

            50% {
                background-color: #000;
            }

            99% {
                background-color: #000;
            }

            100% {
                background-color: #4cf5c2;
            }
        }

        input:invalid+label {
            background: #fff;
        }

        input:invalid+label:hover {
            background: linear-gradient(to right, #d8d9da 10%, #ffffff 80%);
        }

        input:valid+label {
            color: #fff;
            pointer-events: none
        }

        #btn {
            border: 1px solid #000;
            border-radius: 50px;
            background: rgb(247, 206, 206);
            color: #000;
            display: block;
            font-size: 1.1rem;
            font-weight: 600;
            width: 57%;
            margin: 0 auto;
            outline: none;
            padding: 11px 0;
            text-align: center;
            cursor: pointer;
            -webkit-tap-highlight-color: transparent;
        }

        #btn:hover {
            background: rgba(255, 255, 255, 0.671);
            color: rgba(0, 0, 0, 0.749);
            border: 1px solid #000;
        }

        form:invalid #btn {
            pointer-events: none;
            background: rgba(248, 214, 214, 0.767);
        }

        .btn:hover {
            background: #000;
            color: #fff;
        }

        .score-counter {
            border-radius: 8px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            width: 210px;
            height: 9%;
            background: rgba(0, 0, 0, 0.749);
            border: 4px solid #000;
            position: fixed;
            top: 5px;
            right: 10px;
            box-shadow: inset 2px -2px 9px #020202, inset -2px 2px 9px #d2d2d2;
        }

        .score-text {
            margin: 0 20px;
        }

        /* .score-counter::after {
    content:"/5";
} */

        .one-a:checked,
        .two-c:checked,
        .three-c:checked,
        .four-b:checked,
        .five-a:checked {
            counter-increment: points;
        }

        #game-over {
            background: linear-gradient(rgb(28, 22, 49), rgba(18, 18, 25, 0.9)), repeating-linear-gradient(0, transparent, transparent 2px, black 3px, black 3px);
            font-family: 'Bungee', cursive;
            /* position: absolute; */
            width: 100%;
            height: 100vh;
        }

        .game-over-content {
            display: grid;
            justify-items: center;
            width: 80%;
            margin: 0 auto;
            padding: 120px 0;
        }

        #game-over h1 {
            background-color: #3f2b96;
            -webkit-background-clip: text;
            color: transparent;
            background-size: contain;
            font-size: 5rem;
            line-height: 1.2;
            margin: 0;
            position: relative;
        }

        h1::before {
            content: attr(data-heading);
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            background: linear-gradient(45deg, rgba(255, 255, 255, 0) 45%, rgba(255, 255, 255, 0.8) 50%, rgba(255, 255, 255, 0) 55%, rgba(255, 255, 255, 0) 100%);
            -webkit-background-clip: text;
            color: transparent;
            mix-blend-mode: screen;
            animation: shine 1s infinite;
            background-size: 200%;
            text-shadow: 2px 2px 10px rgba(#000, 0.2), -2px 2px 10px rgba(#000, 0.2), -2px -2px 10px rgba(#000, 0.2);
        }

        @keyframes pulse {
            0% {
                opacity: 1;
            }

            49% {
                opacity: 9;
            }

            50% {
                opacity: .8;
            }

            99% {
                opacity: .5;
            }

            100% {
                opacity: .3;
            }
        }

        @keyframes shine {
            0% {
                background-position: -100%;
            }

            100% {
                background-position: 100%;
            }
        }

        .over-text-cont {
            text-align: center;
        }

        .over-text-cont h2 {
            font-family: 'Sirin Stencil', cursive;
        }

        /* .over-text-cont h2::after {
    content: counter(points) "0/50";
    margin-left: 15px;
} */

        #refresh {
            color: #fff;
            position: relative;
            height: 100vh;
        }

        .refresh-content {
            display: grid;
            font-size: 1.2rem;
            place-items: center;
            width: 70%;
            line-height: 2;
            margin: 0 auto;
            text-align: center;
        }

        .refresh-content svg {
            width: 50px;
            height: auto;
            animation: pulse 1s infinite;
        }


        /* MEDIA QUERY */

        @media (max-width: 420px) {
            body {
                font-size: .8rem;
            }

            main {
                width: 92%;
            }

            section {
                background: linear-gradient(to right, #3f2b96, #1f0961);
            }

            label {
                font-size: .71rem;
            }

            label .alphabet {
                margin: 0 .9rem 0 .7rem;
            }

            .jshdgdgwgdwfdfwdwjfdjwwdwdco:checked+label {
                -webkit-text-stroke: .1px #fff;
            }

            label .jdsjkefkefkefefexco {
                width: 16px;
            }

            label .jfdedgwfzexf4hjin {
                width: 14px;
            }

            #game-over h1 {
                font-size: 3rem;
            }

            .score-counter {
                width: 120px;
                height: 5%;
                font-size: .7rem;
            }

            .score-text {
                margin: 0 20px 0 0;
            }

            .over-text-cont h2 {
                margin-bottom: 40px;
            }

            .over-text-cont #btn {
                padding: 3px 0;
            }

            .refresh-content {
                width: 90%;
            }

            .refresh-content {
                display: grid;
                font-size: .8rem;
            }
        }

        @media (max-width: 325px) {

            label {
                font-size: .63rem;
            }

            label .alphabet {
                margin: 0 .55rem 0 .7rem;
            }

            label .jdsjkefkefkefefexco {
                width: 14px;
            }

            label .jfdedgwfzexf4hjin {
                width: 12px;
            }

        }
    </style>
</head>

<body>
    <!-- QUIZ ONE -->
    @foreach ($items as $key => $item)
        <section class="section-{{ $key + 1 }}" id="section-{{ $key + 1 }}"
            style="{{ $key > 0 ? 'display:none' : '' }}">
            <main>
                <div class="text-container" style="font-family: 'Rubik', sans-serif;">
                    <h3>Pure CSS Quiz</h3>
                    <p>QUESTION {{ $key + 1 }} OF {{ count($items) }}</p>
                    <p>{{ $item->soal }}</p>
                </div>
                <form style="font-family: 'Rubik', sans-serif;">
                    <div class="quiz-options">
                        <input type="radio" class="input-radio" id="one-a-{{ $key + 1 }}"
                            name="yes-{{ $key + 1 }}" value="{{ $item->option_a }}" required>
                        <label style="background-color: #a8a8a8" class="radio-label" for="one-a-{{ $key + 1 }}"
                            onclick="checkAnswer('{{ $item->option_a }}', 'one-a-{{ $key + 1 }}','{{ $item->Jawaban }}')">
                            <span class="alphabet">A</span> {{ $item->option_a }} <img class="icon">
                        </label>
                        <input type="radio" class="input-radio" id="one-b-{{ $key + 1 }}"
                            name="yes-{{ $key + 1 }}" value="{{ $item->option_b }}">
                        <label style="background-color: #a8a8a8" class="radio-label" for="one-b-{{ $key + 1 }}"
                            onclick="checkAnswer('{{ $item->option_b }}', 'one-b-{{ $key + 1 }}','{{ $item->Jawaban }}')">
                            <span class="alphabet">B</span> {{ $item->option_b }} <img class="icon">
                        </label>
                        <input type="radio" class="input-radio" id="one-c-{{ $key + 1 }}"
                            name="yes-{{ $key + 1 }}" value="{{ $item->option_c }}">
                        <label style="background-color: #a8a8a8" class="radio-label" for="one-c-{{ $key + 1 }}"
                            onclick="checkAnswer('{{ $item->option_c }}', 'one-c-{{ $key + 1 }}','{{ $item->Jawaban }}')">
                            <span class="alphabet">C</span> {{ $item->option_c }} <img class="icon">
                        </label>
                        <input type="radio" class="input-radio" id="one-d-{{ $key + 1 }}"
                            name="yes-{{ $key + 1 }}" value="{{ $item->option_d }}">
                        <label style="background-color: #a8a8a8" class="radio-label" for="one-d-{{ $key + 1 }}"
                            onclick="checkAnswer('{{ $item->option_d }}', 'one-d-{{ $key + 1 }}','{{ $item->Jawaban }}')">
                            <span class="alphabet">D</span> {{ $item->option_d }} <img class="icon">
                        </label>

                    </div>
                    @if ($key + 1 < count($items))
                        <a style="background-color: #a8a8a8" id="btn"
                            onclick="nextSection({{ $key + 1 }})">Next</a>
                    @else
                        <a style="background-color: #a8a8a8" id="btn"
                            onclick="window.location.href='#game-over'">Next</a>
                    @endif
                </form>
            </main>
        </section>
    @endforeach

    <div class="score-counter" style="font-family: 'Rubik', sans-serif;">
        <p class="score-text">CORRECT: <span id="score">0</span></p>
    </div>

    <!-- GAME OVER PAGE -->
    <section id="game-over">
        <div class="game-over-content">
            <div class="over-text-cont">
                <h1 data-heading="Game Over">Game Over</h1>
                <h2 style="font-family: 'Rubik', sans-serif;" id="total_skor">Total Score:</h2>

                <form style="margin-bottom: 10px" action="{{ route('store.leaderboard') }}" method="post"
                    enctype="multipart/form-data">
                    @csrf
                    <div class="">
                        <input type="text" class="form-control" name="nama" id="nama_user"
                            style="visibility: hidden" value="">
                    </div>
                    <div class="">
                        <input type="number" class="form-control" name="skor" id="skor_user"
                            style="visibility: hidden" value="">
                    </div>
                    <div class="about_section layout_padding">

                        <button id="btn" data-bs-toggle="modal" type="submit">
                            Masukan Skor ke Leaderboard
                        </button>
                </form>


                {{--  --}}
                <form action="{{ route('kuis.index') }}" method="get" style="display: inline">
                    <button id="btn" data-bs-toggle="modal">
                        Play Again
                    </button>
                </form>

                {{-- <a id="btn" type="submit" onclick="window.location.href='#refresh'">Play Again</a> --}}
            </div>
        </div>
    </section>

    <script>
        let jawaban_benar = 0;
        let skor = 0;


        function nextSection(currentIndex) {
            // Menyembunyikan bagian saat ini
            document.getElementById(`section-${currentIndex}`).style.display = 'none';

            // Menampilkan bagian berikutnya
            const nextIndex = currentIndex + 1;
            document.getElementById(`section-${nextIndex}`).style.display = 'block';
        }

        function checkAnswer(correctAnswer, selectedOption, Jawaban) {
            const label = document.querySelector(`label[for="${selectedOption}"]`);
            const radio = document.getElementById(selectedOption);

            if (Jawaban === correctAnswer) {
                label.style.backgroundColor = 'green';
                jawaban_benar++
                skor += 10;
            } else {
                label.style.backgroundColor = 'red';
            }

            document.getElementById('score').textContent = jawaban_benar;
            document.getElementById('total_skor').textContent = 'Total Skor : ' + skor;

            document.getElementById('nama_user').value = "<?php echo Auth::user()->name; ?>";
            document.getElementById('skor_user').value = skor;

        }
    </script>







    <!-- REFRESH PAGE SECTION -->
    <section id="refresh">
        <div class="refresh-content">
            <svg id="Capa_1" data-name="Capa 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 341.12 341.33">
                <defs>
                    <style>
                        .cls-1 {
                            fill: #fff;
                        }
                    </style>
                </defs>
                <title>multimedia2</title>
                <path class="cls-1"
                    d="M341.23,149.33V0L291.09,50.13A169.56,169.56,0,0,0,170.56,0C76.27,0,.11,76.37.11,170.67S76.27,341.33,170.56,341.33c79.47,0,146-54.4,164.91-128H291.09A127.94,127.94,0,1,1,170.56,42.67c35.31,0,67,14.72,90.13,37.86l-68.8,68.8Z"
                    transform="translate(-0.11)" />
            </svg>
            <h2>Refresh/Reload this page to continue</h2>
        </div>
    </section>
</body>

</html>
