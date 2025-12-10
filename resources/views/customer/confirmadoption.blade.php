@extends('layouts.dashboard')

@section('title', 'Confirm Adoption: Larapets 🐶')

@section('content')
<h1 class="text-4xl text-white flex gap-2 items-center justify-center pb-4 border-b-2 border-neutral-50 mb-10">
        <svg xmlns="http://www.w3.org/2000/svg" class="size-12" fill="currentColor" viewBox="0 0 256 256">
            <path d="M173.66,98.34a8,8,0,0,1,0,11.32l-56,56a8,8,0,0,1-11.32,0l-24-24a8,8,0,0,1,11.32-11.32L112,148.69l50.34-50.35A8,8,0,0,1,173.66,98.34ZM232,128A104,104,0,1,1,128,24,104.11,104.11,0,0,1,232,128Zm-16,0a88,88,0,1,0-88,88A88.1,88.1,0,0,0,216,128Z"></path>
        </svg>
        Confirm Adoption
    </h1>
    {{-- Breadcrumbs --}}
    <div class="breadcrumbs text-sm text-white mb-6">
        <ul>
            <li>
                <a href="{{ url('dashboard') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-4" fill="currentColor" viewBox="0 0 256 256">
                        <path d="M104,40H56A16,16,0,0,0,40,56v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V56A16,16,0,0,0,104,40Zm0,64H56V56h48v48Zm96-64H152a16,16,0,0,0-16,16v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V56A16,16,0,0,0,200,40Zm0,64H152V56h48v48Zm-96,32H56a16,16,0,0,0-16,16v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V152A16,16,0,0,0,104,136Zm0,64H56V152h48v48Zm96-64H152a16,16,0,0,0-16,16v48a16,16,0,0,0,16,16h48a16,16,0,0,0,16-16V152A16,16,0,0,0,200,136Zm0,64H152V152h48v48Z"></path>
                    </svg>
                    Dashboard
                </a>
                </li>
                <li>
                <a href="{{ url('makeadoption') }}">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-4" fill="currentColor" viewBox="0 0 256 256">
                        <path d="M230.33,141.06a24.34,24.34,0,0,0-18.61-4.77C230.5,117.33,240,98.48,240,80c0-26.47-21.29-48-47.46-48A47.58,47.58,0,0,0,156,48.75,47.58,47.58,0,0,0,119.46,32C93.29,32,72,53.53,72,80c0,11,3.24,21.69,10.06,33a31.87,31.87,0,0,0-14.75,8.4L44.69,144H16A16,16,0,0,0,0,160v40a16,16,0,0,0,16,16H120a7.93,7.93,0,0,0,1.94-.24l64-16a6.94,6.94,0,0,0,1.19-.4L226,182.82l.44-.2a24.6,24.6,0,0,0,3.93-41.56ZM119.46,48A31.15,31.15,0,0,1,148.6,67a8,8,0,0,0,14.8,0,31.15,31.15,0,0,1,29.14-19C209.59,48,224,62.65,224,80c0,19.51-15.79,41.58-45.66,63.9l-11.09,2.55A28,28,0,0,0,140,112H100.68C92.05,100.36,88,90.12,88,80,88,62.65,102.41,48,119.46,48ZM16,160H40v40H16Zm203.43,8.21-38,16.18L119,200H56V155.31l22.63-22.62A15.86,15.86,0,0,1,89.94,128H140a12,12,0,0,1,0,24H112a8,8,0,0,0,0,16h32a8.32,8.32,0,0,0,1.79-.2l67-15.41.31-.08a8.6,8.6,0,0,1,6.3,15.9Z"></path>
                    </svg>
                    Make Adoption
                </a>
                </li>
                <li>
                <span class="inline-flex items-center gap-2">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-4" fill="currentColor" viewBox="0 0 256 256">
                        <path d="M173.66,98.34a8,8,0,0,1,0,11.32l-56,56a8,8,0,0,1-11.32,0l-24-24a8,8,0,0,1,11.32-11.32L112,148.69l50.34-50.35A8,8,0,0,1,173.66,98.34ZM232,128A104,104,0,1,1,128,24,104.11,104.11,0,0,1,232,128Zm-16,0a88,88,0,1,0-88,88A88.1,88.1,0,0,0,216,128Z"></path>
                    </svg>
                    Confirm Adoption
                </span>
                </li>
            </ul>
        </div>
        {{-- Card --}}
        <div class="bg-[#0009] p-10 rounded-sm">
            {{-- Image --}}
            <div class="avatar flex flex-col gap-1 items-center justify-center cursor-pointer hover:scale-105 transition ease-in">
                <div class="mask mask-squircle bg-white w-60">
                    <img src="{{ asset('images/'.$pet->image) }}" />
                </div>
            </div>
            {{-- Data --}}
            <div class="flex gap-2 flex-col md:flex-row">
                <ul class="list bg-[#0006] mt-4 text-white rounded-box shadow-md w-64">
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Name:</span> <span>{{ $pet->name }}</span>
                    </li> 
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Kind:</span> <span>
                            @if($pet->kind == 'Dog')
                                <div class="badge badge-outline badge-info">Dog</div>
                            @elseif ($pet->kind == 'Cat')
                                <div class="badge badge-outline badge-secondary">Cat</div>
                            @elseif ($pet->kind == 'Pig')
                                <div class="badge badge-outline badge-success">Pig</div>
                            @elseif ($pet->kind == 'Bird')
                                <div class="badge badge-outline badge-warning">Bird</div>
                            @endif
                        </span>
                    </li> 
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Breed:</span> <span>{{ $pet->breed }}</span>
                    </li> 
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Weight:</span> <span>{{ $pet->weight }} lbs</span>
                    </li> 
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Age:</span> <span>{{ $pet->age }} years old</span>
                    </li> 
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Location:</span> 
                        <span>{{ $pet->location }}</span>
                    </li>
                </ul>
                <ul class="list bg-[#0006] mt-4 text-white rounded-box shadow-md w-64">
                    <li class="list-row flex gap-0 flex-col">
                        <span class="text-[#fff9] font-semibold">Description:</span> 
                        <br>{{ $pet->description }}</br>
                    </li> 
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Active:</span> 
                        <span>
                            @if($pet->active == 1)
                                <div class="badge badge-outline badge-success">Yes</div>
                            @else
                                <div class="badge badge-outline badge-error">No</div>
                            @endif
                        </span>
                    </li> 
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Status:</span> 
                        <span>
                            @if($pet->status == 0)
                                <div class="badge badge-outline badge-success">Avaliable</div>
                            @else
                                <div class="badge badge-outline badge-error">Adopted</div>
                            @endif
                        </span>
                    </li>
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Created At:</span> <span>{{ $pet->created_at->diffForHumans() }}</span>
                    </li> 
                    <li class="list-row">
                        <span class="text-[#fff9] font-semibold">Updated At:</span> <span>{{ $pet->updated_at->diffForHumans() }}</span>
                    </li> 
                </ul>
            </div>
            <form action="{{ url('makeadoption/'.$pet->id) }}" method="post" class="mt-2">
                @csrf
                <button class="btn btn-success w-full p-6">
                    <svg xmlns="http://www.w3.org/2000/svg" class="size-6" fill="currentColor" viewBox="0 0 256 256">
                        <path d="M173.66,98.34a8,8,0,0,1,0,11.32l-56,56a8,8,0,0,1-11.32,0l-24-24a8,8,0,0,1,11.32-11.32L112,148.69l50.34-50.35A8,8,0,0,1,173.66,98.34ZM232,128A104,104,0,1,1,128,24,104.11,104.11,0,0,1,232,128Zm-16,0a88,88,0,1,0-88,88A88.1,88.1,0,0,0,216,128Z"></path>
                    </svg>
                    Confirm Adoption
                </button>
            </form>

        </div>
@endsection