<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KategoriLaporan extends Model
{
    use HasFactory;

    public $timestamps = false;

    public function laporan(){
        return $this->hasMany(laporan::class);
    }
}
