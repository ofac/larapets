@extends('layouts.dashboard')

@section('title', 'Make Adoption: Larapets 🐶')

@section('content')
    <h1 class="text-4xl text-white flex gap-2 items-center justify-center pb-4 border-b-2 border-neutral-50 mb-10">
        <svg xmlns="http://www.w3.org/2000/svg" class="size-12" fill="currentColor" viewBox="0 0 256 256">
            <path d="M230.33,141.06a24.34,24.34,0,0,0-18.61-4.77C230.5,117.33,240,98.48,240,80c0-26.47-21.29-48-47.46-48A47.58,47.58,0,0,0,156,48.75,47.58,47.58,0,0,0,119.46,32C93.29,32,72,53.53,72,80c0,11,3.24,21.69,10.06,33a31.87,31.87,0,0,0-14.75,8.4L44.69,144H16A16,16,0,0,0,0,160v40a16,16,0,0,0,16,16H120a7.93,7.93,0,0,0,1.94-.24l64-16a6.94,6.94,0,0,0,1.19-.4L226,182.82l.44-.2a24.6,24.6,0,0,0,3.93-41.56ZM119.46,48A31.15,31.15,0,0,1,148.6,67a8,8,0,0,0,14.8,0,31.15,31.15,0,0,1,29.14-19C209.59,48,224,62.65,224,80c0,19.51-15.79,41.58-45.66,63.9l-11.09,2.55A28,28,0,0,0,140,112H100.68C92.05,100.36,88,90.12,88,80,88,62.65,102.41,48,119.46,48ZM16,160H40v40H16Zm203.43,8.21-38,16.18L119,200H56V155.31l22.63-22.62A15.86,15.86,0,0,1,89.94,128H140a12,12,0,0,1,0,24H112a8,8,0,0,0,0,16h32a8.32,8.32,0,0,0,1.79-.2l67-15.41.31-.08a8.6,8.6,0,0,1,6.3,15.9Z"></path>
        </svg>
        Make Adoption
    </h1>
    {{-- Search --}}
    <label class="input text-white bg-[#0009] outline-none mb-10">
        <svg class="h-[1em] opacity-50" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
            <g
            stroke-linejoin="round"
            stroke-linecap="round"
            stroke-width="2.5"
            fill="none"
            stroke="currentColor"
            >
            <circle cx="11" cy="11" r="8"></circle>
            <path d="m21 21-4.3-4.3"></path>
            </g>
        </svg>
        <input type="search" placeholder="Search..." name="qsearch" id="qsearch" />
    </label>

    <div class="overflow-x-auto rounded-box text-white bg-[#0009]">
        <table class="table">
            <!-- head -->
            <thead>
            <tr class="bg-black text-white">
                <th class="hidden md:table-cell">Id</th>
                <th>Image</th>
                <th>Name</th>
                <th>Kind</th>
                <th class="hidden md:table-cell">Breed</th>
                <th class="hidden md:table-cell">Status</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody class="datalist">
                @foreach ($pets as $pet)
                    <tr class="@if($pet->id % 2 == 0) bg-[#0006] @endif hover:bg-gradient-to-r from-[#fff3] to-[#fff1] transition ease-in-out duration-150">
                        <td class="hidden md:table-cell">{{ $pet->id }}</td>
                        <td>
                            <div class="avatar">
                                <div class="mask mask-squircle bg-white w-16">
                                    <img src="{{ asset('images/'.$pet->image) }}" />
                                </div>
                            </div>
                        </td>
                        <td>{{ $pet->name }}</td>
                        <td>
                            @if($pet->kind == 'Dog')
                                <div class="badge badge-outline badge-info">Dog</div>
                            @elseif ($pet->kind == 'Cat')
                                <div class="badge badge-outline badge-secondary">Cat</div>
                            @elseif ($pet->kind == 'Pig')
                                <div class="badge badge-outline badge-success">Pig</div>
                            @elseif ($pet->kind == 'Bird')
                                <div class="badge badge-outline badge-warning">Bird</div>
                            @endif
                        </td>
                        <td class="hidden md:table-cell">{{ $pet->breed }}</td>
                        <td class="hidden md:table-cell">
                           @if($pet->status == 0)
                                <div class="badge badge-outline badge-success">Avaliable</div>
                            @else
                                <div class="badge badge-outline badge-error">Adopted</div>
                            @endif
                        </td>
                        <td>
                            <a class="btn btn-outline btn-xs" href="{{ url('makeadoption/'.$pet->id) }}">
                                <svg xmlns="http://www.w3.org/2000/svg" class="size-4" fill="currentColor" viewBox="0 0 256 256">
                                    <path d="M178,40c-20.65,0-38.73,8.88-50,23.89C116.73,48.88,98.65,40,78,40a62.07,62.07,0,0,0-62,62c0,70,103.79,126.66,108.21,129a8,8,0,0,0,7.58,0C136.21,228.66,240,172,240,102A62.07,62.07,0,0,0,178,40ZM128,214.8C109.74,204.16,32,155.69,32,102A46.06,46.06,0,0,1,78,56c19.45,0,35.78,10.36,42.6,27a8,8,0,0,0,14.8,0c6.82-16.67,23.15-27,42.6-27a46.06,46.06,0,0,1,46,46C224,155.61,146.24,204.15,128,214.8Z"></path>
                                </svg>
                            </a>
                        </td>
                    </tr>      
                @endforeach
                <tr class="bg-[#0009]">
                    <td colspan="7">{{ $pets->links('layouts.pagination') }}</td>
                </tr>
            </tbody>
        </table>
    </div>

    {{-- Modal --}}
    <dialog id="modal_message" class="modal">
        <div class="modal-box">
            <h3 class="text-lg font-bold mb-4">
                Congratulations!
            </h3>
            <div role="alert" class="alert alert-success">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 shrink-0 stroke-current" fill="none" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
                <span>{{ session('message') }}</span>
            </div>
        </div>
        <form method="dialog" class="modal-backdrop">
            <button>close</button>
        </form>
    </dialog>
    <dialog id="modal_delete" class="modal">
        <div class="modal-box">
            <h3 class="text-lg font-bold mb-4">
                Are you sure?
            </h3>
            <div role="alert" class="alert alert-error alert-soft">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6 shrink-0 stroke-current" fill="none" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
                </svg>
                <span>You want to delete: <strong class="name"></strong></span>
            </div>
            <div class="flex gap-2 mt-4">
                <button class="btn btn-default btn-outline btn-sm btn-confirm">Confirm</button>
                <form method="dialog">
                    <button class="btn btn-default btn-outline btn-sm">Cancel</button>
                </form>
            </div>
        </div>
        <form method="dialog" class="modal-backdrop">
            <button>cancel</button>
        </form>
    </dialog>
@endsection

@section('js')
    <script>
        $(document).ready(function () {
            // Modal - - - - - - - - - - - - - - - 
            const modal_message = document.getElementById('modal_message')
            @if(session('message'))
                modal_message.showModal()
            @endif
            // Search - - - - - - - - - - - - - - - -
            function debounce(func, wait) {
                let timeout
                return function executedFunction(...args) {
                    const later = () => {
                        clearTimeout(timeout)
                        func(...args)
                    };
                    clearTimeout(timeout)
                    timeout = setTimeout(later, wait)
                }
            }
            const search = debounce(function(query) {
                
                $token = $('input[name=_token]').val()
                
                $.post("search/makeadoption", {'q': query, '_token': $token},
                    function (data) {
                        $('.datalist').html(data).hide().fadeIn(1000)
                    }
                )
            }, 500)
            $('body').on('input', '#qsearch', function(event) {
                event.preventDefault()
                const query = $(this).val()
                
                $('.datalist').html(`<tr>
                                        <td colspan="7" class="text-center py-18">
                                            <span class="loading loading-spinner loading-xl"></span>
                                        </td>
                                    </tr>`)
                if(query != '') {
                    search(query)
                } else {
                    setTimeout(() => {
                        window.location.replace('makeadoption')
                    }, 500)
                }
            })
        })
    </script>
@endsection