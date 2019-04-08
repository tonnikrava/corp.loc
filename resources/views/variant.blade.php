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


                    <ol class="breadcrumb" style="margin-left:40px;">
                        <li class="breadcrumb-item"><a href="/">HOME</a></li>
                        <li class="breadcrumb-item"><a href="../professions">PROGRAMS & TUITION FEE</a></li>
                        <li class="breadcrumb-item active" aria-current="page">@foreach ($material  as $materials)

                                {!!  $materials->title !!}


                            @endforeach</li>
                    </ol>

                </div>


            </nav>


            <div class="container">


                <div class="row">
                    <div class="col-sm-12 p-3 col-lg-8 mx-auto">

                        @foreach ($material  as $materials)

                            {!!  $materials->body !!}


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