<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Pet>
 */
class PetFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $petNames = [
            "Luna", "Max", "Coco", "Kira", "Milo", "Toby", "Bruno", "Simba", "Nala", "Lola",
            "Bella", "Rocky", "Mateo", "Zeus", "Brisa", "Canela", "Dante", "Lucas", "Muñeca",
            "Chocoramo", "Pandebono", "Tinto", "Milo", "Arequipe", "Cholao", "Panela", "Mango", "Oreo",
            "Chocolate", "Frijolito", "Miel", "Churrito", "Taco", "Sushi", "Croqueta", "Mora", "Cocoa",
            "Odie", "Junior", "Mirabel", "Encanto", "Pluto", "Snoopy", "Hachiko", "Yoshi",
            "Thor", "Loki", "Ayacucho", "Chorizo", "Patacón", "Chigüiro",
            "Mía", "Pipo", "Nico", "Neo", "Otto", "Rex", "Sam", "Sasha", "Teo", "Tito",
            "Lulú", "Leo", "Rocco", "Koda", "Mimi", "Mochi", "Chispa", "Kiwi", "Fito",
            "Negro", "Negra", "Manchas", "Blanca", "Oso", "Lobo", "Princesa", "Rey",
            "Fluffy", "Pelusa", "Sombra", "Nube", "Tigre", "Rayo", "Mini", "Goliat", "Rocky",
            "Michi", "Gatico", "Perlita", "Bolita", "Puchi", "Bombón", "Muñeco", "Cuchito",
            "Buddy", "Samba", "Estrella", "Bambi", "Pepa", "Gus", "Candy", "Lilo", "Andy"
        ];

        $dogBreeds = [
            "Golden Retriever",
            "Labrador Retriever",
            "French Bulldog",
            "German Shepherd",
            "Pinscher",
            "Beagle",
            "Poodle",
            "Siberian Husky",
            "Chihuahua",
            "Yorkshire Terrier"
        ];

        $catBreeds = [
            "Persian",
            "Siamese",
            "Maine Coon",
            "Bengal",
            "Sphynx",
            "Ragdoll",
            "Russian Blue",
            "Scottish Fold",
            "Siberian",
            "Angora"
        ];

        $pigBreeds = [
            "Duroc",               
            "Landrace",            
            "Yorkshire",    
            "Pietrain",            
            "Hampshire",          
            "Zungo",                
            "Casco de Mula",       
            "San Pedreño",         
            "Berkshire",           
            "Spotted"             
        ];

        $birdBreeds = [
            "Andean Condor",
            "Yellow-eared Parrot",
            "Hummingbird",
            "Toucan",
            "Cockatiel",
            "Parakeet",
            "Red-bellied Grackle",
            "House Sparrow",
            "Saffron Finch",
            "Andean Motmot"
        ];

        $kind = fake()->randomElement(array('Dog', 'Cat', 'Pig', 'Bird'));

        switch ($kind) {
            case 'Dog':
                $breed = fake()->randomElement($dogBreeds);
                break;
            case 'Cat':
                $breed = fake()->randomElement($catBreeds);
                break;
            case 'Pig':
                $breed = fake()->randomElement($pigBreeds);
                break;
            default:
                $breed = fake()->randomElement($birdBreeds);
                break;
        }

        return [
            'name'        => fake()->randomElement($petNames),
            'kind'        => $kind,
            'weight'      => fake()->numerify('#.#'),
            'age'         => fake()->numerify('#'),
            'breed'       => $breed,
            'location'    => fake()->city(),
            'description' => fake()->sentence(8)
        ];
    }
}
