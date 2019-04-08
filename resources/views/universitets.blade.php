@extends('default.maintemplate')

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')







    <div class="container-fluid pt-5 pb-5" style="background-color: #f7f7f7">
        <h2 class="text-uppercase text-center gradient-text-h2 mt-5">popular universities for study in Ukraine</h2>
        <p class="p-h2-fon" style="color: rgba(209, 209, 209, 0.34)!important;">universities for study in Ukraine</p>

        <div class="container mt-3">
            <div class="d-flex flex-wrap justify-content-center justify-content-sm-between">


                @foreach ($material  as $materials)

                    <a href="univer/{!!  $materials->slug !!}">
                        <div class="vizi m-3 position-relative" style="height: 235px!important;">
                        <img class="m-3" alt="study in ukraine vuz"
                             src="storage/{!!  $materials->miniphoto !!}"
                             style="display: inline;">

                        <p>{!!  $materials->title !!}</p>
                            <div class="vizilink"><p>more info</p>
                        </div>

                    </div>
                    </a>




                @endforeach


            </div>
        </div>
    </div>







    <div class="container-fluid px-0 py-5" style="background-color: #f7f7f7">
        <h2 class="text-uppercase text-center gradient-text-h2 mt-5">choose a profession</h2>
        <p class="p-h2-fon" style="color: rgba(209, 209, 209, 0.34)!important;">choose a profession</p>

        <div class="container my-4">

            <div class="d-flex flex-wrap justify-content-center justify-content-sm-between">
                <div class="proff position-relative">
                    <img alt="study in ukraine vuz"
                         src="../images/study-in-ukraine-ingenir.jpg"
                         style="display: inline;">

                    <p>Engineering courses</p>
                    <div class="profflink"><a href="../professions">more info</a>
                    </div>

                </div>
                <div class="proff position-relative">
                    <img alt="study in ukraine vuz"
                         src="../images/study-in-ukraine-doctor.jpg"
                         style="display: inline;">

                    <p>Medical courses</p>
                    <div class="profflink"><a href="../professions">more info</a>
                    </div>

                </div>
                <div class="proff position-relative">
                    <img
                            src="../images/study-in-ukraine-buissnes.jpg"
                            style="display: inline;">

                    <p>Business/Economics/Tourism Management</p>
                    <div class="profflink"><a href="../professions">more info</a>
                    </div>

                </div>

            </div>


        </div>
    </div>



@endsection



@section('footer')
    @parent
@endsection