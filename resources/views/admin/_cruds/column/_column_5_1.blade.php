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
   <div class="btn btn-sm font-weight-bold btn-light-{{$row->{$column['index']}==1 ? 'primary' : 'warning'}}">
        {{$row->{$column['index']}==1 ? $true_text: $false_text}}
   </div>
</td>
