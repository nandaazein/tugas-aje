<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\Models\Kuis;
use App\Models\KuisModel;

class KuisController extends Controller
{

    public function index()
    {
        $items = Kuis::all();
        return view('kuis.index', [
            'items' => $items
        ]);
    }

    public function store(Request $request)
    {
        $data = $request->all();
        Kuis::create($data);
        session()->flash('success', 'Soal Berhasil Ditambahkan');
        return redirect()->back();
    }

    public function destroy($id)
    {
        $kuis = Kuis::find($id);
        $kuis->delete();
        session()->flash('success', 'Kuis berhasil dihapus.');
        return redirect()->back();
    }

    public function update(Request $request, $id)
    {
        $kuis = Kuis::find($id);
        $validasiData = $request->validate([
            'soal' => 'required|max:255',
            'option_a' => 'required|max:255',
            'option_b' => 'required|max:255',
            'option_c' => 'required|max:255',
            'option_d' => 'required|max:255',
            'Jawaban' => 'required|max:255'
        ]);


        $kuis->update($validasiData);
        session()->flash('success', 'Soal berhasil diupdate.');
        return redirect()->back();
    }
}
