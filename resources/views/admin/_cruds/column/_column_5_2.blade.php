@if (isset($column['true_text']))
     @php
          $true_text=$column['true_text'];
     @endphp
@else
     @php
          $true_text="Active";
     @endphp
@endif

@if (isset($column['false_text']))
     @php
          $false_text=$column['false_text'];
     @endphp
@else
     @php
          $false_text="Inactive";
     @endphp
@endif


<td>
   <div class="btn btn-sm font-weight-bold btn-light-{{$row->{$column['index']}==1 ? 'success' : 'danger'}}">
        {{$row->{$column['index']}==1 ? $true_text: $false_text}}

        @if (isset($row->{$column['index_1']}))

             <span class="label label-sm label-pill label-inline ml-2 label-{{$row->{$column['index']}==1 ? 'success' : 'danger'}}">
                  {{ $row->{$column['index_1']} }}
             </span>

        @endif
   </div>



</td>
