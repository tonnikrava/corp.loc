@extends('default.maintemplate')

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')

    <div class="container">


        {!! Form::open(['url' => route('forma'),'class'=>'form-horizontal','method'=>'POST','enctype'=>'multipart/form-data']) !!}


        <div class="form-group row">

            {!! Form::label('name','Название',['class' => 'control-label col-md-2'])   !!}
            <div class="col-md-10">
                {!! Form::text('name',old('name'),['class' => 'form-control','placeholder'=>'e-mail'])!!}
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.
                </small>
            </div>

        </div>
        <div class="form-group row">
            {!! Form::label('surname', 'Псевдоним:',['class'=>'control-label col-md-2']) !!}
            <div class="col-md-10">
                {!! Form::text('surname', old('surname'), ['class' => 'form-control','placeholder'=>'Фамилия Имя']) !!}
            </div>
        </div>


        <div class="form-group row">
            {!! Form::label('country', 'Псевдоним:',['class'=>'control-label col-md-2']) !!}
            <div class="col-md-10">
                {!! Form::text('country', old('country'), ['class' => 'form-control','placeholder'=>'страна ']) !!}
            </div>
        </div>

        <div class="form-group row">
            {!! Form::label('countryviza', 'Псевдоним:',['class'=>'control-label col-md-2']) !!}
            <div class="col-md-10">
                {!! Form::text('countryviza', old('countryviza'), ['class' => 'form-control','placeholder'=>'странаviza ']) !!}
            </div>
        </div>






        <div class="form-group row">
            <label class="control-label col-md-2">Изображение:</label>
            <div class="col-md-10">
                <input type="file" class="filestyle form-control" name="photo[]">
            </div>
        </div>

        <div class="form-group row">
            <label for="imagess" class="control-label col-md-2">Изображение:</label>
            <div class="col-md-10">
                <input type="file" class="filestyle form-control" name="photo[]">
            </div>
        </div>

        <div class="form-group row">
            <label for="imagess" class="control-label col-md-2">Изображение:</label>
            <div class="col-md-10">
                <input type="file" class="filestyle form-control" name="photo[]">
            </div>
        </div>

        <div class="form-group row">
            <label for="imagess" class="control-label col-md-2">Изображение:</label>
            <div class="col-md-10">
                <input type="file" class="filestyle form-control" name="photo[]"  >
            </div>
        </div>

        <div class="form-group row">
            <label for="imagess" class="control-label col-md-2">Изображение:</label>
            <div class="col-md-10">
                <input type="file" class="filestyle" name="photo[]" >
            </div>
        </div>

        <div class="form-group">
            <div class="col-xs-offset-2 col-xs-10">
                {!! Form::button('Сохранить', ['class' => 'btn btn-primary','type'=>'submit']) !!}
            </div>
        </div>



        {!! Form::close() !!}



        </div>








@endsection

@if (count($errors) > 0)
    <div style="width:200px; height: 400px; color: #00acee; position: absolute;top: 200px;z-index: 9999999;">
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if (session('status'))
    <div style="width:200px; height: 400px; color: #00acee; position: absolute;top: 200px;z-index: 9999999;">
        {{ session('status') }}
    </div>
@endif

@section('footer')
    @parent
@endsection

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-filestyle/2.1.0/bootstrap-filestyle.min.js"></script>