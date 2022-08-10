<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Builder;

class MainController extends Controller
{
  public function show(Request $request)
  {

    if ($request->engine) {
      $engine = substr($request->engine, strpos($request->engine, "=") + 1, strlen($request->engine));
      $wheel = substr($request->wheel, strpos($request->wheel, "=") + 1, strlen($request->wheel));

      $cars = DB::table('cars')->where('brand', '=', $request->brand)->where('model', '=', $request->model)->when(
          $engine != 'all',
          function ($query) use ($engine) {

            $query->where('enginetype', $engine);
          }
        )->when(
          $wheel != 'all',
          function ($query) use ($wheel) {

            $query->where('drive', $wheel);
          }
        )
        ->get();
      $cars->toJson();
      if ($request->ajax()) {
        return $cars;
      }
      return view('welcome', compact('cars'));
    }
    $cars = DB::table('cars')->where('brand', '=', $request->brand)->where('model', '=', $request->model)->get();

    return view('welcome', compact('cars'));
  }
}
