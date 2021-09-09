<?php

namespace App\Http\Controllers;
use App\Services\EmployeeService;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

use DataTables;
use Illuminate\Http\JsonResponse;



class EmployeeController extends Controller
{
    //


  /**
   * @return JsonResponse
   */
  public function currentEmployeeFromDb(EmployeeService $employee)
  {
    $employee->process();
  }



  public function FetchEmployeeFromDB(EmployeeService $employee): JsonResponse
  {
    $employee->process();
    $data  = $employee->getEmployeeFromDB();
   // dd($data);
    return DataTables::of($data)
      ->make(true);
  }
}
