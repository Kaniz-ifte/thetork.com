{{-- Extends layout --}}
@extends('admin._layouts._default')

{{-- Content --}}
@section('content')

<div class="row">
    <div class="col-md-12">

        @foreach ($info->form_inputs as $input)

        <div class="card card-custom mb-5">
            <div class="card-header">
                <h3 class="card-title">Design Id : &nbsp&nbsp <span class="label label-lg label-inline label-success">{{$input['design']}} </span>
                    @if(isset($input['type'])) &nbsp&nbsp && Type: &nbsp&nbsp <span class="label label-lg label-inline label-warning">{{$input['type']}} </span>
                    @endif</h3>
                    <div class="card-toolbar">
                        <div class="example-tools justify-content-center">

                        </div>
                    </div>
            </div>

            <div class="card-body">
                <div class="form-group row">






                    @if (isset($input['design']) && $input['design']!="")


                    @include('admin._cruds.input._input_'.$input['design'])

                    <div class="col-md-1">

                    </div>
                    <div class="col-md-5">
                        <div class="example mb-10">


                            <div class="example-code">
                                <span class="example-copy" data-toggle="tooltip" title="Copy code"></span>
                                <div class="example-highlight">
                                    <pre>
                                        <code class="language-html">
                                             [
                                             @foreach ($input as $key => $value)     "{{$key}}"=> '{{$value}}',
                                             @endforeach]

                                        </code>
                                    </pre>
                                </div>
                            </div>
                        </div>
                    </div>

                    @endif







                </div>





            </div>




        </div>

        @endforeach
    </div>
</div>

@endsection

@section('styles')

@parent

@endsection

@section('scripts')

@parent

@endsection
