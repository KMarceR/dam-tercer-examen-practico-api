<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\Factories\HasFactory; 

class Categorias extends Model
{
    
    use HasFactory;

    protected $table = 'categorias';

    protected $primaryKey = 'codigo_categoria';

    protected $fillable = [
        'codigo_categoria',
        'nombre_categoria'
    ];
}
