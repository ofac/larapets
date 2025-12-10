@extends('layouts.home')

@section('title', 'Welcome: Larapets 🐶')

@section('content')
    <section class="bg-[#0006] rounded-lg w-96 p-8 flex flex-col gap-2 items-center justify-center outline-2 outline-[#fff3]">
        <img src="{{ asset('images/logo.png') }}" width="260px" alt="Logo">
        <p class="text-white">
            <strong>Larapets</strong> connecting shelters with loving homes. Browse, match, 
            and adopt pets easily. Find your perfect furry friend today!
        </p>
        <div class="flex gap-2 mt-8 text-white">
            @guest()
            <a class="btn btn-outline w-[160px] hover:bg-[#fff6] hover:text-white" href="{{ url('login') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-6"" fill="currentColor" viewBox="0 0 256 256">
                        <path d="M208,80H176V56a48,48,0,0,0-96,0V80H48A16,16,0,0,0,32,96V208a16,16,0,0,0,16,16H208a16,16,0,0,0,16-16V96A16,16,0,0,0,208,80ZM96,56a32,32,0,0,1,64,0V80H96ZM208,208H48V96H208V208Z"></path>
                    </svg>
                    Login
            </a>
            <a class="btn btn-outline w-[160px] hover:bg-[#fff6] hover:text-white" href="{{ url('register') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-6" fill="currentColor" viewBox="0 0 256 256">
                        <path d="M256,136a8,8,0,0,1-8,8H232v16a8,8,0,0,1-16,0V144H200a8,8,0,0,1,0-16h16V112a8,8,0,0,1,16,0v16h16A8,8,0,0,1,256,136Zm-57.87,58.85a8,8,0,0,1-12.26,10.3C165.75,181.19,138.09,168,108,168s-57.75,13.19-77.87,37.15a8,8,0,0,1-12.25-10.3c14.94-17.78,33.52-30.41,54.17-37.17a68,68,0,1,1,71.9,0C164.6,164.44,183.18,177.07,198.13,194.85ZM108,152a52,52,0,1,0-52-52A52.06,52.06,0,0,0,108,152Z"></path>
                    </svg>
                    Register
            </a>
            @endguest
            @auth()
                <a class="btn btn-outline hover:bg-[#fff6] hover:text-white" href="{{ url('dashboard') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-6" fill="currentColor" viewBox="0 0 256 256">
                        <path d="M104,40H56A16,16,0,0,0,40,56v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V56A16,16,0,0,0,104,40Zm0,64H56V56h48v48Zm96-64H152a16,16,0,0,0-16,16v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V56A16,16,0,0,0,200,40Zm0,64H152V56h48v48Zm-96,32H56a16,16,0,0,0-16,16v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V152A16,16,0,0,0,104,136Zm0,64H56V152h48v48Zm96-64H152a16,16,0,0,0-16,16v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V152A16,16,0,0,0,200,136Zm0,64H152V152h48v48Z"></path>
                    </svg>
                    Dashboard
                </a>
            @endauth
        </div>
    </section>
@endsection