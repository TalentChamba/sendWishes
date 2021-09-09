<?php

declare(strict_types=1);

namespace App\Services;

use App\Models\Employee;

use Illuminate\Support\Facades\Http;
use Illuminate\Http\Client\RequestException;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Support\Facades\Log;

final class EmployeeService
{
  /**
   * @var HttpClient
   *
   */
  private $httpClient;

  /**
   * @param Http $httpClient
   */
  public function __construct(Http $httpClient)
  {
    $this->httpClient = $httpClient;
  }

  /**
   * @return bool
   */
  public function process(): bool
  {

    try {
      // store response in the database
      $save_ok = Employee::insert($this->save());
      //dd($save_ok);
      if ($save_ok) {
        Log::info(['message:', 'Successfully stored employee Information']);
        return true;
      } else {
        Log::error('Encountered an error while saving employee information');
        return false;
      }
    } catch (\Exception $e) {
      $error_message = sprintf(
        'Encountered an error while saving employee information: %s:%d %s',
        $e->getFile(),
        $e->getLine(),
        $e->getMessage()
      );
      Log::error($error_message);
      return false;
    }
  }
  /**
   * @return Array
   */
  public function getEmployee(): array
  {
    $url = \config('api.url');

    try {

      $response = $this->httpClient::get($url);
      //dd($response->json());
      if (isset($response) && !empty($response) && $response->successful()) {
        return $response->json();
      } else {
        return [];
        Log::error('Response error' . $response);
      }
    } catch (RequestException $e) {
      $error_message = sprintf(
        'Could not fetch employee Information: %s:%d %s',
        $e->getFile(),
        $e->getLine(),
        $e->getMessage()
      );
      Log::error($error_message);
    }
  }
  /**
   */
  private function save()
  {
    // consume flight api endpoint
    $employees = $this->getEmployee();
    $employee_records = [];
    if (!empty($employees)) {
      foreach ($employees as $employee) {
          //if(!$employee['lastNotification']){
          $employee_records[] = [
          'employeeId' => $employee['id'],
          'name' => $employee['name'],
          'lastname'  => $employee['lastname'],
          'dateOfBirth' => $employee['dateOfBirth'],
          'employmentStartDate' => $employee['employmentStartDate'],
          'employmentEndDate' => $employee['employmentEndDate'],
          'lastNotification' => $employee['lastNotification'] ?? "",

        ];

      }
     // dd($employee_records);
      return $employee_records;
    } else {

      return [];
    }
  }

  /**
   * @return Collection
   */
  public function getEmployeeFromDB(): Collection
  {
    try {
      // get employee from database
      $data = Employee::all();
      //dd($data);
      if ($data) {

        return $data;
      } else {
        Log::error('Encountered an error retrieving current employee from database');
        return false;
      }
    } catch (\Exception $e) {
      $error_message = sprintf(
        'Encountered an error retrieving employee from database: %s:%d %s',
        $e->getFile(),
        $e->getLine(),
        $e->getMessage()
      );
      Log::error($error_message);
      return [];
    }
  }
}
