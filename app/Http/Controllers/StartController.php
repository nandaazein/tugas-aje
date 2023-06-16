<?php

namespace App\Http\Controllers;

use App\Models\Kuis;
use App\Models\KuisModel;
use App\Models\leaderboard;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class StartController extends Controller
{
    public function index()
    {
        return view('kuis.index');
    }

    public function startkuis()
    {
        $item = Kuis::all();
        return view('kuis/start', ['items' => $item]);
    }

    public function store_leaderboard(Request $request)
    {
        $data = $request->all();
        leaderboard::create($data);
        return view('dashboard');
    }

    public function viewleaderboard()
    {
        $items = leaderboard::orderBy('skor', 'desc')->simplePaginate(7);
        return view('kuis.leaderboard', ['items' => $items]);
    }
    public function resetLeaderboard()
    {
        leaderboard::truncate();
        return redirect()->back()->with('success', 'Leaderboard berhasil direset.');
    }

    // public function exportPDF()
    // {
    //     $data = DB::table("leaderboards")
    //         ->orderBy('skor', 'desc')
    //         ->get();

    //     $pdf = PDF::loadView('export', compact('data'));
    //     return $pdf->download('data_leaderboard.pdf');
    // }
}
