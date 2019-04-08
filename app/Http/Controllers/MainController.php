<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Validator;
use TCG\Voyager\Models\Page;
use App\Client;
use App\Variant;
use App\Univer;
class MainController extends Controller
{
    public function getIndex()
    {

        echo view('index');
    }

    public function getProf()
    {
        $materiall = Variant::where('profession', '=', 2)->get();
        $materialll = Variant::where('profession', '=', 1)->get();
        $materiallll = Variant::where('profession', '=', 3)->get();
        return view('proff')->with([
            'material' => $materiall,
            'materiall' => $materialll,
            'materialll' => $materiallll
        ]);

    }




    public function spets($page)
    {
        $material = Page::where('slug', '=', $page)->get();

        return view('spets')->with('material', $material);
    }


    public function loo($page)
    {
        $materiall = Variant::where('slug', '=', $page)->get();

        return view('variant')->with('material', $materiall);
    }


    public function univ()
    {
        $materiall = Univer::all();

        return view('universitets')->with('material', $materiall);
    }

    public function un($page)
    {
        $materiall = Univer::where('slug', '=', $page)->get();

        return view('univer')->with('material', $materiall);
    }


    public function forma(Request $request)
    {

        if ($request->isMethod('post')) {


            $input = $request->except('_token', 'photo', 'file'); //'file'


            $massages = [

                'required' => 'Поле :attribute обязательно к заполнению',
                'unique' => 'Поле :attribute должно быть уникальным'

            ];


            $validator = Validator::make($input, [

                'name' => 'required|max:255',
                'surname' => 'required|max:255',
                'surname' => 'required|max:255',
                'countryviza' => 'required|max:255',
                'photo.*' => 'required'

            ], $massages);

            if ($validator->fails()) {
                return redirect()->route('forma')->withErrors($validator)->withInput();
            }

            $surname = $input['name'];
            $fotki = $request->file('photo.*');
            // $failiki = $request->fil


            $ii = 1; //$ifile=1;
            foreach ($request->file('photo.*') as $key => $file) {

                $ii++;
                $origname = $file->getClientOriginalName();
                $key = "clients/";
                $file->move(public_path() . '/storage/clients', "$surname$origname");
                $photoname = $key . $surname . $origname;
                $input += ['photo' . $ii => $photoname];


            }

            /* foreach ($request->file('file.*') as $key => $files) {

                 $ifile++;
                 $orignames = $files->getClientOriginalName();
                 $keys = "clients/";
                 $files->move(public_path().'/storage/clients',"$surname$orignames");
                 $filename = $keys.$surname.$orignames;
                 $input += ['file'.$ifile=>$filename];



             }*/



            $page = new Client();


            $page->unguard(); // разрешаем заполнять все поля в моделе

            $page->fill($input); // отправляем в базу всё

            if ($page->save()) { // сохраняем в базу всё
                return redirect('forma')->with('status', 'Информация добавлена');
            }

        }


        if (view()->exists('forma')) {


            return view('forma');

        }

        abort(404);


    }
}


