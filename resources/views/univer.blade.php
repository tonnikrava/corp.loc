@extends('default.maintemplate')

@section('navbar')
    @parent
@endsection

@section('header')
    @parent
@endsection

@section('content')

    <section>

        <div class="container-fluid px-0" id="counter">
            <nav aria-label="breadcrumb" style="background-color: #deffeb;">


                <div class="container">


                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="/">HOME</a></li>
                        <li class="breadcrumb-item"><a href="../university">UNIVERSITIES OF UKRAINE</a></li>
                        <li class="breadcrumb-item active" aria-current="page">@foreach ($material  as $materials)

                                {!!  $materials->title !!}


                            @endforeach</li>
                    </ol>

                </div>


            </nav>


            <div class="container">


                <div class="row">
                    <div class="col-sm-12 p-3 col-lg-9">

                        @foreach ($material  as $materials)

                            <h1 class="text-uppercase gradient-text-h2 mt-3">{!!  $materials->title !!}</h1>

                            <img class="mt-3 w-100"
                                 src="../storage/{!!  $materials->photo1 !!}" alt="study in ukraine vuz">

                            {!!  $materials->body !!}


                            <img class="mt-3 w-100"
                                 src="../storage/{!!  $materials->photo2 !!}" alt="study in ukraine vuz">
                            <img class="mt-3 w-100"
                                 src="../storage/{!!  $materials->photo3 !!}" alt="study in ukraine vuz">
                        @endforeach
                    </div>
                    <div class="col-sm-12 p-1 col-lg-3 mt-4"
                         style="background-color: rgba(234, 234, 234, 0.6) !important;">

                        @foreach ($materialu  as $materialss)

                            <a href="../univer/{!!  $materialss->slug !!}">
                                <div class="vizi m-3 position-relative mx-auto" style="height: 235px!important;">
                                    <img class="m-3" alt="study in ukraine vuz"
                                         src="../storage/{!!  $materialss->miniphoto !!}"
                                         style="display: inline;">

                                    <p>{!!  $materialss->title !!}</p>
                                    <div class="vizilink"><p>more info</p>
                                    </div>

                                </div>
                            </a>




                        @endforeach
                    </div>


                </div>
            </div>
        </div>
    </section>

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