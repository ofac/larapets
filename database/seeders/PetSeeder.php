<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Pet;

class PetSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $pet = new Pet;
        $pet->name       = 'Firulais';
        $pet->kind        = 'Dog';
        $pet->weight      = 7.6;
        $pet->age         = 2;
        $pet->breed       = 'French Bulldog';
        $pet->location    = 'Paris';
        $pet->description = 'Black dog, so charming, lovely';
        $pet->save();

        $pet = new Pet;
        $pet->name       = 'Killer';
        $pet->kind        = 'Dog';
        $pet->weight      = 18;
        $pet->age         = 6;
        $pet->breed       = 'Cane Corso';
        $pet->location    = 'Milan';
        $pet->description = 'Explosive & Hungry, be carefully with it, Danger';
        $pet->save();

        $pet = new Pet;
        $pet->name       = 'Michi';
        $pet->kind        = 'Cat';
        $pet->weight      = 1.8;
        $pet->age         = 3;
        $pet->breed       = 'Persa';
        $pet->location    = 'Abu Dhabi';
        $pet->description = 'Its a good girl, only chicken food';
        $pet->save();

        $pet = new Pet;
        $pet->name       = 'Chanchi';
        $pet->kind        = 'Pig';
        $pet->weight      = 30;
        $pet->age         = 5;
        $pet->breed       = 'Mini';
        $pet->location    = 'Los Angeles';
        $pet->description = 'Hungry boy, All kind of food';
        $pet->save();
    }
}
