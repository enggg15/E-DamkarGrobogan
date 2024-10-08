<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;

class admin_damkar extends Model
{
    use HasFactory, HasApiTokens;

    public $timestamps = false;

    protected $guarded = ['id'];
    protected $fillable = ['nama_lengkap', "email", "password", "noHp"];

    public function artikel_berita()
    {
        return $this->hasMany(artikel_berita::class);
    }

    public function artikel_edukasi()
    {
        return $this->hasMany(artikel_edukasi::class);
    }
    public function artikel_agenda()
    {
        return $this->hasMany(artikel_agenda::class);
    }

    public function detailLaporanPetugas()
    {
        return $this->hasMany(detail_laporan_petugas::class);
    }

    public function kedudukan()
    {
        return $this->belongsTo(kedudukan::class);
    }
}
