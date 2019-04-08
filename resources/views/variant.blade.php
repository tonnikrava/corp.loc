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
                        <li class="breadcrumb-item"><a href="../professions">PROGRAMS & TUITION FEE</a></li>
                        <li class="breadcrumb-item active" aria-current="page">@foreach ($material  as $materials)

                                {!!  $materials->title !!}


                            @endforeach</li>
                    </ol>

                </div>


            </nav>


            <div class="container">


                <div class="row">
                    <div class="col-sm-12 p-3 col-lg-8 p-4">

                        @foreach ($material  as $materials)

                            {!!  $materials->body !!}


                        @endforeach
                    </div>

                    <div class="col-sm-12 p-3 col-lg-4">


                        <div class="proff2 position-relative" style="min-height: 100px;border: 9px solid #e2e2e2;">
                            <img alt="study in ukraine vuz"
                                 src="../images/study-in-ukraine-doctor.jpg"
                                 style="display: inline;">

                            <p>Medical courses</p>


                            <table class="blueTable">


                                <tbody>
                                @foreach ($prof2  as $prof22)



                                    <tr>
                                        <td>
                                            <a href="../prof/{!!  $prof22->slug !!}">
                                                {!!  $prof22->title !!} </a>
                                        </td>
                                    </tr>


                                @endforeach
                                </tbody>
                            </table>


                        </div>
                        <div class="proff2 position-relative" style="min-height: 100px;border: 9px solid #e2e2e2;">
                            <img alt="study in ukraine vuz"
                                 src="../images/study-in-ukraine-buissnes.jpg"
                                 style="display: inline;">

                            <p>Business/Economics/Tourism Management</p>
                            <table class="blueTable">


                                <tbody>
                                @foreach ($prof3  as $prof33)



                                    <tr>
                                        <td>
                                            <a href="../prof/{!!  $prof33->slug !!}">
                                                {!!  $prof33->title !!} </a>
                                        </td>
                                    </tr>


                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <div class="proff2 position-relative" style="min-height: 100px;border: 9px solid #e2e2e2;">
                            <img alt="study in ukraine vuz"
                                 src="../images/study-in-ukraine-ingenir.jpg"
                            >

                            <p>Engineering courses</p>


                            <table class="blueTable">
                                <tbody>


                                @foreach ($prof1  as $prof11)



                                    <tr>
                                        <td>
                                            <a href="../prof/{!!  $prof11->slug !!}">
                                                {!!  $prof11->title !!} </a>
                                        </td>
                                    </tr>


                                @endforeach


                                </tbody>
                            </table>

                            </tbody>
                            </table>

                        </div>


                    </div>
                </div>
            </div>
        </div>
    </section>













@endsection



@section('footer')
    @parent
@endsection