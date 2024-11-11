<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

use Illuminate\Database\Eloquent\Factories\HasFactory;

class Clientes extends Model
{
    use HasFactory;

    protected $table = 'clientes';

    protected $primaryKey = 'codigo_cliente';

    protected $fillable = [
        'codigo_cliente',
        'nombre_cliente',
        'edad_cliente',
        'codigo_categoria'
    ];
}
