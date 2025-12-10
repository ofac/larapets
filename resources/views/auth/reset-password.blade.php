@extends('layouts.home')

@section('title', 'Password Reset: Larapets 🐶')

@section('content')
    <section class="bg-[#0006] text-white rounded-lg w-4/12 p-8 flex flex-col gap-2 items-center justify-center outline-2 outline-[#fff3]">
        <h1 class="flex gap-4 justify-center items-center text-4xl pb-4 border-b-2 border-[#fff9] w-full">
            <svg xmlns="http://www.w3.org/2000/svg" class="size-12"" fill="currentColor" viewBox="0 0 256 256">
                <path d="M48,56V200a8,8,0,0,1-16,0V56a8,8,0,0,1,16,0Zm92,54.5L120,117V96a8,8,0,0,0-16,0v21L84,110.5a8,8,0,0,0-5,15.22l20,6.49-12.34,17a8,8,0,1,0,12.94,9.4l12.34-17,12.34,17a8,8,0,1,0,12.94-9.4l-12.34-17,20-6.49A8,8,0,0,0,140,110.5ZM246,115.64A8,8,0,0,0,236,110.5L216,117V96a8,8,0,0,0-16,0v21l-20-6.49a8,8,0,0,0-4.95,15.22l20,6.49-12.34,17a8,8,0,1,0,12.94,9.4l12.34-17,12.34,17a8,8,0,1,0,12.94-9.4l-12.34-17,20-6.49A8,8,0,0,0,246,115.64Z"></path>
            </svg>
            Password Reset
        </h1>
        <div class="card w-full max-w-sm">
            <form method="POST" action="{{ route('password.store') }}" class="card-body">
                @csrf
                <input type="hidden" name="token" value="{{ $request->route('token') }}">

                <label class="label text-white">Email:</label>
                <input type="text" class="input bg-[#0009] outline-0" name="email" placeholder="Email" value="{{ old('email') }}">
                @error('email')
                    <small class="badge badge-error w-full -mt-1 text-xs py-4">{{ $message }}</small>
                @enderror

                {{-- Password --}}
                <label class="label text-white">Password:</label>
                <input type="password" class="input bg-[#0009] outline-0" name="password" placeholder="Secret">
                @error('password')
                    <small class="badge badge-error w-full -mt-1 text-xs py-3">{{ $message }}</small>
                @enderror
                {{-- Password Confirmation --}}
                <label class="label text-white">Password Confirmation:</label>
                <input type="password" class="input bg-[#0009] outline-0" name="password_confirmation" placeholder="Secret">

                <button class="btn btn-outline hover:bg-[#fff6] hover:text-white mt-3">Reset Password</button>
            </form>
        </div>
    </section>
@endsection