<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\laporan;
use App\Models\detail_korban;
use App\Models\detail_laporan_pengguna;
use Auth;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class InputLaporanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $user_id = Auth::user()->id;
        if ($user_id == null) {
            return view('login');
        }
        $title = 'Pelaporan | E-Damkar Grobogan';
        $data = DB::table('laporans')
        ->join('detail_laporan_penggunas', 'detail_laporan_pengguna_id', '=', 'id')
        ->join('status_riwayats', 'status_riwayat_id', '=', 'status_riwayats.id')
        ->join('kategori_laporans', 'kategori_laporan_id', '=', 'kategori_laporans.id')
        ->join('detail_korbans', 'detail_korban_id', '=', 'detail_korbans.id')
        ->join('kondisi_cuacas', 'kondisi_cuaca_id', '=', 'kondisi_cuacas.id')
        // ->select('detail_laporan_penggunas.*', 'status_riwayats.*', 'kategori_laporans.*', 'detail_korbans.*', 'kondisi_cuacas.*')
        ->where('detail_laporan_penggunas.user_listdata_id', $user_id)
        ->get();
        $infouser = User::where('id', $user_id)->get();

        // return $data;

        return view('backend.laporanuser', compact('data', 'title', 'infouser'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $tanggal = Carbon::now()->format('Y-m-d');
        $jam = Carbon::now()->timezone('Asia/Jakarta')->format('H:i');
        $user_id = Auth::user()->id;
        // return $request;
        // Validasi input form
        $validatedData = $request->validate([
            'deskripsi_laporan' => 'required',
            'alamat_kejadian' => 'required',
            'kategori_laporan_id' => 'required',
            'kondisi_cuaca_id' => 'required',
            ''
        ], [
            'deskripsi_laporan.required' => 'Deskripsi laporan wajib diisi.',
            'alamat_kejadian.required' => 'Email wajib diisi.',
            'kategori_laporan_id.required' => 'Kategori Laporan wajib diisi.',
            'kondisi_cuaca_id.required' => 'Kondisi Cuaca wajib diisi.',
        ]);

        detail_korban::create([
            'nama_lengkap'=> $request->nama_korban,
            'NIK'=> $request->NIK,
            'umur'=> $request->umur_korban
        ]);
        
        $detail_korban_id = DB::table('detail_korbans')->where('detail_korbans.NIK', $request->NIK)->value('id');
        $nama_hewan = $request->nama_hewan;
        if ($nama_hewan == null) {
            $nama_hewan = "tidak ada";
        }

        // // Simpan admin Damkar ke database
        detail_laporan_pengguna::create([
            'user_listdata_id'=> $user_id,
            'deskripsi_laporan'=> $request->deskripsi_laporan,
            'nama_hewan'=> $nama_hewan,
            'waktu_pelaporan'=> $jam,
            'tgl_pelaporan'=> $tanggal,
            'urgensi'=> $request->urgensi,
            'alamat'=> $request->alamat_kejadian,
            'latitude'=> $request->latitude,
            'longitude'=> $request->longitude,
            'bukti_foto_laporan_pengguna'=> $request->bukti_foto_laporan_pengguna,
        ]);

        $detail_laporan_pengguna_id = 
            DB::table('detail_laporan_penggunas')
            ->where('tgl_pelaporan', $tanggal)
            ->where('waktu_pelaporan', $jam)
            ->value('id');


        laporan::create([
            'status_riwayat_id'=> 1,
            'kategori_laporan_id'=> $request->kategori_laporan_id,
            'detail_korban_id'=> $detail_korban_id,
            'kondisi_cuaca_id'=> $request->kondisi_cuaca_id,
            'detail_laporan_pengguna_id'=> $detail_laporan_pengguna_id,
            'detail_laporan_petugas_id'=> 1,
            'created_at'=> Carbon::now()->timestamp,
            'updated_at'=> Carbon::now()->timestamp
        ]);

        return redirect()->route('inputlaporan.index')->with('success', 'Laporan berhasil ditambahkan.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $admin = admin_damkar::findOrFail($id);
        return view('kelolaadmin.edit', compact('admin'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $user_id = Auth::user()->id;
        $id_laporan = $id;

        $detail_korban_id = $request->detail_korban_id;

        detail_korban::where('id', $detail_korban_id)->update([
            'nama_lengkap'=> $request->nama_korban,
            'NIK'=> $request->NIK,
            'umur'=> $request->umur_korban
        ]);
        
        $nama_hewan = $request->nama_hewan;
        if ($nama_hewan == null) {
            $nama_hewan = "tidak ada";
        }

        $jam = DB::table('detail_laporan_penggunas')
            ->where('id', $request->detail_laporan_pengguna_id)
            ->value('waktu_pelaporan');
        $tanggal = DB::table('detail_laporan_penggunas')
            ->where('id', $request->detail_laporan_pengguna_id)
            ->value('tgl_pelaporan');
        // // Simpan admin Damkar ke database
        detail_laporan_pengguna::where('id', $request->detail_laporan_pengguna_id)->update([
            'deskripsi_laporan'=> $request->deskripsi_laporan,
            'nama_hewan'=> $nama_hewan,
            'waktu_pelaporan'=> $jam,
            'tgl_pelaporan'=> $tanggal,
            'urgensi'=> $request->urgensi,
            'alamat'=> $request->alamat_kejadian,
            'latitude'=> $request->latitude,
            'longitude'=> $request->longitude,
        ]);

        $detail_laporan_pengguna_id = $request->detail_laporan_pengguna_id;

        // return Carbon::now()->timestamp;

        laporan::where('idLaporan', $id)->update([
            'kategori_laporan_id'=> $request->kategori_laporan_id,
            'detail_korban_id'=> $detail_korban_id,
            'kondisi_cuaca_id'=> $request->kondisi_cuaca_id,
            'detail_laporan_pengguna_id'=> $detail_laporan_pengguna_id,
            'updated_at'=> Carbon::now()->format('Y-m-d H:i:s'),
        ]);

        return redirect()->route('inputlaporan.index')->with('success', 'Data Laporan berhasil diupdate.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
