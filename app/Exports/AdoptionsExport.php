<?php

namespace App\Exports;

use App\Models\Adoption;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\WithColumnWidths;
use Maatwebsite\Excel\Concerns\WithStyles;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet;

class AdoptionsExport implements FromView, WithColumnWidths, WithStyles
{
public function view(): View
{
    return view('adoptions.excel', [
        'adopts' => Adoption::all()
    ]);
}

public function columnWidths(): array
{
    return [
        'A' => 20,
        'B' => 20,  
        'C' => 20,            
        'D' => 20,            
        'E' => 20,     
        'F' => 20,            
        'G' => 20,            
        'H' => 20,            
        'I' => 20
    ];
}

public function styles(Worksheet $sheet)
{
    return [
        1 => ['font' => ['bold' => true, 'size' => 16]],
    ];
}
}
