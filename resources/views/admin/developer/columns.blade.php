{{-- Extends layout --}}
@extends('admin._layouts._default')

{{-- Content --}}
@section('content')


<div class="row">


    @foreach ($info->table_columns as $column)

         @php
              $serial=1;
         @endphp



        <div class="card card-custom gutter-b col-md-12">
             <div class="card-header">
                 <h3 class="card-title">Column Id : &nbsp&nbsp <span class="label label-lg label-inline label-success">{{$column['design']}} </span>
                     </h3>
                     <div class="card-toolbar">
                         <div class="example-tools justify-content-center">

                         </div>
                     </div>
             </div>

            <div class="card-body">

                 <div class="row">
                 <div class="col-md-6">

                @if (isset($row) && $row!='')

                <!--begin::Table-->
                <div class="table-responsive">
                    <table class="table table-head-custom table-head-bg table-vertical-center table-borderless">
                        <thead>
                            <tr class="bg-gray-100 text-left">

                                <th>
                                    {{$column['title']}}
                                </th>


                            </tr>
                        </thead>
                        <tbody>




                            <tr>

                                @if (isset($column['design']) && $column['design']!="")


                                @include('admin._cruds.column._column_'.$column['design'])

                                @endif



                            </tr>




                        </tbody>
                    </table>
                </div>
                <!--end::Table-->



                @else

                <div class="alert alert-custom alert-notice alert-light-success fade show mb-5 text-center" role="alert">
                    <div class="alert-icon">
                        <i class="flaticon-questions-circular-button"></i>
                    </div>
                    <div class="alert-text text-dark">
                        No Data Found..!
                    </div>


                </div>


                @endif


            </div>
            <!--end::Body-->


    <div class="col-md-6">

         <div class="example mb-10">


            <div class="example-code">
                 <span class="example-copy" data-toggle="tooltip" title="Copy code"></span>
                 <div class="example-highlight">
                     <pre>
                         <code class="language-html">
                              [
                              @foreach ($column as $key => $value)     "{{$key}}"=> '{{$value}}',
                              @endforeach]

                         </code>
                     </pre>
                 </div>
            </div>
         </div>

    </div>


            </div>
            </div>

        </div>
@endforeach

</div>


@endsection
