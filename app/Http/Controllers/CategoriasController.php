<?php

namespace App\Http\Controllers;

use App\Models\Categorias;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class CategoriasController extends Controller
{

    public function selectCategoria()
    {
        // Se realiza un select * from estudiante 
        $categorias = Categorias::all();
        if ($categorias->count() > 0) {
            // Si hay estudiantes registrados se retorna  
            // una respuesta en formato json 
            return response()->json([
                'code' => 200,
                'data' => $categorias
            ], 200);
        } else {
            // Si no hay estudiantes registrados se retorna  
            // una respuesta en formato json 
            return response()->json([
                'code' => 404,
                'data' => 'No hay registros'
            ], 404);
        }
    }

    public function storeCategoria(Request $request)
    {
        // Se validan los datos a recibir en el request/petición 
        $validacion = Validator::make($request->all(), [
            'nombre_categoria' => 'nullable',
        ]);
        if ($validacion->fails()) {
            // Si hay error se retorna el mensaje de error 
            return response()->json([
                'code' => 400,
                'data' => $validacion->messages()
            ], 400);
        } else {
            // Si no hay error se inserta el estudiante           
            $estudiante = Categorias::create($request->all());
            return response()->json([
                'code' => 200,
                'data' => 'Categoria insertada'
            ], 200);
        }
    }


    public function updateCategoria(Request $request, $id)
    {
        $validacion = Validator::make($request->all(), [
            'nombre_categoria' => 'required',
        ]);

        if ($validacion->fails()) {
            return response()->json([
                'code' => 400,
                'data' => $validacion->messages()
            ], 400);
        } else {
            $categoria = Categorias::find($id);
            if ($categoria) {
                $categoria->update([
                    'nombre_categoria' => $request->nombre_categoria,
                ]);
                return response()->json([
                    'code' => 200,
                    'data' => 'Categoria actualizado'
                ], 200);
            } else {
                return response()->json([
                    'code' => 404,
                    'data' => 'Categoria no encontrado'
                ], 404);
            }
        }
    }

    public function findCategoria($id)
    {
        $categoria = Categorias::find($id);
        if ($categoria) {
            return response()->json([
                'code' => 200,
                'data' => $categoria
            ], 200);
        } else {
            return response()->json([
                'code' => 404,
                'data' => 'Cliente no encontrado'
            ], 404);
        }
    }

    public function deleteCategoria($id)
    {
        $categoria = Categorias::find($id);
        if ($categoria) {
            $categoria->delete();
            return response()->json([
                'code' => 200,
                'data' => 'Categoria eliminada'
            ], 200);
        } else {
            return response()->json([
                'code' => 404,
                'data' => 'No hay registros'
            ], 404);
        }
    }
}
