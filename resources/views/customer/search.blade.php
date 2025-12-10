@forelse ($pets as $pet)
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
@empty
<tr class="bg-[#0009]">
    <td colspan="7" class="text-center text-md my-8">
        No results founded!
    </td>
</tr>
@endforelse