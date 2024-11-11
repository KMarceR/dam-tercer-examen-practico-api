<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Clientes;

class ClientesController extends Controller
{
    public function selectCliente()
    {
        $clientes = Clientes::all();
        if ($clientes->count() > 0) {
            return response()->json([
                'code' => 200,
                'data' => $clientes
            ], 200);
        } else {
            return response()->json([
                'code' => 404,
                'data' => 'No hay registros de clientes'
            ], 404);
        }
    }

    public function storeCliente(Request $request)
    {
        $validacion = Validator::make($request->all(), [
            'nombre_cliente' => 'required',
            'edad_cliente' => 'required',
            'codigo_categoria' => 'required',

        ]);
        if ($validacion->fails()) {
            return response()->json([
                'code' => 400,
                'data' => $validacion->messages()
            ], 400);
        } else {          
            $clientes = Clientes::create($request->all());
            $clientes->save();
            return response()->json([
                'code' => 200,
                'data' => 'Cliente insertado'
            ], 200);
        }
    }

    public function updateCliente(Request $request, $id)
    {
        $validacion = Validator::make($request->all(), [
            'nombre_cliente' => 'required',
            'edad_cliente' => 'required',
            'codigo_categoria' => 'required',
        ]);

        if ($validacion->fails()) {
            return response()->json([
                'code' => 400,
                'data' => $validacion->messages()
            ], 400);
        } else { 
            $estudiante = Clientes::find($id);
            if ($estudiante) {           
                $estudiante->update([
                    'nombre_cliente' => $request->nombre_cliente,
                    'edad_cliente' => $request->edad_cliente,
                    'codigo_categoria' => $request->codigo_categoria
                ]); 
                return response()->json([
                    'code' => 200,
                    'data' => 'Cliente actualizado'
                ], 200);
            } else {
                return response()->json([
                    'code' => 404,
                    'data' => 'Cliente no encontrado'
                ], 404);
            }
        }
    }

    public function findCliente($id)
    {
        $clientes = Clientes::find($id);
        if ($clientes) {
            return response()->json([
                'code' => 200,
                'data' => $clientes
            ], 200);
        } else {
            return response()->json([
                'code' => 404,
                'data' => 'Cliente no encontrado'
            ], 404);
        }
    }

    public function deleteCliente($id)
    {
        $clientes = Clientes::find($id);
        if ($clientes) { 
            $clientes->delete();
            return response()->json([
                'code' => 200,
                'data' => 'Cliente eliminado'
            ], 200);
        } else {
            return response()->json([
                'code' => 404,
                'data' => 'No hay registros'
            ], 404);
        }
    }
}
