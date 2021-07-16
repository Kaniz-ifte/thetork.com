<label class="{{isset($input->label_class) ? $input->label_class : 'col-md-2'}} col-form-label text-right" for="{{$input->name}}">{{$input->title}}</label>
<div class="{{isset($input->div_class) ? $input->div_class : 'col-md-3'}}">
    <input type="{{isset($input->type) ? $input->type : 'text'}}" class="form-control @error($input->name) is-invalid @enderror" placeholder="{{$input->placeholder}}" name="{{$input->name}}" value="{{isset($input->update) ? $data->{$input->name} : ''}}"
         {{isset($input->required) ? 'required' : ''}} {{isset($input->disabled) ? 'disabled' : ''}} />
    @error($input->name)
    <div class="invalid-feedback">{{ $message }}</div>
    @enderror

</div>
