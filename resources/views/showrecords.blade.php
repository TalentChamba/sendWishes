<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Talent Birthday Component') }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="w-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <table class="table table-bordered yajra-datatable">
                    <thead>
                        <tr>
                            <th>EmployeeID </th>
                            <th>name</th>
                            <th>lastname</th>
                            <th>dateOfBirth</th>
                            <th>employmentStartDate</th>
                            <th>employmentEndDate</th>
                            <th>lastNotification</th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap5.min.js"></script>

    <script type="text/javascript">
        $(function() {
            var table = $('.yajra-datatable').DataTable({
                processing: true,
                serverSide: true,
                orderable: true,
                searchable: true,
                ajax: "{{ route('api.flight') }}",
                columns: [{
                        data: 'EmployeeID',
                        name: 'EmployeeID'
                    },
                    {
                        data: 'name',
                        name: 'name'
                    },
                    {
                        data: 'lastname',
                        name: 'lastname'
                    },
                    {
                        data: 'dateOfBirth',
                        name: 'dateOfBirth'
                    },
                    {
                        data: 'employmentStartDate',
                        name: 'employmentStartDate'
                    },

                    {
                        data: 'employmentEndDate',
                        name: 'employmentEndDate'
                    },
                    {
                        data: 'lastNotification',
                        name: 'lastNotification'
                    }
                ]
            });

        });
    </script>
</x-app-layout>
