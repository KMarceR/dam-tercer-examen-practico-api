<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;use App\Http\Controllers\ClientesController;
use App\Http\Controllers\CategoriasController;
use App\Http\Controllers\AuthController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::middleware('auth:sanctum')->group(function () { 
    Route::get('/clientes/select', [ClientesController::class, 'selectCliente']);
    Route::get('/categorias/select', [CategoriasController::class, 'selectCategoria']);

    Route::post('/clientes/store', [ClientesController::class, 'storeCliente']);
    Route::post('/categorias/store', [CategoriasController::class, 'storeCategoria']);

    Route::put('/clientes/update/{id}', [ClientesController::class, 'updateCliente']);
    Route::put('/categorias/update/{id}', [CategoriasController::class, 'updateCategoria']);

    Route::get('/clientes/find/{id}', [ClientesController::class, 'findCliente']);
    Route::get('/categorias/find/{id}', [CategoriasController::class, 'findCategoria']);

    Route::delete('/clientes/delete/{id}', [ClientesController::class, 'deleteCliente']);
    Route::delete('/categorias/delete/{id}', [CategoriasController::class, 'deleteCategoria']);

});
Route::post('/registrar', [AuthController::class, 'store']);
Route::post('/login', [AuthController::class, 'login']);
